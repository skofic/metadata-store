/**
 * Models.swift — Core data structures for assign-roles.
 */

import Foundation

// MARK: - Term record

/// A parsed term, holding only the fields needed for role detection.
struct TermRecord {
	let fileURL: URL
	let arrayIndex: Int             // position in the source file's JSON array
	var code: [String: Any]         // _code section
	var hasData: Bool               // true when the term has a _data section
	var dataSection: Any?           // full _data value, used for _enums scanning
	var domn: [String: Any]         // _domn section; empty dict when absent in source

	var gid: String { code["_gid"] as? String ?? "" }
	var nid: String { code["_nid"] as? String ?? "" }
	var handle: String { "terms/\(gid)" }
}

// MARK: - Edge record

/// A parsed edge, holding all fields relevant to role detection.
struct EdgeRecord {
	let from: String        // _from handle, e.g. "terms/ISO_3166_1_ITA"
	let to: String          // _to handle
	let predicate: String   // _predicate gid, e.g. "_predicate_enum-of"
	let path: [String]      // _path handles
}

// MARK: - Role constants

enum TermRole: String, CaseIterable {
	case enumRoot       = "_term_role_enum-root"
	case enumSource     = "_term_role_enum-source"   // auto-computed from _enums scanning
	case enumItem       = "_term_role_enum-item"
	case descriptor     = "_term_role_descriptor"
	case predicate      = "_term_role_predicate"
	case namespace      = "_term_role_namespace"
	// User-assigned — never removed by this tool
	case dataType       = "_term_role_data-type"
	case dataShape      = "_term_role_data-shape"
	case typedef        = "_term_role_typedef"

	static let userAssigned: Set<String> = [
		TermRole.dataType.rawValue,
		TermRole.dataShape.rawValue,
		TermRole.typedef.rawValue
	]
}

// MARK: - Predicate constants

enum Predicate {
	static let enumOf    = "_predicate_enum-of"
	static let bridgeOf  = "_predicate_bridge-of"
	static let sectionOf = "_predicate_section-of"
}
