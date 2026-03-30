/**
 * check-refs — Term cross-reference validator for the data dictionary.
 *
 * Reads all *.json files from data/core/, builds a GID index, then verifies
 * that every term GID referenced within each term's structural sections is
 * actually defined in the data.
 *
 * What counts as a term reference:
 *   - Every property key starting with _ in the structural sections
 *     (_data, _rule, _domn, _prop) and in _code.
 *   - Property keys in the _info section (but NOT the text content inside
 *     _info.<field>.<lang_key> — those are free-text strings, not references).
 *   - The _code._nid value, when non-empty.
 *   - Any string value starting with _ in the structural sections
 *     (enum type values, descriptor list items, selection type values, etc.).
 *
 * What is NOT a term reference:
 *   - _code._lid, _gid, _aid, _pid, _name, _symbol, _emoji, _regexp values.
 *   - Free-text content within _info field values.
 *   - The term's own _gid (self-reference, always ignored).
 *
 * Usage:
 *   swift run --package-path workflows/check-refs
 *       Check all terms in data/core/ and report missing references.
 *
 *   swift run --package-path workflows/check-refs -- --verbose
 *       Show every reference extracted from every term.
 *
 *   swift run --package-path workflows/check-refs -- --gid <gid>
 *       Show all references extracted from a single term by its GID.
 *
 *   swift run --package-path workflows/check-refs -- --file <path>
 *       Check a JSON file (array of terms) against the data/core/ index.
 *       Useful for validating a new file before adding it to the repository.
 */

import Foundation

// MARK: - Term GID candidate test

/// Returns true if a string looks like a term GID:
/// starts with _ followed by a letter (e.g. _code, _type_boolean).
/// This heuristic correctly rejects language keys (ISO_639_3_eng),
/// lid values ("code", "range"), and aid values ("ITA").
@inline(__always)
func isTermGidCandidate(_ s: String) -> Bool {
    guard s.count > 1, s.hasPrefix("_") else { return false }
    return s[s.index(after: s.startIndex)].isLetter
}

// MARK: - Reference extraction

/// Recursively collects all term GID candidates from a structural JSON node.
/// Visits every key and every string value in the tree.
/// This is the core of the reference extractor.
func collectStructuralRefs(from node: Any) -> Set<String> {
    var refs = Set<String>()
    switch node {
    case let dict as [String: Any]:
        for (k, v) in dict {
            if isTermGidCandidate(k) { refs.insert(k) }
            refs.formUnion(collectStructuralRefs(from: v))
        }
    case let arr as [Any]:
        for item in arr {
            refs.formUnion(collectStructuralRefs(from: item))
        }
    case let str as String:
        if isTermGidCandidate(str) { refs.insert(str) }
    default:
        break
    }
    return refs
}

/// Extracts all term GID references from a single term object.
///
/// The _info section is handled specially: its property keys are term GIDs,
/// but the nested values are language dicts whose string values are free text —
/// those are skipped entirely.
///
/// The _code section is handled specially: only the _nid value is a term
/// reference; _lid, _gid, _aid, _pid, _name, _symbol, _emoji, _regexp values
/// are identifiers or text, not term references.
///
/// All other sections (_data, _rule, _domn, _prop) are walked in full.
func extractRefs(from term: [String: Any]) -> Set<String> {
    var refs = Set<String>()
    let selfGid = (term["_code"] as? [String: Any])?["_gid"] as? String ?? ""

    for (sectionKey, sectionVal) in term {
        if isTermGidCandidate(sectionKey) { refs.insert(sectionKey) }

        switch sectionKey {
        case "_info":
            // Collect property keys (_title, _definition, …) but stop there.
            // The next level is {lang: "text"} and the text values must not be parsed.
            if let infoDict = sectionVal as? [String: Any] {
                for infoKey in infoDict.keys where isTermGidCandidate(infoKey) {
                    refs.insert(infoKey)
                }
            }

        case "_code":
            // Collect property keys; among values only _nid is a term ref.
            if let codeDict = sectionVal as? [String: Any] {
                for (k, v) in codeDict {
                    if isTermGidCandidate(k) { refs.insert(k) }
                    if k == "_nid", let nid = v as? String, !nid.isEmpty {
                        refs.insert(nid)
                    }
                }
            }

        default:
            // Full structural walk for _data, _rule, _domn, _prop, and any
            // future sections. Every _-prefixed key and every _-prefixed string
            // value is treated as a potential term reference.
            refs.formUnion(collectStructuralRefs(from: sectionVal))
        }
    }

    refs.remove(selfGid)
    refs.remove("")
    return refs
}

// MARK: - Repository root detection

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

// MARK: - Config

func readConfig(repoRoot: URL) -> [String: String] {
    let configURL = repoRoot.appendingPathComponent("dictionary.config.json")
    guard let data = try? Data(contentsOf: configURL),
          let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
          let paths = json["paths"] as? [String: String]
    else { return [:] }
    return paths
}

// MARK: - Index loading

struct TermIndex {
    var gidToFile: [String: String] = [:]   // gid -> source filename
    var terms: [[String: Any]] = []          // all term objects, in load order
}

func loadIndex(from dataCoreURL: URL) throws -> TermIndex {
    let fm = FileManager.default
    var index = TermIndex()

    let jsonFiles = try fm.contentsOfDirectory(at: dataCoreURL, includingPropertiesForKeys: nil)
        .filter { $0.pathExtension == "json" }
        .sorted { $0.lastPathComponent < $1.lastPathComponent }

    for file in jsonFiles {
        let raw = try Data(contentsOf: file)
        guard let array = try JSONSerialization.jsonObject(with: raw) as? [[String: Any]] else {
            fputs("Warning: \(file.lastPathComponent) is not a JSON array — skipping.\n", stderr)
            continue
        }
        for term in array {
            guard let code = term["_code"] as? [String: Any],
                  let gid  = code["_gid"]  as? String else { continue }
            index.gidToFile[gid] = file.lastPathComponent
            index.terms.append(term)
        }
    }
    return index
}

// MARK: - Reporting helpers

func gidOf(_ term: [String: Any]) -> String {
    (term["_code"] as? [String: Any])?["_gid"] as? String ?? "?"
}

func checkTerm(_ term: [String: Any], index: TermIndex, verbose: Bool) -> Int {
    let gid = gidOf(term)
    let refs = extractRefs(from: term).sorted()
    let missing = refs.filter { index.gidToFile[$0] == nil }

    if verbose {
        print("\n[\(gid)]")
        if refs.isEmpty {
            print("  (no references)")
        } else {
            for ref in refs {
                let mark = index.gidToFile[ref] == nil ? " ✗ MISSING" : ""
                print("  \(ref)\(mark)")
            }
        }
    } else if !missing.isEmpty {
        print("\n[\(gid)] — \(missing.count) missing reference(s):")
        for m in missing { print("  \(m)") }
    }

    return missing.count
}

// MARK: - Modes

/// Default mode: check all terms in data/core/.
func runCheckAll(index: TermIndex, verbose: Bool) {
    print("check-refs: \(index.gidToFile.count) terms in index.\n")
    var total = 0
    for term in index.terms.sorted(by: { gidOf($0) < gidOf($1) }) {
        total += checkTerm(term, index: index, verbose: verbose)
    }
    if total == 0 {
        print("All references resolved. ✓")
    } else {
        print("\ncheck-refs: \(total) missing reference(s) found.")
    }
}

/// Single-GID mode: show refs for one term.
func runSingleGid(_ gid: String, index: TermIndex) {
    guard let term = index.terms.first(where: { gidOf($0) == gid }) else {
        fputs("Error: term '\(gid)' not found in index.\n", stderr)
        exit(1)
    }
    print("check-refs: references in [\(gid)]:\n")
    _ = checkTerm(term, index: index, verbose: true)
}

/// File mode: load terms from a given JSON file and check against the index.
func runCheckFile(_ path: String, index: TermIndex) throws {
    let url = URL(fileURLWithPath: path)
    let raw = try Data(contentsOf: url)
    guard let array = try JSONSerialization.jsonObject(with: raw) as? [[String: Any]] else {
        fputs("Error: '\(path)' is not a JSON array of terms.\n", stderr)
        exit(1)
    }
    print("check-refs: checking \(array.count) term(s) from \(url.lastPathComponent) against index of \(index.gidToFile.count).\n")
    var total = 0
    for term in array {
        total += checkTerm(term, index: index, verbose: true)
    }
    if total == 0 {
        print("\nAll references resolved. ✓")
    } else {
        print("\ncheck-refs: \(total) missing reference(s) found.")
    }
}

// MARK: - Entry point

func run() throws {
    let args = Array(CommandLine.arguments.dropFirst())
    let fm   = FileManager.default
    let cwd  = URL(fileURLWithPath: fm.currentDirectoryPath)

    guard let repoRoot = findRepoRoot(from: cwd) else {
        fputs("Error: could not locate repository root (no .git directory found).\n", stderr)
        exit(1)
    }

    let config = readConfig(repoRoot: repoRoot)
    let dataCoreURL = repoRoot.appendingPathComponent(config["core"] ?? "data/core")
    let index = try loadIndex(from: dataCoreURL)

    // Parse flags
    let verbose  = args.contains("--verbose")
    if let gidIdx = args.firstIndex(of: "--gid"), args.indices.contains(gidIdx + 1) {
        runSingleGid(args[gidIdx + 1], index: index)
    } else if let fileIdx = args.firstIndex(of: "--file"), args.indices.contains(fileIdx + 1) {
        try runCheckFile(args[fileIdx + 1], index: index)
    } else {
        runCheckAll(index: index, verbose: verbose)
    }
}

do {
    try run()
} catch {
    fputs("Error: \(error.localizedDescription)\n", stderr)
    exit(1)
}
