/**
 * Loader.swift — Parallel JSON loading of term files and edge files.
 *
 * Term files are parsed into [TermRecord]; edge files into [EdgeRecord].
 * Objects without _code._gid are silently skipped (e.g. blob documents).
 * Reading is parallelised with DispatchGroup; result assembly is serial.
 */

import Foundation

struct LoadResult {
	var terms: [TermRecord] = []
	var edges: [EdgeRecord] = []
	var skippedObjects: Int = 0
	var errors: [(URL, String)] = []
}

func loadAll(termFiles: [URL], edgeFiles: [URL]) -> LoadResult {
	// Thread-safe storage: one slot per file, indexed.
	struct TermSlot { var records: [TermRecord] = []; var skipped = 0; var error: String? }
	struct EdgeSlot { var records: [EdgeRecord] = [];               var error: String? }

	var termSlots = [TermSlot](repeating: TermSlot(), count: termFiles.count)
	var edgeSlots = [EdgeSlot](repeating: EdgeSlot(), count: edgeFiles.count)

	let lock = NSLock()
	let group = DispatchGroup()
	let queue = DispatchQueue(label: "assign-roles.load", attributes: .concurrent)

	for (i, url) in termFiles.enumerated() {
		group.enter()
		queue.async {
			let (records, skipped, err) = parseTermFile(url)
			lock.lock()
			termSlots[i] = TermSlot(records: records, skipped: skipped, error: err)
			lock.unlock()
			group.leave()
		}
	}

	for (i, url) in edgeFiles.enumerated() {
		group.enter()
		queue.async {
			let (records, err) = parseEdgeFile(url)
			lock.lock()
			edgeSlots[i] = EdgeSlot(records: records, error: err)
			lock.unlock()
			group.leave()
		}
	}

	group.wait()

	var result = LoadResult()
	for (i, slot) in termSlots.enumerated() {
		result.terms.append(contentsOf: slot.records)
		result.skippedObjects += slot.skipped
		if let err = slot.error { result.errors.append((termFiles[i], err)) }
	}
	for (i, slot) in edgeSlots.enumerated() {
		result.edges.append(contentsOf: slot.records)
		if let err = slot.error { result.errors.append((edgeFiles[i], err)) }
	}
	return result
}

// MARK: - Term file parser

private func parseTermFile(_ url: URL) -> (records: [TermRecord], skipped: Int, error: String?) {
	guard let data = try? Data(contentsOf: url) else {
		return ([], 0, "Cannot read file")
	}
	guard let json = try? JSONSerialization.jsonObject(with: data),
	      let array = json as? [[String: Any]] else {
		return ([], 0, "Not a JSON array of objects")
	}

	var records: [TermRecord] = []
	var skipped = 0

	for (index, obj) in array.enumerated() {
		guard let code = obj["_code"] as? [String: Any],
		      let gid = code["_gid"] as? String, !gid.isEmpty else {
			skipped += 1
			continue
		}
		let dataSection = obj["_data"]
		let hasData = dataSection != nil
		let domn = obj["_domn"] as? [String: Any] ?? [:]
		records.append(TermRecord(
			fileURL: url,
			arrayIndex: index,
			code: code,
			hasData: hasData,
			dataSection: dataSection,
			domn: domn
		))
	}
	return (records, skipped, nil)
}

// MARK: - Edge file parser

private func parseEdgeFile(_ url: URL) -> (records: [EdgeRecord], error: String?) {
	guard let data = try? Data(contentsOf: url) else {
		return ([], "Cannot read file")
	}
	guard let json = try? JSONSerialization.jsonObject(with: data),
	      let array = json as? [[String: Any]] else {
		return ([], "Not a JSON array of objects")
	}

	var records: [EdgeRecord] = []
	for obj in array {
		guard let from      = obj["_from"]      as? String,
		      let to        = obj["_to"]        as? String,
		      let predicate = obj["_predicate"] as? String,
		      let path      = obj["_path"]      as? [String] else { continue }
		records.append(EdgeRecord(from: from, to: to, predicate: predicate, path: path))
	}
	return (records, nil)
}
