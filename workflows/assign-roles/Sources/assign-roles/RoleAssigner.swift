/**
 * RoleAssigner.swift — Computes _domn._term_role for every TermRecord.
 *
 * Rules (applied in Step 4-6 of the plan):
 *
 *   _term_role_descriptor  : term has a _data section
 *   _term_role_namespace   : term's _gid appears as _nid of any other term
 *   _term_role_predicate   : term's _gid appears as _predicate in any edge
 *   _term_role_enum-root   : term's handle appears in _path of any enum-of or bridge-of edge
 *   _term_role_enum-item   : (sit.1) term is _from of any enum-of edge
 *                            (sit.2) term is _from of bridge-of to X, some enum-of edge
 *                                    targets it with X in path but term's handle NOT in path
 *
 * User-assigned roles (_term_role_type, _term_role_typedef) are preserved unchanged.
 */

import Foundation

// MARK: - Indexes

private struct Indexes {
	/// Handles that appear in _path of any enum-of or bridge-of edge → enum-root candidates.
	var pathRoots: Set<String> = []

	/// Handles that are _from of any enum-of edge → enum-item (situation 1).
	var fromEnumOf: Set<String> = []

	/// All _predicate gid values seen in any edge → predicate role.
	var predicatesUsed: Set<String> = []

	/// All non-empty _nid values seen in any term's _code → namespace role.
	var nidValues: Set<String> = []

	/// bridge-of edges: from → (to, path).
	var bridgeOfEdges: [String: [(to: String, path: [String])]] = [:]

	/// enum-of edges indexed by _to: to → [(path)].
	var enumOfByTo: [String: [[String]]] = [:]
}

private func buildIndexes(terms: [TermRecord], edges: [EdgeRecord]) -> Indexes {
	var idx = Indexes()

	// Collect _nid values from all terms
	for term in terms {
		let nid = term.nid
		if !nid.isEmpty {
			idx.nidValues.insert(nid)
		}
	}

	// Process edges
	for edge in edges {
		idx.predicatesUsed.insert(edge.predicate)

		let isEnumOf   = edge.predicate == Predicate.enumOf
		let isBridgeOf = edge.predicate == Predicate.bridgeOf

		if isEnumOf || isBridgeOf {
			// _path members are graph roots
			for handle in edge.path {
				idx.pathRoots.insert(handle)
			}
		}

		if isEnumOf {
			idx.fromEnumOf.insert(edge.from)
			idx.enumOfByTo[edge.to, default: []].append(edge.path)
		}

		if isBridgeOf {
			idx.bridgeOfEdges[edge.from, default: []].append((to: edge.to, path: edge.path))
		}
	}

	return idx
}

// MARK: - Role computation

/// Computes the new _term_role set for a single term.
/// Preserves user-assigned roles; replaces all auto-computed roles.
private func computeRoles(for term: TermRecord, idx: Indexes) -> [String] {
	var roles: Set<String> = []

	// Preserve user-assigned roles from the existing _domn
	let existing = term.domn["_term_role"] as? [String] ?? []
	for role in existing where TermRole.userAssigned.contains(role) {
		roles.insert(role)
	}

	let gid    = term.gid
	let handle = term.handle

	// _term_role_descriptor
	if term.hasData {
		roles.insert(TermRole.descriptor.rawValue)
	}

	// _term_role_namespace
	if idx.nidValues.contains(gid) {
		roles.insert(TermRole.namespace.rawValue)
	}

	// _term_role_predicate
	if idx.predicatesUsed.contains(gid) {
		roles.insert(TermRole.predicate.rawValue)
	}

	// _term_role_enum-root: handle appears in _path of any enum-of or bridge-of edge
	if idx.pathRoots.contains(handle) {
		roles.insert(TermRole.enumRoot.rawValue)
	}

	// _term_role_enum-item — situation 1: _from of any enum-of edge
	if idx.fromEnumOf.contains(handle) {
		roles.insert(TermRole.enumItem.rawValue)
	}

	// _term_role_enum-item — situation 2: alias bridge node
	// T is _from of bridge-of to X
	// AND some enum-of edge targets T (T is _to)
	// AND that enum-of edge has X in path but NOT T's handle
	if !roles.contains(TermRole.enumItem.rawValue),
	   let bridgeEdges = idx.bridgeOfEdges[handle],
	   let enumOfPaths = idx.enumOfByTo[handle] {
		outer: for bridge in bridgeEdges {
			let x = bridge.to
			for enumPath in enumOfPaths {
				if enumPath.contains(x) && !enumPath.contains(handle) {
					roles.insert(TermRole.enumItem.rawValue)
					break outer
				}
			}
		}
	}

	// Sort for deterministic output
	return roles.sorted()
}

// MARK: - Public entry point

/// Assigns roles to all terms, returning only those whose _domn changed.
func assignRoles(terms: inout [TermRecord], edges: [EdgeRecord]) -> Int {
	let idx = buildIndexes(terms: terms, edges: edges)
	var changedCount = 0

	for i in terms.indices {
		let newRoles = computeRoles(for: terms[i], idx: idx)
		let oldRoles = (terms[i].domn["_term_role"] as? [String] ?? []).sorted()

		if newRoles != oldRoles {
			if newRoles.isEmpty {
				terms[i].domn.removeValue(forKey: "_term_role")
			} else {
				terms[i].domn["_term_role"] = newRoles
			}
			changedCount += 1
		}
	}

	return changedCount
}
