/**
 * FileScanner.swift — Discovers term files and edge files under data/.
 *
 * Term files  : *.json  (excluding *.enum.json and *.edge.json)
 * Edge files  : *.enum.json and *.edge.json
 *
 * Non-term JSON files (e.g. data/blob.json) are discovered as term files but
 * silently skipped during parsing because their objects lack _code._gid.
 */

import Foundation

struct ScanResult {
	let termFiles: [URL]
	let edgeFiles: [URL]
}

func scanDataDirectory(_ dataURL: URL) -> ScanResult {
	let fm = FileManager.default
	guard let enumerator = fm.enumerator(
		at: dataURL,
		includingPropertiesForKeys: [.isRegularFileKey],
		options: [.skipsHiddenFiles]
	) else {
		return ScanResult(termFiles: [], edgeFiles: [])
	}

	var termFiles: [URL] = []
	var edgeFiles: [URL] = []

	for case let url as URL in enumerator {
		guard (try? url.resourceValues(forKeys: [.isRegularFileKey]))?.isRegularFile == true else { continue }
		let name = url.lastPathComponent
		guard name.hasSuffix(".json") else { continue }

		if name.hasSuffix(".enum.json") || name.hasSuffix(".edge.json") {
			edgeFiles.append(url)
		} else {
			termFiles.append(url)
		}
	}

	return ScanResult(
		termFiles: termFiles.sorted { $0.path < $1.path },
		edgeFiles: edgeFiles.sorted { $0.path < $1.path }
	)
}
