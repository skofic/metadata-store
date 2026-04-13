# check-refs — Term Cross-Reference Validator

A Swift command-line tool that verifies every GID referenced inside a term's structural sections is actually defined somewhere in the dictionary.

---

## Purpose

As the dictionary grows, terms reference each other constantly — property keys like `_scalar`, namespace values like `ISO_639_3`, typedef targets like `_type_comparable`. The check-refs tool catches dangling references before they reach the database, flagging any GID that is used as a reference but not defined in `data/core/`.

---

## How to Run

```bash
# Check all terms in data/core/ (default mode)
swift run --package-path workflows/check-refs

# Show every reference extracted from every term (verbose)
swift run --package-path workflows/check-refs -- --verbose

# Show all references for a single specific term
swift run --package-path workflows/check-refs -- --gid _range_valid

# Validate a new file against the data/core/ index before committing it
swift run --package-path workflows/check-refs -- --file data/ISO/639/iso_639_3.json
```

Exit code 0 = success. Exit code 1 = I/O error. Missing references are reported as warnings but do not (currently) cause a non-zero exit.

---

## Source Structure

The entire tool lives in a single file:

```
check-refs/
  Package.swift            Swift package manifest
  Sources/CheckRefs/
    main.swift             All logic — ~290 lines, no external dependencies
```

### Package.swift

Declares one executable target `check-refs` pointing at `Sources/CheckRefs`. Targets macOS 13+, Swift 5.9+.

---

## Architecture and Code Flow

### 1. Entry point — `run()`

Located at the bottom of `main.swift`. Orchestrates the entire execution:

1. Detects the repository root by walking up the directory tree from the current working directory until it finds a `.git` directory (`findRepoRoot`).
2. Reads `dictionary.config.json` for the `paths.core` override (defaults to `data/core`).
3. Loads the term index from `data/core/` via `loadIndex`.
4. Parses command-line flags (`--verbose`, `--gid`, `--file`) and dispatches to the appropriate mode.

### 2. Repository root detection — `findRepoRoot(from:)`

Walks upward from the current directory, checking for `.git` at each level. This lets the tool be invoked from anywhere inside the repository without needing to know where it lives.

### 3. Index loading — `loadIndex(from:) → TermIndex`

Reads every `*.json` file in `data/core/`, parses each as a JSON array of term objects, and builds two structures:

- **`gidToFile`**: `[gid → filename]` — used for O(1) reference lookups
- **`terms`**: flat array of all term objects — used for iteration

Terms without a `_code._gid` field are silently skipped.

### 4. Reference extraction — `extractRefs(from:) → Set<String>`

The core of the validator. Given one term object, it returns the set of all GIDs referenced by that term. The logic is section-aware:

| Section | Behaviour |
|---------|-----------|
| **`_code`** | Property keys are collected; among values, only `_nid` (when non-empty) is treated as a reference. `_lid`, `_gid`, `_aid`, `_name`, `_emoji`, `_regexp` are identifiers or free text — not references. |
| **`_info`** | Only the property keys themselves (`_title`, `_definition`, …) are collected. The values are `{lang_gid: text}` dicts — the text content is free text and must not be parsed. |
| **Everything else** (`_data`, `_domn`, `_prop`, future sections) | Fully walked by `collectStructuralRefs` — every underscore-prefixed key and every underscore-prefixed string value is treated as a potential reference. |

The term's own `_gid` is removed from the result (self-references are always valid).

### 5. GID candidate test — `isTermGidCandidate(_:)`

A fast inline helper: returns `true` if a string starts with `_` followed by a letter. This rejects:
- Language keys like `ISO_639_3_eng` (starts with `I`, not `_`)
- Local identifiers like `"code"`, `"ITA"` (no leading `_`)
- The empty string

### 6. Structural walk — `collectStructuralRefs(from:) → Set<String>`

Recursive descent over any JSON node (`[String: Any]`, `[Any]`, or `String`). Collects all underscore-prefixed keys and underscore-prefixed string values. No depth limit — walks arbitrarily nested objects.

### 7. Modes

**`runCheckAll(index:verbose:)`** — default mode.  
Iterates all terms in the index (sorted by GID for deterministic output), calls `checkTerm` on each, accumulates missing-reference counts, prints a summary.

**`runSingleGid(_:index:)`** — `--gid` mode.  
Finds the single named term and calls `checkTerm` with `verbose: true`.

**`runCheckFile(_:index:)`** — `--file` mode.  
Loads a separate JSON file (array of term objects) and checks each term against the existing index. Useful for validating a new file before adding it to `data/core/`.

**`checkTerm(_:index:verbose:) → Int`**  
Extracts references from a term, splits them into resolved and missing, and prints the appropriate report. Returns the count of missing references.

---

## What Counts as a Reference

| What | Is a reference? | Reason |
|------|----------------|--------|
| Property key starting with `_` | Yes | Keys in structural sections are term GIDs |
| `_code._nid` value (non-empty) | Yes | Namespace GID |
| String value starting with `_` in structural sections | Yes | Typedef targets, selection candidates, etc. |
| `_info` property keys (`_title`, `_definition`, …) | Yes | These are themselves term GIDs |
| `_info` text content | No | Free text, not dictionary references |
| `_code._lid`, `_gid`, `_aid`, `_name`, `_emoji`, `_regexp` | No | Identifiers or display strings |
| The term's own `_gid` | No | Self-reference, always valid |

---

## Configuration

`dictionary.config.json` at the repository root can override default paths:

```json
{
    "paths": {
        "core": "data/core"
    }
}
```

When the file is absent or the key is missing, `data/core` is used.

---

## Limitations

- Only validates references within `data/core/`. ISO standard terms, namespace terms, and property descriptor terms in `data/ISO/` are not in the index and will appear as missing when referenced from core terms.
- Missing references produce warnings but do not currently set a non-zero exit code.
- The GID candidate heuristic (`_` + letter) is a proxy; it will collect false positives for non-GID underscore strings in unusual `_prop` or `_domn` values.
