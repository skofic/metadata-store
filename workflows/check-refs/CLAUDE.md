# check-refs — Working Instructions

Validates that every term GID referenced within any term's structural sections is defined somewhere in `data/core/`.

- **Input**: all `*.json` files in `data/core/`
- **Output**: report of missing references (or confirmation that all are resolved)

## What counts as a reference

| Location | Collected |
|----------|-----------|
| Any property key starting with `_` in `_code`, `_data`, `_rule`, `_domn`, `_prop` | Yes — property keys are term GIDs |
| Property keys in `_info` (`_title`, `_definition`, …) | Yes |
| String values starting with `_` in structural sections (e.g. `_type_selection_mandatory` as a `_selection_type` value, `_type_boolean` as a `_scalar_type` value, descriptor GIDs in `_recommended`) | Yes |
| `_code._nid` value (when non-empty) | Yes |
| Free-text content inside `_info.<field>.<lang_key>` | **No** — those are human-readable strings |
| `_code._lid`, `_gid`, `_aid`, `_pid`, `_name`, `_symbol`, `_emoji`, `_regexp` values | **No** — identifiers or text, not term references |
| The term's own `_gid` | **No** — self-reference, always skipped |

## Usage

```bash
# Check all terms in data/core/ (default)
swift run --package-path workflows/check-refs

# Show every reference extracted from every term
swift run --package-path workflows/check-refs check-refs --verbose

# Show all references for a specific term
swift run --package-path workflows/check-refs check-refs --gid _rule_selector

# Check a specific JSON file against the data/core/ index
# Useful for validating a new file before adding it to the repository
swift run --package-path workflows/check-refs check-refs --file path/to/new-terms.json
```

## Exit behaviour

Exits with code 0 when all references are resolved. Exits with code 1 on I/O errors. Missing references do not currently cause a non-zero exit (they are reported as warnings only).
