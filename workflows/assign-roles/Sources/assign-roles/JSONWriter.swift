/**
 * JSONWriter.swift — Writes updated _domn sections back to source JSON files
 *                    and normalises all JSON key ordering.
 *
 * Strategy: full file rewrite with canonical key ordering and tab indentation.
 *
 * Canonical key ordering:
 *   Term top level  : _code, _info, _data, _domn, _prop
 *   _code section   : _nid, _lid, _gid, _uri, _aid, _pid, _name, _symbol, _emoji, _regexp
 *   _info section   : _title, _definition, _description, _examples, _methods, _usage,
 *                     _citation, _provider, _url, _notes
 *   Edge top level  : _from, _predicate, _to, _path, _path_data
 *   Everything else : alphabetical
 */

import Foundation

// MARK: - Result types

struct WriteResult {
	var filesWritten: Int = 0
	var termsUpdated: Int = 0
	var errors: [(URL, String)] = []
}

struct NormalizeResult {
	var filesWritten: Int = 0
	var errors: [(URL, String)] = []
}

// MARK: - Serialization context

private enum SerContext {
	case termTopLevel   // top-level term object
	case codeSection    // value of "_code" key
	case infoSection    // value of "_info" key
	case edgeTopLevel   // top-level edge object
	case general        // everything else — alphabetical
}

private func preferredKeys(for context: SerContext) -> [String] {
	switch context {
	case .termTopLevel:
		return ["_code", "_info", "_data", "_domn", "_prop"]
	case .codeSection:
		return ["_nid", "_lid", "_gid", "_uri", "_aid", "_pid", "_name", "_symbol", "_emoji", "_regexp"]
	case .infoSection:
		return ["_title", "_definition", "_description", "_examples", "_methods", "_usage",
		        "_citation", "_provider", "_url", "_notes"]
	case .edgeTopLevel:
		return ["_from", "_predicate", "_to", "_path", "_path_data"]
	case .general:
		return []
	}
}

private func orderedKeys(_ dict: [String: Any], context: SerContext) -> [String] {
	let preferred = preferredKeys(for: context)
	let allSorted = dict.keys.sorted()
	var result = preferred.filter { allSorted.contains($0) }
	result.append(contentsOf: allSorted.filter { !preferred.contains($0) })
	return result
}

private func childContext(for key: String, parent: SerContext) -> SerContext {
	guard case .termTopLevel = parent else { return .general }
	switch key {
	case "_code": return .codeSection
	case "_info": return .infoSection
	default:      return .general
	}
}

// MARK: - Value helpers

/// Returns the bool value if `value` is an NSNumber wrapping a CFBoolean; nil otherwise.
private func isBoolValue(_ value: Any) -> Bool? {
	guard let n = value as? NSNumber else { return nil }
	return CFGetTypeID(n) == CFBooleanGetTypeID() ? n.boolValue : nil
}

/// JSON-escapes a Swift String and wraps it in double-quotes.
private func jsonEscape(_ s: String) -> String {
	var out = "\""
	for scalar in s.unicodeScalars {
		switch scalar.value {
		case 0x22: out += "\\\""
		case 0x5C: out += "\\\\"
		case 0x08: out += "\\b"
		case 0x0C: out += "\\f"
		case 0x0A: out += "\\n"
		case 0x0D: out += "\\r"
		case 0x09: out += "\\t"
		default:
			if scalar.value < 0x20 {
				out += String(format: "\\u%04X", scalar.value)
			} else {
				out.unicodeScalars.append(scalar)
			}
		}
	}
	out += "\""
	return out
}

/// Formats an NSNumber that is not a boolean.
/// Doubles always include a decimal point; integers are printed without one.
private func formatNumber(_ n: NSNumber) -> String {
	let t = String(cString: n.objCType)
	if t == "d" || t == "f" {
		let d = n.doubleValue
		let s = "\(d)"
		return (s.contains(".") || s.contains("e")) ? s : s + ".0"
	}
	return "\(n.int64Value)"
}

// MARK: - Core serializer

private func serialize(_ value: Any, indent: Int, context: SerContext) -> String {
	if value is NSNull                    { return "null" }
	if let b = isBoolValue(value)         { return b ? "true" : "false" }
	if let n = value as? NSNumber         { return formatNumber(n) }
	if let s = value as? String           { return jsonEscape(s) }
	if let d = value as? [String: Any]    { return serializeDict(d, indent: indent, context: context) }
	if let a = value as? [Any]            { return serializeArray(a, indent: indent, context: context) }
	return "null"
}

private func serializeDict(_ dict: [String: Any], indent: Int, context: SerContext) -> String {
	if dict.isEmpty { return "{}" }
	let keys  = orderedKeys(dict, context: context)
	let inner = String(repeating: "\t", count: indent + 1)
	let outer = String(repeating: "\t", count: indent)
	let lines = keys.map { key -> String in
		let val = dict[key]!
		let ctx = childContext(for: key, parent: context)
		return "\(inner)\(jsonEscape(key)): \(serialize(val, indent: indent + 1, context: ctx))"
	}
	return "{\n" + lines.joined(separator: ",\n") + "\n\(outer)}"
}

private func serializeArray(_ arr: [Any], indent: Int, context: SerContext) -> String {
	if arr.isEmpty { return "[]" }
	let inner = String(repeating: "\t", count: indent + 1)
	let outer = String(repeating: "\t", count: indent)
	let lines = arr.map { element -> String in
		"\(inner)\(serialize(element, indent: indent + 1, context: context))"
	}
	return "[\n" + lines.joined(separator: ",\n") + "\n\(outer)]"
}

// MARK: - File-level helpers

/// Serializes a JSON array as the root of a file, with the given context applied to
/// each top-level dict element. Appends a trailing newline.
private func serializeFileArray(_ array: [Any], topContext: SerContext) -> String {
	return serializeArray(array, indent: 0, context: topContext) + "\n"
}

// MARK: - Write term files back

func writeBack(terms: [TermRecord]) -> WriteResult {
	// Group all terms by file
	var byFile: [URL: [TermRecord]] = [:]
	for term in terms {
		byFile[term.fileURL, default: []].append(term)
	}

	var result = WriteResult()

	for (url, fileTerms) in byFile {
		// Re-read the original file to get the full objects (loader strips most fields)
		guard let data = try? Data(contentsOf: url),
		      let json = try? JSONSerialization.jsonObject(with: data),
		      var array = json as? [[String: Any]] else {
			result.errors.append((url, "Cannot re-read or re-parse for write-back"))
			continue
		}

		// Patch the _domn section for each term
		for term in fileTerms {
			let i = term.arrayIndex
			guard i < array.count else { continue }
			if term.domn.isEmpty {
				array[i].removeValue(forKey: "_domn")
			} else {
				array[i]["_domn"] = term.domn
			}
			result.termsUpdated += 1
		}

		// Serialize with canonical ordering and tab indentation
		let outString = serializeFileArray(array.map { $0 as Any }, topContext: .termTopLevel)

		do {
			try outString.write(to: url, atomically: true, encoding: .utf8)
			result.filesWritten += 1
		} catch {
			result.errors.append((url, error.localizedDescription))
		}
	}

	return result
}

// MARK: - Normalize edge files

func normalizeEdgeFiles(_ edgeFiles: [URL]) -> NormalizeResult {
	var result = NormalizeResult()

	for url in edgeFiles {
		guard let data = try? Data(contentsOf: url),
		      let json = try? JSONSerialization.jsonObject(with: data),
		      let array = json as? [[String: Any]] else {
			result.errors.append((url, "Cannot read or parse edge file"))
			continue
		}

		let outString = serializeFileArray(array.map { $0 as Any }, topContext: .edgeTopLevel)

		do {
			try outString.write(to: url, atomically: true, encoding: .utf8)
			result.filesWritten += 1
		} catch {
			result.errors.append((url, error.localizedDescription))
		}
	}

	return result
}
