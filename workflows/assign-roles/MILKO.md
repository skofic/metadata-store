# assign-roles — Term Role Assigner and JSON Normaliser

A Swift command-line tool that automatically computes `_domn._term_role` for every dictionary term and rewrites all JSON files with canonical key ordering and tab indentation.

---

## Purpose

`_domn._term_role` classifies what structural function a term serves in the dictionary (descriptor, namespace, predicate, enum root, enum item). These roles are detected by inspecting the full set of term and edge files — no single file contains enough information to determine all roles. This tool performs the global scan and writes results back to the source files.

The tool also normalises JSON formatting across all data files on every run: canonical key ordering and tab indentation, so the files are consistent and diff-friendly regardless of how they were created.

Run after:
- Adding new terms to any JSON file
- Adding new edge files
- Any change that might affect namespace, predicate, or enumeration membership

---

## How to Run

```bash
# From the assign-roles package directory
cd workflows/assign-roles
swift run

# From anywhere in the repository
swift run --package-path workflows/assign-roles
```

---

## Source Structure

```
assign-roles/
  Package.swift
  Sources/assign-roles/
    main.swift          Entry point, orchestration, console report
    Models.swift        TermRecord, EdgeRecord value types; TermRole and Predicate constants
    FileScanner.swift   Discovers term files and edge files under data/
    Loader.swift        Parallel JSON loading via DispatchGroup
    RoleAssigner.swift  The five detection rules
    JSONWriter.swift    Custom serialiser; writes term files and normalises edge files
```

---

## Architecture and Code Flow

### 1. File discovery — `FileScanner.swift`

`scanDataDirectory(_ dataURL:) → ScanResult` walks `data/` recursively:

- **Term files**: `*.json` files that do **not** end in `.enum.json` or `.edge.json`
- **Edge files**: `*.enum.json` and `*.edge.json`

Both lists are returned sorted by path. `data/blob.json` is treated as a term file but its objects are silently skipped during parsing because they lack `_code._gid`.

### 2. Parallel loading — `Loader.swift`

`loadAll(termFiles:edgeFiles:) → LoadResult` reads all files concurrently using `DispatchGroup`.

**Term parsing** (per object in each JSON array):
- Requires `_code._gid` — objects without it are counted as skipped
- Extracts `code` dict, `hasData` flag (presence of `_data`), and `domn` dict
- Records `fileURL` and `arrayIndex` for write-back

**Edge parsing** (per object):
- Extracts `_from`, `_to`, `_predicate`, `_path`

### 3–6. Role assignment — `RoleAssigner.swift`

`assignRoles(terms:edges:) → Int` builds indexes then applies five rules to each term.

#### Indexes built

| Index | Contents | Used for |
|-------|---------|---------|
| `pathRoots` | Handles in `_path` of any enum-of or bridge-of edge | enum-root detection |
| `fromEnumOf` | Handles that are `_from` of any enum-of edge | enum-item situation 1 |
| `predicatesUsed` | All `_predicate` GID values seen | predicate role |
| `nidValues` | All non-empty `_nid` values from term `_code` sections | namespace role |
| `bridgeOfEdges` | bridge-of edges indexed by `_from` | enum-item situation 2 |
| `enumOfByTo` | enum-of edges' `_path` arrays indexed by `_to` | enum-item situation 2 |

#### Detection rules

| Role | Condition |
|------|-----------|
| `_term_role_descriptor` | Term has a `_data` section |
| `_term_role_namespace` | Term's `_gid` appears as `_nid` in any other term |
| `_term_role_predicate` | Term's `_gid` appears as `_predicate` in any edge |
| `_term_role_enum-root` | Term's handle (`"terms/<gid>"`) appears in `_path` of any enum-of or bridge-of edge |
| `_term_role_enum-item` (sit. 1) | Term's handle is `_from` of any enum-of edge |
| `_term_role_enum-item` (sit. 2) | Term is `_from` of a bridge-of edge to X; some enum-of edge targets this term; X is in that edge's `_path`; this term's handle is NOT in that edge's `_path` |

Situation 2 distinguishes alias bridge nodes (transparent, not in `_path`) from vocabulary bridge roots (real graph roots, always in `_path` of their member edges).

**Preserved unchanged**: `_term_role_type` and `_term_role_typedef` (user-assigned; never overwritten).

New roles are merged with preserved user roles and sorted for deterministic output.

### 7. Write-back — `JSONWriter.swift`

#### Term files — `writeBack(terms:)`

Groups all `TermRecord` values by file. For each file:
1. Re-reads the full JSON array from disk (the loader only extracts a subset of each object)
2. Patches `_domn` for each term in the file
3. Serialises the complete array with the custom serialiser
4. Writes back atomically

#### Edge files — `normalizeEdgeFiles(_:)`

For each edge file: reads, serialises with edge key ordering, writes back. No content changes — purely structural normalisation.

#### Custom serialiser

Replaces `JSONSerialization.prettyPrinted` + `.sortedKeys` (which sorts alphabetically) with a context-aware serialiser that applies canonical key ordering:

| Context | Key order |
|---------|-----------|
| Term top level | `_code`, `_info`, `_data`, `_domn`, `_prop` |
| `_code` section | `_nid`, `_lid`, `_gid`, `_uri`, `_aid`, `_pid`, `_name`, `_symbol`, `_emoji`, `_regexp` |
| `_info` section | `_title`, `_definition`, `_description`, `_examples`, `_methods`, `_usage`, `_citation`, `_provider`, `_url`, `_notes` |
| Edge top level | `_from`, `_predicate`, `_to`, `_path`, `_path_data` |
| Everything else | Alphabetical |

Context is tracked through recursive serialisation: `childContext(for:parent:)` returns `.codeSection` when the parent is `.termTopLevel` and the key is `_code`, `.infoSection` for `_info`, and `.general` (alphabetical) for everything else.

Boolean values are detected via `CFGetTypeID(n) == CFBooleanGetTypeID()` to distinguish them from other `NSNumber` instances returned by `JSONSerialization`. Doubles always include a decimal point (`30.0` not `30`). Empty objects and arrays are written inline (`{}`, `[]`).

### 8. Console report — `main.swift`

Prints:
- Repository root and data directory path
- File counts (term files, edge files)
- Term and edge load counts, skipped objects
- Count of terms whose `_domn` changed
- Role assignment counts per role type
- Term files written and terms updated
- Edge files written

---

## Design Decisions

**Why `_path`-based enum-root detection?**  
`_path` records the graph roots an edge belongs to. Real enum roots always appear in the `_path` of their member edges. Alias bridge nodes are transparent — they never appear in `_path`. Using `_path` membership is therefore simpler and more correct than inspecting `_from`/`_to` direction, which breaks for vocabulary bridges.

**Why full file rewrite instead of patching only changed terms?**  
Simpler code, guaranteed consistent formatting across all files. The tool is fast enough that rewriting all files is not a concern. The serialiser produces stable output, so unchanged files produce identical bytes and git diffs show only real changes.

**Why re-read files during write-back?**  
The loader extracts only `_code`, `_data`, and `_domn` from each term. Re-reading the original file preserves all other fields (`_info`, `_prop`, etc.) without requiring the loader to retain the full raw object.

---

## Configuration

`dictionary.config.json` at the repository root can override the data directory path:

```json
{
    "paths": {
        "data": "data"
    }
}
```

When absent, `data/` relative to the repository root is used.
