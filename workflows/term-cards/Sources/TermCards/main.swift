/**
 * term-cards — Markdown card generator for dictionary terms.
 *
 * Reads every *.json file in data/core/, extracts all term objects, and writes
 * one Markdown card to docs/<_gid>.md for each term that has an _info section.
 * Terms without _info (alias terms) are silently skipped.
 *
 * Card format (per term):
 *   # Title
 *   <p style="color: #888; …"><code>_gid</code></p>
 *
 *   > Definition (blockquote)
 *
 *   ---
 *
 *   ## Identification section   (_code — table + JSON disclosure)
 *   ## Information section      (_info — labelled properties + JSON disclosure)
 *   ## Data section             (_data — shape display + JSON disclosure)
 *
 * The sync is incremental: unchanged cards are left untouched, stale cards
 * (whose source term has been deleted) are removed.
 *
 * Usage:
 *   swift run                                          (from this package directory)
 *   swift run --package-path workflows/term-cards      (from the repository root)
 */

import Foundation

// MARK: - Configuration

/// Language key used to extract _info text. Translations are added in Phase 4.
let defaultLanguage = "ISO_639_3_eng"

/// _info properties rendered inline (label: value on one line).
let inlineInfoProps = Set(["_title", "_definition"])

/// _info properties rendered as bullet lists.
let listInfoProps = Set(["_url", "_citation", "_provider"])

/// Ordered list of known _info property keys for canonical rendering order.
let infoPropertyOrder = [
    "_title", "_definition", "_description", "_examples",
    "_notes", "_url", "_citation", "_provider", "_methods", "_usage"
]

/// Constraint properties rendered inside _open/_closed, in order.
let constraintOrder = [
    "_required", "_recommended", "_banned", "_computed",
    "_locked", "_immutable", "_default-value"
]

// MARK: - Repository Root Detection

func findRepoRoot(from start: URL) -> URL? {
    let fm = FileManager.default
    var url = start.standardizedFileURL
    while url.path != "/" {
        if fm.fileExists(atPath: url.appendingPathComponent(".git").path) { return url }
        url = url.deletingLastPathComponent()
    }
    return nil
}

// MARK: - Multilingual Value Extraction

func extractString(_ value: Any) -> String? {
    guard let dict = value as? [String: Any] else { return nil }
    if let s = dict[defaultLanguage] as? String { return s }
    return dict.values.compactMap { $0 as? String }.first
}

func extractStringArray(_ value: Any) -> [String]? {
    guard let dict = value as? [String: Any] else { return nil }
    let raw: [Any]?
    if let arr = dict[defaultLanguage] as? [Any] { raw = arr }
    else { raw = dict.values.compactMap { $0 as? [Any] }.first }
    return raw?.compactMap { $0 as? String }
}

// MARK: - Title Registry and Link Helpers

typealias TitleRegistry = [String: String]

/// Builds a map from _gid → English title for every term that has an _info section.
func buildTitleRegistry(from termsByGid: [String: [String: Any]]) -> TitleRegistry {
    var registry: TitleRegistry = [:]
    for (gid, term) in termsByGid {
        guard let info = term["_info"] as? [String: Any],
              let titleValue = info["_title"],
              let title = extractString(titleValue) else { continue }
        registry[gid] = title
    }
    return registry
}

/// Returns `[Title](gid.md)` when the term has a card, or `` `gid` `` otherwise.
func termLink(gid: String, registry: TitleRegistry) -> String {
    if let title = registry[gid] { return "[\(title)](\(gid).md)" }
    return "`\(gid)`"
}

/// Returns `[Title](gid.md)` when the term has a card, or `[gid](gid.md)` otherwise.
/// Used for _enums items, which are enumeration root terms that will have cards
/// once Phase 3 standards are loaded — always rendered as links.
func enumRootLink(gid: String, registry: TitleRegistry) -> String {
    if let title = registry[gid] { return "[\(title)](\(gid).md)" }
    return "[\(gid)](\(gid).md)"
}

/// Renders a dot-separated linked list of term _gids.
func linkedList(_ gids: [String], registry: TitleRegistry) -> String {
    gids.map { termLink(gid: $0, registry: registry) }.joined(separator: " · ")
}

// MARK: - Formatting Helpers

/// Formats a JSON-decoded number (Int or Double) for display.
func formatNumber(_ value: Any) -> String {
    if let n = value as? Int { return "\(n)" }
    if let n = value as? Double { return n == n.rounded() ? "\(Int(n))" : "\(n)" }
    return "\(value)"
}

/// Appends a `<details><summary>JSON</summary>…</details>` block to `lines`.
func appendJSONDisclosure(_ object: Any, to lines: inout [String]) {
    guard let data = try? JSONSerialization.data(
        withJSONObject: object,
        options: [.prettyPrinted, .sortedKeys]
    ), let json = String(data: data, encoding: .utf8) else { return }

    lines.append("<details>")
    lines.append("<summary>JSON</summary>")
    lines.append("")
    lines.append("```json")
    lines.append(json)
    lines.append("```")
    lines.append("")
    lines.append("</details>")
}

/// Returns an abbreviated copy of an _info dict for the JSON disclosure:
/// _title is shown in full; all other multilingual strings are replaced with "…".
func abbreviatedInfo(_ info: [String: Any]) -> [String: Any] {
    var result: [String: Any] = [:]
    for (key, value) in info {
        if key == "_title" {
            result[key] = value
        } else if let dict = value as? [String: Any] {
            var abbrev: [String: Any] = [:]
            for (lang, text) in dict {
                abbrev[lang] = (text is [Any]) ? ["..."] : "..."
            }
            result[key] = abbrev
        } else {
            result[key] = value
        }
    }
    return result
}

// MARK: - Role Tags

/// Renders _term_role items as HTML badge spans, suitable for placement in the card header.
/// Each tag is a coloured pill displaying the role title.
func renderRoleTags(_ roleGids: [String], registry: TitleRegistry) -> String {
    let style = "background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;" +
                "padding:2px 10px;font-size:0.85em;color:#2C5282"
    let tags = roleGids.map { gid -> String in
        let title = registry[gid] ?? gid
        return "<a href=\"\(gid).md\" style=\"\(style);text-decoration:none\">\(title)</a>"
    }.joined(separator: " ")
    return "<p>\(tags)</p>"
}

// MARK: - Prop / Domn Value Rendering

/// Renders a single value from _prop or _domn for table display.
///
/// Handles:
///   - Bool / NSNumber           → true/false or numeric
///   - String (blob handle)      → truncated handle in backticks
///   - String (term GID)         → linked if in registry, else backtick code
///   - [String: Any] (multilingual dict)  → extract default-language string
///   - [Any] (array)
///       • of multilingual dicts → comma-separated extracted strings
///       • of strings/numbers    → comma-separated, each rendered recursively
///   - Anything else             → *see JSON*
func renderPropValue(_ value: Any, registry: TitleRegistry) -> String {
    // Bool (NSNumber wrapping CFBoolean)
    if let n = value as? NSNumber, CFGetTypeID(n) == CFBooleanGetTypeID() {
        return n.boolValue ? "true" : "false"
    }
    if let n = value as? NSNumber {
        return formatNumber(n)
    }
    if let s = value as? String {
        // Blob handle: shorten for readability
        if s.hasPrefix("blob/") {
            let key = String(s.dropFirst(5))
            let short = key.count > 12 ? String(key.prefix(12)) + "…" : key
            return "`blob/\(short)`"
        }
        return termLink(gid: s, registry: registry)
    }
    if let dict = value as? [String: Any] {
        if let text = extractString(dict) { return text }
        return "*see JSON*"
    }
    if let arr = value as? [Any] {
        if arr.isEmpty { return "(none)" }
        // Array of multilingual dicts?
        if arr.first is [String: Any] {
            let texts = arr.compactMap { $0 as? [String: Any] }
                          .compactMap { extractString($0) }
            if !texts.isEmpty { return texts.joined(separator: ", ") }
        }
        // Array of scalars
        let items = arr.map { renderPropValue($0, registry: registry) }
        return items.joined(separator: ", ")
    }
    return "*see JSON*"
}

// MARK: - Domn and Prop Section Renderers

/// Renders the ## _domn section, excluding _term_role (shown as tags above).
/// Returns an empty array when _domn has no keys other than _term_role.
func renderDomainSection(_ domn: [String: Any], registry: TitleRegistry) -> [String] {
    var other = domn
    other.removeValue(forKey: "_term_role")
    guard !other.isEmpty else { return [] }

    var lines: [String] = []
    lines.append("## \(termLink(gid: "_domn", registry: registry))")
    lines.append("")
    lines.append("| Property | Value |")
    lines.append("|---|---|")
    for key in other.keys.sorted() {
        let keyDisplay = termLink(gid: key, registry: registry)
        let valDisplay = renderPropValue(other[key]!, registry: registry)
        lines.append("| \(keyDisplay) | \(valDisplay) |")
    }
    lines.append("")
    appendJSONDisclosure(other, to: &lines)
    return lines
}

/// Renders the ## _prop section as a key/value table.
/// Returns an empty array when _prop is absent or empty.
func renderPropSection(_ prop: [String: Any], registry: TitleRegistry) -> [String] {
    guard !prop.isEmpty else { return [] }

    var lines: [String] = []
    lines.append("## \(termLink(gid: "_prop", registry: registry))")
    lines.append("")
    lines.append("| Property | Value |")
    lines.append("|---|---|")
    for key in prop.keys.sorted() {
        let keyDisplay = termLink(gid: key, registry: registry)
        let valDisplay = renderPropValue(prop[key]!, registry: registry)
        lines.append("| \(keyDisplay) | \(valDisplay) |")
    }
    lines.append("")
    appendJSONDisclosure(prop, to: &lines)
    return lines
}

// MARK: - Bounds Rendering

/// Renders `_min-items` / `_max-items` from an elements-like object.
/// Returns an empty string when neither bound is present.
func renderElementsBounds(_ value: Any, registry: TitleRegistry) -> String {
    guard let dict = value as? [String: Any] else { return "" }
    var parts: [String] = []
    if let min = dict["_min-items"] {
        parts.append("\(termLink(gid: "_min-items", registry: registry)): \(formatNumber(min))")
    }
    if let max = dict["_max-items"] {
        parts.append("\(termLink(gid: "_max-items", registry: registry)): \(formatNumber(max))")
    }
    return parts.joined(separator: "; ")
}

/// Renders the bounds of a numeric or string range object as a semicolon-separated list.
func renderRangeBounds(_ range: [String: Any], registry: TitleRegistry) -> String {
    let boundKeys = ["_min-inclusive", "_min-exclusive",
                     "_max-inclusive", "_max-exclusive",
                     "_string_min-inclusive", "_string_min-exclusive",
                     "_string_max-inclusive", "_string_max-exclusive"]
    var parts: [String] = []
    for key in boundKeys {
        guard let val = range[key] else { continue }
        let link = termLink(gid: key, registry: registry)
        if let s = val as? String { parts.append("\(link): `\(s)`") }
        else { parts.append("\(link): \(formatNumber(val))") }
    }
    return parts.joined(separator: "; ")
}

// MARK: - Companion Rendering

/// Renders companion properties (e.g. _unit, _decimals, _enums, _range_valid) as a
/// semicolon-separated inline string, suitable for wrapping in parentheses.
func renderCompanions(
    _ companions: [String: Any],
    registry: TitleRegistry
) -> String {
    let knownOrder = [
        "_decimals", "_regexp", "_unit", "_unit_name", "_unit_symbol",
        "_enums", "_range_valid", "_range_normal",
        "_range_valid_string", "_range_normal_string"
    ]
    // Render in known order, then any unrecognised keys alphabetically.
    let orderedKeys = knownOrder.filter { companions[$0] != nil }
    let extraKeys = companions.keys.filter { !knownOrder.contains($0) }.sorted()
    var parts: [String] = []

    for key in orderedKeys + extraKeys {
        guard let val = companions[key] else { continue }
        let keyLink = termLink(gid: key, registry: registry)
        switch key {
        case "_decimals":
            parts.append("\(keyLink): \(formatNumber(val))")
        case "_regexp", "_unit", "_unit_name", "_unit_symbol":
            if let s = val as? String { parts.append("\(keyLink): `\(s)`") }
        case "_enums":
            if let arr = val as? [Any] {
                let items = arr.compactMap { $0 as? String }
                    .map { enumRootLink(gid: $0, registry: registry) }
                    .joined(separator: " · ")
                parts.append("\(keyLink): \(items)")
            }
        case "_range_valid", "_range_normal", "_range_valid_string", "_range_normal_string":
            if let rangeObj = val as? [String: Any] {
                let bounds = renderRangeBounds(rangeObj, registry: registry)
                parts.append(bounds.isEmpty ? keyLink : "\(keyLink): \(bounds)")
            }
        default:
            parts.append(keyLink)
        }
    }
    return parts.joined(separator: "; ")
}

// MARK: - Inline Shape Rendering (for dict values, array elements, tuple positions)

/// Renders a full _data section object as a single inline string.
/// Used for dict values, array elements, and tuple positions.
/// Falls back to a notice for recursive or unsupported shapes.
func renderDataShapeInline(_ data: [String: Any], registry: TitleRegistry) -> String {
    if data.isEmpty { return "*Any*" }

    if let scalar = data["_scalar"] as? [String: Any] {
        return renderScalarInline(scalar, registry: registry)
    }
    if let object = data["_object"] as? [String: Any] {
        return renderObjectInline(object, registry: registry)
    }
    if let typedef = data["_typedef"] as? String {
        return termLink(gid: typedef, registry: registry)
    }
    // Recursive or complex: direct user to JSON.
    return "*Complex type — see JSON*"
}

/// Renders a _scalar object inline: "Scalar — Type (companions)".
func renderScalarInline(_ scalar: [String: Any], registry: TitleRegistry) -> String {
    let scalarLink = termLink(gid: "_scalar", registry: registry)
    guard !scalar.isEmpty else { return scalarLink }
    // The type key is the sole non-_elements key.
    guard let typeKey = scalar.keys.first(where: { $0 != "_elements" }) else { return scalarLink }
    let typeLink = termLink(gid: typeKey, registry: registry)
    let companions = (scalar[typeKey] as? [String: Any]) ?? [:]
    if companions.isEmpty { return "\(scalarLink) — \(typeLink)" }
    let compStr = renderCompanions(companions, registry: registry)
    return "\(scalarLink) — \(typeLink) (\(compStr))"
}

/// Renders a _object value inline: "Object", "Object — Open schema", or "Object — Closed schema".
func renderObjectInline(_ object: [String: Any], registry: TitleRegistry) -> String {
    let objectLink = termLink(gid: "_object", registry: registry)
    if object["_open"] != nil { return "\(objectLink) — \(termLink(gid: "_open", registry: registry))" }
    if object["_closed"] != nil { return "\(objectLink) — \(termLink(gid: "_closed", registry: registry))" }
    return objectLink
}

/// Renders the leaf element type of a _set or _nested object inline: "Type (companions)".
func renderLeafTypeInline(_ typeObj: [String: Any], registry: TitleRegistry) -> String {
    guard let typeKey = typeObj.keys.first(where: { $0 != "_elements" }) else { return "" }
    let typeLink = termLink(gid: typeKey, registry: registry)
    let companions = (typeObj[typeKey] as? [String: Any]) ?? [:]
    if companions.isEmpty { return typeLink }
    let compStr = renderCompanions(companions, registry: registry)
    return "\(typeLink) (\(compStr))"
}

// MARK: - Shape Section Renderers

/// Appends the shape line(s) for a _scalar data object.
func appendScalarShape(_ scalar: [String: Any], to lines: inout [String], registry: TitleRegistry) {
    let display = renderScalarInline(scalar, registry: registry)
    lines.append("**Shape:** \(display)")
}

/// Appends the shape line and schema constraints for a _object data object.
func appendObjectShape(_ object: [String: Any], to lines: inout [String], registry: TitleRegistry) {
    let objectLink = termLink(gid: "_object", registry: registry)
    if object.isEmpty {
        lines.append("**Shape:** \(objectLink)")
        return
    }
    if let open = object["_open"] as? [String: Any] {
        lines.append("**Shape:** \(objectLink) — \(termLink(gid: "_open", registry: registry))")
        lines.append("")
        appendSchemaConstraints(open, to: &lines, registry: registry)
    } else if let closed = object["_closed"] as? [String: Any] {
        lines.append("**Shape:** \(objectLink) — \(termLink(gid: "_closed", registry: registry))")
        lines.append("")
        appendSchemaConstraints(closed, to: &lines, registry: registry)
    } else {
        lines.append("**Shape:** \(objectLink)")
    }
}

/// Appends the shape line and key/value display for a _dict data object.
func appendDictShape(_ dict: [String: Any], to lines: inout [String], registry: TitleRegistry) {
    lines.append("**Shape:** \(termLink(gid: "_dict", registry: registry))")

    if let keyObj = dict["_dict_key"] as? [String: Any] {
        lines.append("")
        let keyDisplay = renderLeafTypeInline(keyObj, registry: registry)
        lines.append("**\(termLink(gid: "_dict_key", registry: registry)):** \(keyDisplay)")
    }

    if let valObj = dict["_dict_value"] as? [String: Any] {
        lines.append("")
        lines.append("**\(termLink(gid: "_dict_value", registry: registry))**")
        lines.append("")
        lines.append(renderDataShapeInline(valObj, registry: registry))
    }
}

/// Appends the shape line for a _set data object.
func appendSetShape(_ set: [String: Any], to lines: inout [String], registry: TitleRegistry) {
    let typeDisplay = renderLeafTypeInline(set, registry: registry)
    var shapeLine = "**Shape:** \(termLink(gid: "_set", registry: registry))"
    if !typeDisplay.isEmpty { shapeLine += " — \(typeDisplay)" }
    // _elements bounds
    if let elements = set["_elements"] as? [String: Any] {
        let bounds = renderElementsBounds(elements, registry: registry)
        if !bounds.isEmpty { shapeLine += " (\(bounds))" }
    }
    lines.append(shapeLine)
}

/// Appends the shape line for a _nested data object.
func appendNestedShape(_ nested: [String: Any], to lines: inout [String], registry: TitleRegistry) {
    let typeDisplay = renderLeafTypeInline(nested, registry: registry)
    var shapeLine = "**Shape:** \(termLink(gid: "_nested", registry: registry))"
    if !typeDisplay.isEmpty { shapeLine += " — \(typeDisplay)" }
    lines.append(shapeLine)
}

/// Appends the shape line for a _array data object.
func appendArrayShape(_ array: [String: Any], to lines: inout [String], registry: TitleRegistry) {
    let arrayLink = termLink(gid: "_array", registry: registry)

    // Optional element-count bounds
    var boundsStr = ""
    if let elements = array["_elements"] as? [String: Any] {
        boundsStr = renderElementsBounds(elements, registry: registry)
    }
    let boundsSuffix = boundsStr.isEmpty ? "" : " (\(boundsStr))"

    if let typedef = array["_typedef"] as? String {
        lines.append("**Shape:** \(arrayLink) — \(termLink(gid: typedef, registry: registry))\(boundsSuffix)")
    } else if let scalar = array["_scalar"] as? [String: Any] {
        lines.append("**Shape:** \(arrayLink) — \(renderScalarInline(scalar, registry: registry))\(boundsSuffix)")
    } else if let object = array["_object"] as? [String: Any] {
        lines.append("**Shape:** \(arrayLink) — \(renderObjectInline(object, registry: registry))\(boundsSuffix)")
    } else if array.keys.contains(where: { ["_array","_dict","_set","_nested","_tuple"].contains($0) }) {
        lines.append("**Shape:** \(arrayLink)\(boundsSuffix) — *Nested structure — see JSON*")
    } else if array.isEmpty {
        lines.append("**Shape:** \(arrayLink)")
    } else {
        lines.append("**Shape:** \(arrayLink) — *see JSON*")
    }
}

/// Appends the shape table for a _tuple data array.
func appendTupleShape(_ positions: [Any], to lines: inout [String], registry: TitleRegistry) {
    lines.append("**Shape:** \(termLink(gid: "_tuple", registry: registry))")
    lines.append("")
    lines.append("| Position | Type |")
    lines.append("|---|---|")
    for (i, posRaw) in positions.enumerated() {
        let posData = (posRaw as? [String: Any]) ?? [:]
        let typeDisplay = renderDataShapeInline(posData, registry: registry)
        lines.append("| \(i) | \(typeDisplay) |")
    }
}

/// Appends the shape line for a _typedef reference.
func appendTypedefShape(_ typedef: String, to lines: inout [String], registry: TitleRegistry) {
    let typedefLink = termLink(gid: "_typedef", registry: registry)
    let targetLink  = termLink(gid: typedef,    registry: registry)
    lines.append("**Shape:** \(typedefLink): \(targetLink)")
}

// MARK: - Object Schema Constraint Rendering

/// Appends a single selector line: "Mandatory selection (bounds)" or "Optional selection (bounds)".
func selectorLine(_ selector: [String: Any], registry: TitleRegistry) -> String {
    if let all = selector["_all"] {
        let link   = termLink(gid: "_all", registry: registry)
        let bounds = renderElementsBounds(all, registry: registry)
        return bounds.isEmpty ? link : "\(link) (\(bounds))"
    }
    if let any = selector["_any"] {
        let link   = termLink(gid: "_any", registry: registry)
        let bounds = renderElementsBounds(any, registry: registry)
        return bounds.isEmpty ? link : "\(link) (\(bounds))"
    }
    return ""
}

/// Appends the **Required properties** block from the `_required` array.
func appendRequiredConstraint(_ selectorObjs: [[String: Any]], to lines: inout [String], registry: TitleRegistry) {
    lines.append("**\(termLink(gid: "_required", registry: registry))**")
    lines.append("")

    for selectorObj in selectorObjs {
        guard let selectors  = selectorObj["_selectors"] as? [[String: Any]],
              let selectionRaw = selectorObj["_selection"] else { continue }

        if let nested = selectionRaw as? [[Any]] {
            // Nested selection: pair each selector with its sub-array positionally.
            for (i, selector) in selectors.enumerated() {
                let line = selectorLine(selector, registry: registry)
                if !line.isEmpty { lines.append(line) }
                if i < nested.count {
                    let gids = nested[i].compactMap { $0 as? String }
                    lines.append(linkedList(gids, registry: registry))
                }
                if i < selectors.count - 1 { lines.append("") }
            }
        } else if let flat = selectionRaw as? [Any] {
            // Flat selection: one selector governs all candidates.
            let gids = flat.compactMap { $0 as? String }
            for selector in selectors {
                let line = selectorLine(selector, registry: registry)
                if !line.isEmpty { lines.append(line) }
            }
            lines.append(linkedList(gids, registry: registry))
        }
        lines.append("")
    }
}

/// Appends all schema constraint properties (_required, _recommended, …) in canonical order.
func appendSchemaConstraints(_ schema: [String: Any], to lines: inout [String], registry: TitleRegistry) {
    for key in constraintOrder {
        guard let value = schema[key] else { continue }
        switch key {
        case "_required":
            if let objs = value as? [[String: Any]] {
                appendRequiredConstraint(objs, to: &lines, registry: registry)
            }
        case "_default-value":
            lines.append("**\(termLink(gid: key, registry: registry)):** *see JSON*")
            lines.append("")
        default:
            if let gids = value as? [Any] {
                let linked = gids.compactMap { $0 as? String }
                    .map { termLink(gid: $0, registry: registry) }
                    .joined(separator: " · ")
                lines.append("**\(termLink(gid: key, registry: registry)):** \(linked)")
                lines.append("")
            }
        }
    }
}

// MARK: - Section Renderers

/// Renders the ## Identification section from a _code dict.
func renderCodeSection(_ code: [String: Any], registry: TitleRegistry) -> [String] {
    var lines: [String] = []
    lines.append("## \(termLink(gid: "_code", registry: registry))")
    lines.append("")
    lines.append("| Property | Value |")
    lines.append("|---|---|")

    // Namespace
    let nidDisplay: String
    if let nid = code["_nid"] as? String {
        nidDisplay = nid.isEmpty ? "(default)" : termLink(gid: nid, registry: registry)
    } else {
        nidDisplay = "(none)"
    }
    lines.append("| \(termLink(gid: "_nid", registry: registry)) | \(nidDisplay) |")

    if let lid = code["_lid"] as? String {
        lines.append("| \(termLink(gid: "_lid", registry: registry)) | `\(lid)` |")
    }
    if let gid = code["_gid"] as? String {
        lines.append("| \(termLink(gid: "_gid", registry: registry)) | `\(gid)` |")
    }
    if let aid = code["_aid"] as? [Any] {
        let aidStr = aid.compactMap { $0 as? String }.map { "`\($0)`" }.joined(separator: " · ")
        lines.append("| \(termLink(gid: "_aid", registry: registry)) | \(aidStr) |")
    }

    lines.append("")
    appendJSONDisclosure(code, to: &lines)
    return lines
}

/// Renders the ## Information section from an _info dict.
func renderInfoSection(_ info: [String: Any], registry: TitleRegistry) -> [String] {
    var lines: [String] = []
    lines.append("## \(termLink(gid: "_info", registry: registry))")
    lines.append("")

    var remaining = info

    for key in infoPropertyOrder {
        guard let value = remaining.removeValue(forKey: key) else { continue }
        if inlineInfoProps.contains(key) {
            if let text = extractString(value) {
                lines.append("**\(termLink(gid: key, registry: registry)):** \(text)")
                lines.append("")
            }
        } else if listInfoProps.contains(key) {
            if let items = extractStringArray(value), !items.isEmpty {
                lines.append("**\(termLink(gid: key, registry: registry))**")
                lines.append("")
                for item in items { lines.append("- \(item)") }
                lines.append("")
            }
        } else {
            if let text = extractString(value) {
                lines.append("**\(termLink(gid: key, registry: registry))**")
                lines.append("")
                lines.append(text)
                lines.append("")
            }
        }
    }

    // Unrecognised _info properties, alphabetically.
    for key in remaining.keys.sorted() {
        guard let value = remaining[key] else { continue }
        if let text = extractString(value) {
            lines.append("**\(termLink(gid: key, registry: registry))**")
            lines.append("")
            lines.append(text)
            lines.append("")
        }
    }

    appendJSONDisclosure(abbreviatedInfo(info), to: &lines)
    return lines
}

/// Renders the ## Data section from a _data dict.
func renderDataSection(_ data: [String: Any], registry: TitleRegistry) -> [String] {
    var lines: [String] = []
    lines.append("## \(termLink(gid: "_data", registry: registry))")
    lines.append("")

    if data.isEmpty {
        lines.append("**Shape:** *Any*")
    } else if let scalar = data["_scalar"] as? [String: Any] {
        appendScalarShape(scalar, to: &lines, registry: registry)
    } else if let object = data["_object"] as? [String: Any] {
        appendObjectShape(object, to: &lines, registry: registry)
    } else if let dict = data["_dict"] as? [String: Any] {
        appendDictShape(dict, to: &lines, registry: registry)
    } else if let set = data["_set"] as? [String: Any] {
        appendSetShape(set, to: &lines, registry: registry)
    } else if let nested = data["_nested"] as? [String: Any] {
        appendNestedShape(nested, to: &lines, registry: registry)
    } else if let array = data["_array"] as? [String: Any] {
        appendArrayShape(array, to: &lines, registry: registry)
    } else if let positions = data["_tuple"] as? [Any] {
        appendTupleShape(positions, to: &lines, registry: registry)
    } else if let typedef = data["_typedef"] as? String {
        appendTypedefShape(typedef, to: &lines, registry: registry)
    } else {
        lines.append("**Shape:** *see JSON*")
    }

    // Strip any trailing blank lines added by shape renderers before the disclosure.
    while lines.last == "" { lines.removeLast() }
    lines.append("")
    appendJSONDisclosure(data, to: &lines)
    return lines
}

// MARK: - Card Rendering

/// Renders a complete Markdown card for a term.
func renderCard(gid: String, info: [String: Any], term: [String: Any], registry: TitleRegistry) -> String {
    var lines: [String] = []

    // H1: title, optional role tags, then grey _gid subtitle
    let title = extractString(info["_title"] as Any) ?? gid
    lines.append("# \(title)")

    // Role tags sit between the title and the gid subtitle.
    if let domn = term["_domn"] as? [String: Any],
       let rolesRaw = domn["_term_role"] as? [Any] {
        let roleGids = rolesRaw.compactMap { $0 as? String }
        if !roleGids.isEmpty {
            lines.append(renderRoleTags(roleGids, registry: registry))
        }
    }

    lines.append("<p style=\"color: #888; margin-top: -0.5em;\"><code>\(gid)</code></p>")
    lines.append("")

    // Blockquote: definition
    if let definition = extractString(info["_definition"] as Any) {
        lines.append("> \(definition)")
        lines.append("")
    }

    lines.append("---")
    lines.append("")

    // Identification section
    if let code = term["_code"] as? [String: Any] {
        lines += renderCodeSection(code, registry: registry)
        lines.append("")
        lines.append("---")
        lines.append("")
    }

    // Information section
    lines += renderInfoSection(info, registry: registry)

    // Data section (only when _data is present)
    if let data = term["_data"] as? [String: Any] {
        lines.append("")
        lines.append("---")
        lines.append("")
        lines += renderDataSection(data, registry: registry)
    }

    // Domain section — non-role _domn properties (only when present)
    if let domn = term["_domn"] as? [String: Any] {
        let domLines = renderDomainSection(domn, registry: registry)
        if !domLines.isEmpty {
            lines.append("")
            lines.append("---")
            lines.append("")
            lines += domLines
        }
    }

    // Properties section — _prop key/value table (only when present)
    if let prop = term["_prop"] as? [String: Any] {
        let propLines = renderPropSection(prop, registry: registry)
        if !propLines.isEmpty {
            lines.append("")
            lines.append("---")
            lines.append("")
            lines += propLines
        }
    }

    // Normalise trailing whitespace.
    while lines.last == "" { lines.removeLast() }
    lines.append("")

    return lines.joined(separator: "\n")
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

// MARK: - Main

func run() throws {
    let fm = FileManager.default
    let cwd = URL(fileURLWithPath: fm.currentDirectoryPath)

    guard let repoRoot = findRepoRoot(from: cwd) else {
        fputs("Error: could not locate repository root (no .git directory found).\n", stderr)
        exit(1)
    }

    let config = readConfig(repoRoot: repoRoot)
    let termsURL = repoRoot.appendingPathComponent(config["terms"] ?? "docs")

    // Source directories scanned for term cards, in order.
    // Configurable via dictionary.config.json; defaults: data/core, data/standards.
    let sourceDirectories: [URL] = [
        repoRoot.appendingPathComponent(config["core"]      ?? "data/core"),
        repoRoot.appendingPathComponent(config["standards"] ?? "data/standards"),
    ]

    try fm.createDirectory(at: termsURL, withIntermediateDirectories: true)

    // Phase 1: collect all terms from all source directories.
    var termsByGid: [String: [String: Any]] = [:]

    for sourceURL in sourceDirectories {
        guard fm.fileExists(atPath: sourceURL.path) else { continue }
        let jsonFiles = (try? fm.contentsOfDirectory(at: sourceURL, includingPropertiesForKeys: nil))?
            .filter { $0.pathExtension == "json" }
            .sorted { $0.lastPathComponent < $1.lastPathComponent } ?? []
        for file in jsonFiles {
            let raw = try Data(contentsOf: file)
            guard let array = try JSONSerialization.jsonObject(with: raw) as? [[String: Any]] else {
                fputs("Warning: \(file.lastPathComponent) is not a JSON array — skipping.\n", stderr)
                continue
            }
            for term in array {
                guard let code = term["_code"] as? [String: Any],
                      let gid  = code["_gid"] as? String else { continue }
                termsByGid[gid] = term
            }
        }
    }

    // Build the title registry for linked labels.
    let registry = buildTitleRegistry(from: termsByGid)

    // Phase 2: write or update cards.
    var written   = 0
    var unchanged = 0
    var deleted   = 0
    var generatedGids = Set<String>()

    for (gid, term) in termsByGid.sorted(by: { $0.key < $1.key }) {
        guard let info = term["_info"] as? [String: Any] else { continue }

        let content = renderCard(gid: gid, info: info, term: term, registry: registry)
        let fileURL = termsURL.appendingPathComponent("\(gid).md")
        generatedGids.insert(gid)

        let existing = try? String(contentsOf: fileURL, encoding: .utf8)
        if existing == content {
            unchanged += 1
        } else {
            try content.write(to: fileURL, atomically: true, encoding: .utf8)
            written += 1
        }
    }

    // Phase 3: remove stale cards.
    let existingCards = (try? fm.contentsOfDirectory(at: termsURL, includingPropertiesForKeys: nil)
        .filter { $0.pathExtension == "md" }) ?? []

    for card in existingCards {
        let stem = card.deletingPathExtension().lastPathComponent
        guard !stem.contains(" ") else { continue }
        if !generatedGids.contains(stem) {
            try fm.removeItem(at: card)
            deleted += 1
        }
    }

    print("term-cards: \(written) written, \(unchanged) unchanged, \(deleted) deleted.")
}

do {
    try run()
} catch {
    fputs("Error: \(error.localizedDescription)\n", stderr)
    exit(1)
}
