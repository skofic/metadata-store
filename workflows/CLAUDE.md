# workflows — Working Instructions

This directory contains command-line tools that maintain the dictionary's derived files. Each workflow is a self-contained project in its own subdirectory.

## Conventions

- Each workflow is a **Swift package** (Swift 5.9+, macOS 13+).
- Run any workflow with `swift run` from within the workflow's directory, or from anywhere inside the repository — each tool locates the repository root automatically by walking up the directory tree until it finds `.git`.
- Workflows read source data from `data/` and write derived files to their designated output directories (e.g. `docs/`). They **never modify** files in `data/`.
- Directory paths are configured in `dictionary.config.json` at the repository root. Workflows read this file at startup and fall back to built-in defaults when it is absent.
- Output files managed by a workflow are regenerated on every run. **Do not edit them by hand** — edit the source JSON in `data/` instead and re-run the workflow.

## Workflows

| Directory    | Purpose |
|--------------|---------|
| `term-cards` | Generates one Markdown card per term in `terms/` from all `data/core/*.json` files. |
