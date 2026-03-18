/**
 * term-cards — Markdown card generator for dictionary terms.
 *
 * Reads every *.json file in data/core/, extracts all term objects, and writes
 * one Markdown card to terms/<_gid>.md for each term that has an _info section.
 * Terms without _info (alias terms) are silently skipped.
 *
 * The sync is incremental:
 *   - Cards whose content has not changed are left untouched (preserving mtimes).
 *   - Cards whose source term has been deleted are removed from terms/.
 *   - New or modified terms produce new or overwritten cards.
 *
 * The tool locates the repository root automatically by walking up from the
 * current working directory, so it can be invoked from any directory inside
 * the repository.
 *
 * Usage:
 *   swift run                                          (from this package directory)
 *   swift run --package-path workflows/term-cards      (from the repository root)
 */

import Foundation

// MARK: - Configuration

/// The language key used to extract _info text in Phase 2.
/// All core terms are authored in English only during this phase; translations
/// are added in Phase 4 using Debian iso-codes as the baseline coverage.
let defaultLanguage = "ISO_639_3_eng"

/// The order in which _info properties are rendered inside each card.
/// This mirrors the canonical order defined in the top-level CLAUDE.md:
/// identification → definition → full description → supporting material.
/// Properties not listed here (future or non-standard) appear after these, sorted
/// alphabetically, so the card format is forward-compatible with new _info keys.
let infoPropertyOrder = [
    "_title",       // short human-readable label
    "_definition",  // concise definition for informed readers
    "_description", // full Markdown description for a general audience
    "_examples",    // usage examples
    "_notes",       // curator notes and supplementary remarks
    "_url",         // external references (array)
    "_citation",    // required citations (array)
    "_provider"     // curator contact information (array)
]

// MARK: - Repository Root Detection

/// Walks up the directory tree from `start` until it finds a directory that
/// contains a `.git` entry, then returns that directory as the repository root.
///
/// This avoids hardcoding paths: the tool works correctly regardless of where
/// inside the repository it is invoked from.
///
/// Returns nil if no `.git` directory is found before reaching the filesystem root.
func findRepoRoot(from start: URL) -> URL? {
    let fm = FileManager.default
    var url = start.standardizedFileURL
    while url.path != "/" {
        if fm.fileExists(atPath: url.appendingPathComponent(".git").path) {
            return url
        }
        url = url.deletingLastPathComponent()
    }
    return nil
}

// MARK: - Multilingual Value Extraction

/// Extracts a single string value from a multilingual scalar dict.
///
/// In this dictionary every _info scalar property has the shape:
///   { "ISO_639_3_eng": "text", "ISO_639_3_ita": "testo", ... }
///
/// This function returns the value for `defaultLanguage`. If that key is absent
/// (e.g. a term authored in a different language only), it falls back to the first
/// available language entry rather than returning nil, so the card is never empty.
func extractString(_ value: Any) -> String? {
    guard let dict = value as? [String: Any] else { return nil }
    if let s = dict[defaultLanguage] as? String { return s }
    // Fallback: take the first value that happens to be a string.
    return dict.values.compactMap { $0 as? String }.first
}

/// Extracts an array of strings from a multilingual array dict.
///
/// Array-valued _info properties (_url, _citation, _provider) have the shape:
///   { "ISO_639_3_eng": ["item one", "item two"], ... }
///
/// The outer dict key is still the language tag; the value is an array of strings
/// rather than a plain string. This function unwraps that structure.
func extractStringArray(_ value: Any) -> [String]? {
    guard let dict = value as? [String: Any] else { return nil }
    let raw: [Any]?
    if let arr = dict[defaultLanguage] as? [Any] {
        raw = arr
    } else {
        // Fallback: first language entry whose value is an array.
        raw = dict.values.compactMap { $0 as? [Any] }.first
    }
    return raw?.compactMap { $0 as? String }
}

// MARK: - Card Rendering

/// Renders a complete Markdown card for a term.
///
/// The card format is:
///   # `_gid`
///
///   **`_title`**
///   Title text …
///
///   **`_definition`**
///   Definition text …
///   … (one section per _info property)
///
///   ---
///
///   **`_data`**
///   ```json
///   { … }
///   ```
///
///   **`_rule`**
///   ```json
///   { … }
///   ```
///
/// Known _info properties are rendered in the order defined by `infoPropertyOrder`.
/// Any additional properties found in the _info dict are appended alphabetically,
/// ensuring the renderer does not silently drop future or non-standard keys.
///
/// If the term has a _code, _data or _rule section, each is appended after a horizontal
/// rule as a pretty-printed JSON fenced code block, in that order.
///
/// The output always ends with exactly one newline so diffs are clean.
func renderCard(gid: String, info: [String: Any], term: [String: Any]) -> String {
    var lines: [String] = []

    // H1 heading: the global identifier of the term, in code style.
    lines.append("# `\(gid)`")
    lines.append("")

    // Work on a mutable copy so we can track which keys have been rendered
    // and handle any remainder afterwards.
    var remaining = info

    // Render known properties in preferred order.
    for key in infoPropertyOrder {
        guard let value = remaining.removeValue(forKey: key) else { continue }
        appendProperty(key: key, value: value, to: &lines)
    }

    // Render any unrecognised _info properties in alphabetical order.
    // This keeps the card format stable as new _info keys are introduced.
    for key in remaining.keys.sorted() {
        guard let value = remaining[key] else { continue }
        appendProperty(key: key, value: value, to: &lines)
    }

    // Append _code, _data and _rule sections as pretty-printed JSON, if present.
    // A horizontal rule separates the human-readable _info content above
    // from the machine-readable structural sections below.
    let structuralSections = ["_code", "_data", "_rule"]
    let presentSections = structuralSections.filter { term[$0] != nil }
    if !presentSections.isEmpty {
        while lines.last == "" { lines.removeLast() }
        lines.append("")
        lines.append("---")
        lines.append("")
        for key in presentSections {
            guard let section = term[key] else { continue }
            lines.append("**`\(key)`**")
            lines.append("")
            if let jsonData = try? JSONSerialization.data(
                withJSONObject: section,
                options: [.prettyPrinted, .sortedKeys]
            ), let jsonString = String(data: jsonData, encoding: .utf8) {
                lines.append("```json")
                lines.append(jsonString)
                lines.append("```")
            }
            lines.append("")
        }
    }

    // Normalise trailing whitespace: strip any trailing blank lines, then
    // add exactly one newline at the end. This prevents spurious diffs when
    // comparing the rendered content against an existing card on disk.
    while lines.last == "" { lines.removeLast() }
    lines.append("")

    return lines.joined(separator: "\n")
}

/// Appends one labelled property block to `lines`.
///
/// Format:
///   **`_property_name`**
///
///   Property value text (or bullet list for array values).
///
/// Scalar string values are written as a plain paragraph.
/// Array string values are written as a Markdown bullet list, one item per line.
func appendProperty(key: String, value: Any, to lines: inout [String]) {
    // Property label in bold code style, matching the rendering convention
    // used throughout the dictionary's own documentation.
    lines.append("**`\(key)`**")
    lines.append("")

    if let text = extractString(value) {
        // Scalar: write as a paragraph. The text may itself contain Markdown
        // (headings, code blocks, links) and is written verbatim.
        lines.append(text)
    } else if let items = extractStringArray(value) {
        // Array: render each item as a bullet point.
        for item in items {
            lines.append("- \(item)")
        }
    }
    // Blank line after the property value separates it from the next section.
    lines.append("")
}

// MARK: - Main

/// Entry point: locates the repository, reads all source terms, and syncs the
/// terms/ directory by writing new/modified cards and deleting stale ones.
func run() throws {
    let fm = FileManager.default
    let cwd = URL(fileURLWithPath: fm.currentDirectoryPath)

    // Locate the repository root. This makes the tool runnable from any
    // subdirectory without requiring the caller to set working directories.
    guard let repoRoot = findRepoRoot(from: cwd) else {
        fputs("Error: could not locate repository root (no .git directory found).\n", stderr)
        exit(1)
    }

    let dataCoreURL = repoRoot.appendingPathComponent("data/core")
    let termsURL    = repoRoot.appendingPathComponent("terms")

    // Create terms/ if it does not yet exist (safe no-op when it already does).
    try fm.createDirectory(at: termsURL, withIntermediateDirectories: true)

    // -------------------------------------------------------------------------
    // Phase 1: collect all terms from data/core/*.json.
    //
    // Each JSON file is an array of term objects. Terms are identified by their
    // _gid (global identifier), stored inside the _code section. We build a flat
    // dictionary keyed by _gid so later stages can look up any term in O(1).
    // Files are processed in alphabetical order for deterministic logging.
    // -------------------------------------------------------------------------
    var termsByGid: [String: [String: Any]] = [:]

    let jsonFiles = try fm.contentsOfDirectory(at: dataCoreURL, includingPropertiesForKeys: nil)
        .filter { $0.pathExtension == "json" }
        .sorted { $0.lastPathComponent < $1.lastPathComponent }

    for file in jsonFiles {
        let raw = try Data(contentsOf: file)
        guard let array = try JSONSerialization.jsonObject(with: raw) as? [[String: Any]] else {
            // A non-array JSON file in data/core/ is unexpected; warn and skip
            // rather than aborting, so a single bad file does not block all others.
            fputs("Warning: \(file.lastPathComponent) is not a JSON array — skipping.\n", stderr)
            continue
        }
        for term in array {
            guard let code = term["_code"] as? [String: Any],
                  let gid  = code["_gid"] as? String else { continue }
            termsByGid[gid] = term
        }
    }

    // -------------------------------------------------------------------------
    // Phase 2: write or update cards for all terms that have an _info section.
    //
    // We compare the rendered content against what is already on disk. Writing
    // only changed files keeps file modification times accurate, which matters
    // for tools (editors, backup software) that track mtimes.
    // -------------------------------------------------------------------------
    var written   = 0   // cards created or overwritten
    var unchanged = 0   // cards that already matched — not touched
    var deleted   = 0   // stale cards removed
    var generatedGids = Set<String>()   // tracks which _gids produced a card

    for (gid, term) in termsByGid.sorted(by: { $0.key < $1.key }) {
        // Alias terms carry no _info section; they delegate documentation to
        // the canonical term they point to. No card is generated for them.
        guard let info = term["_info"] as? [String: Any] else { continue }

        let content = renderCard(gid: gid, info: info, term: term)
        let fileURL = termsURL.appendingPathComponent("\(gid).md")
        generatedGids.insert(gid)

        let existing = try? String(contentsOf: fileURL, encoding: .utf8)
        if existing == content {
            unchanged += 1
        } else {
            // Write atomically: the file is written to a temp path first, then
            // moved into place, so a crash mid-write never leaves a partial file.
            try content.write(to: fileURL, atomically: true, encoding: .utf8)
            written += 1
        }
    }

    // -------------------------------------------------------------------------
    // Phase 3: remove stale cards.
    //
    // Any .md file in terms/ whose stem does not match a currently known _gid
    // belongs to a term that has been deleted or renamed. Remove it so the
    // terms/ directory stays in sync with the source data.
    // -------------------------------------------------------------------------
    let existingCards = (try? fm.contentsOfDirectory(at: termsURL, includingPropertiesForKeys: nil)
        .filter { $0.pathExtension == "md" }) ?? []

    for card in existingCards {
        let gid = card.deletingPathExtension().lastPathComponent
        if !generatedGids.contains(gid) {
            try fm.removeItem(at: card)
            deleted += 1
        }
    }

    print("term-cards: \(written) written, \(unchanged) unchanged, \(deleted) deleted.")
}

// Top-level execution. Any thrown error is reported to stderr and the process
// exits with a non-zero code, making the tool composable in shell pipelines
// and CI scripts that check exit codes.
do {
    try run()
} catch {
    fputs("Error: \(error.localizedDescription)\n", stderr)
    exit(1)
}
