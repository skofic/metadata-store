# workflows — Working Instructions

This directory contains command-line tools that maintain the dictionary's derived files. Each workflow is a self-contained project in its own subdirectory.

## Conventions

- Each workflow is a **Swift package** (Swift 5.9+, macOS 13+).
- Run any workflow with `swift run` from within the workflow's directory, or from anywhere inside the repository — each tool locates the repository root automatically by walking up the directory tree until it finds `.git`.
- Most workflows read source data from `data/` and write derived files to their designated output directories (e.g. `docs/`). Workflows that modify `data/` directly are noted below.
- Directory paths are configured in `dictionary.config.json` at the repository root. Workflows read this file at startup and fall back to built-in defaults when it is absent.
- Output files managed by a workflow are regenerated on every run. **Do not edit them by hand** — edit the source JSON in `data/` instead and re-run the workflow.

## JSON formatting rules

All workflows that write JSON files **must** follow these rules. They apply to every JSON file under `data/`.

### Indentation

Use **tabs** for indentation. Never use spaces.

### Canonical key ordering

Keys within JSON objects must appear in the following canonical order. Keys not listed in a section's preferred list appear after the listed keys, sorted alphabetically.

| Object type | Key order |
|-------------|-----------|
| Term top level | `_code`, `_info`, `_data`, `_domn`, `_prop` |
| `_code` section | `_nid`, `_lid`, `_gid`, `_uri`, `_aid`, `_pid`, `_name`, `_symbol`, `_emoji`, `_regexp` |
| `_info` section | `_title`, `_definition`, `_description`, `_examples`, `_methods`, `_usage`, `_citation`, `_provider`, `_url`, `_notes` |
| Edge top level | `_from`, `_predicate`, `_to`, `_path`, `_path_data` |
| All other objects | Alphabetical |

### Numbers

Floating-point numbers must always include a decimal point (e.g. `30.0`, not `30`).

### Empty collections

Empty objects and arrays must be written inline: `{}` and `[]`.

---

## Workflows

| Directory      | Modifies `data/` | Purpose |
|----------------|-----------------|---------|
| `term-cards`   | No  | Generates one Markdown card per term in `docs/` from all `data/core/*.json` files. |
| `check-refs`   | No  | Validates that every term GID referenced inside any term's structural sections is defined in `data/core/`. |
| `assign-roles` | Yes | Scans all term and edge files, computes `_domn._term_role` for every term by rule, and rewrites all term JSON files with tab-indented formatting. Run after adding new terms or edge files. |
