/**
 * assign-roles — Automatically assigns _domn._term_role to all dictionary terms
 *               and normalises JSON key ordering in all term and edge files.
 *
 * Scans all term files and edge files under data/, applies the five detection
 * rules, rewrites the _domn section of every term, and normalises edge files.
 *
 * Roles computed automatically:
 *   _term_role_descriptor  — term has a _data section
 *   _term_role_namespace   — term's _gid is used as _nid by other terms
 *   _term_role_predicate   — term's _gid is used as _predicate in any edge
 *   _term_role_enum-root   — term's handle appears in _path of enum-of/bridge-of edges
 *   _term_role_enum-item   — term is _from of enum-of, or is an alias bridge node
 *
 * Roles preserved unchanged (user-assigned):
 *   _term_role_type, _term_role_typedef
 *
 * Usage:
 *   swift run                                               (from this package directory)
 *   swift run --package-path workflows/assign-roles         (from the repository root)
 */

import Foundation

// MARK: - Repository root

func findRepoRoot(from start: URL) -> URL? {
	let fm = FileManager.default
	var url = start.standardizedFileURL
	while url.path != "/" {
		if fm.fileExists(atPath: url.appendingPathComponent(".git").path) { return url }
		url = url.deletingLastPathComponent()
	}
	return nil
}

// MARK: - Config

func dataURL(repoRoot: URL) -> URL {
	let configURL = repoRoot.appendingPathComponent("dictionary.config.json")
	if let data = try? Data(contentsOf: configURL),
	   let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
	   let paths = json["paths"] as? [String: Any],
	   let dataPath = (paths["data"] ?? paths["core"]) as? String {
		// Use explicit data path if configured; otherwise fall back
		_ = dataPath   // reserved for future config expansion
	}
	return repoRoot.appendingPathComponent("data")
}

// MARK: - Main

let cwd = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
guard let repoRoot = findRepoRoot(from: cwd) else {
	fputs("Error: cannot find repository root (no .git directory found)\n", stderr)
	exit(1)
}

let dataDir = dataURL(repoRoot: repoRoot)
print("assign-roles — repository root: \(repoRoot.path)")
print("Scanning: \(dataDir.path)")
print()

// Step 1: Discover files
let scan = scanDataDirectory(dataDir)
print("Found: \(scan.termFiles.count) term file(s), \(scan.edgeFiles.count) edge file(s)")

// Step 2: Load in parallel
let loaded = loadAll(termFiles: scan.termFiles, edgeFiles: scan.edgeFiles)

if !loaded.errors.isEmpty {
	print("\nWarnings:")
	for (url, msg) in loaded.errors {
		print("  \(url.lastPathComponent): \(msg)")
	}
}

var loadedLine = "Loaded: \(loaded.terms.count) term(s), \(loaded.edges.count) edge(s)"
if loaded.skippedObjects > 0 {
	loadedLine += " (\(loaded.skippedObjects) object(s) skipped — no _code._gid)"
}
print(loadedLine)

// Steps 3–6: Assign roles
var terms = loaded.terms
let changedTerms = assignRoles(terms: &terms, edges: loaded.edges)
print("Terms with updated _domn: \(changedTerms)")

// Role summary
var roleCounts: [String: Int] = [:]
for term in terms {
	for role in term.domn["_term_role"] as? [String] ?? [] {
		roleCounts[role, default: 0] += 1
	}
}
if !roleCounts.isEmpty {
	print()
	print("Role assignments:")
	for role in roleCounts.keys.sorted() {
		print("  \(role.padding(toLength: 36, withPad: " ", startingAt: 0)) \(roleCounts[role]!)")
	}
}

// Step 7: Write back term files (full rewrite with canonical key ordering)
let written = writeBack(terms: terms)
print()
if written.filesWritten > 0 {
	print("Term files written: \(written.filesWritten) file(s), \(written.termsUpdated) term(s)")
} else {
	print("No term files written.")
}
if !written.errors.isEmpty {
	print("Term file write errors:")
	for (url, msg) in written.errors {
		print("  \(url.lastPathComponent): \(msg)")
	}
	exit(1)
}

// Step 8: Normalise edge files (rewrite with canonical key ordering)
let edgeResult = normalizeEdgeFiles(scan.edgeFiles)
if edgeResult.filesWritten > 0 {
	print("Edge files written: \(edgeResult.filesWritten) file(s)")
} else {
	print("No edge files written.")
}
if !edgeResult.errors.isEmpty {
	print("Edge file write errors:")
	for (url, msg) in edgeResult.errors {
		print("  \(url.lastPathComponent): \(msg)")
	}
	exit(1)
}
