# term-cards

Generates and synchronises one Markdown card per dictionary term in the `terms/` directory at the repository root.

| | |
|---|---|
| **Input** | All `*.json` files in `data/core/` |
| **Output** | `terms/<_gid>.md` — one file per term that has an `_info` section |
| **Language** | Swift 5.9+ |
| **Platform** | macOS 13+ (see [Platform notes](#platform-notes) for Linux) |

---

## Prerequisites

Only Apple's **Xcode Command Line Tools** are required — no third-party packages or package managers. The tool uses only the Swift standard library and `Foundation`.

Check whether they are installed:

```bash
xcode-select -p
```

If the command prints a path (e.g. `/Applications/Xcode.app/Contents/Developer`), you are ready. If it fails, install with:

```bash
xcode-select --install
```

Alternatively, install a standalone [Swift toolchain](https://www.swift.org/download/) (5.9 or later).

---

## Running the workflow

The tool can be invoked from **any directory inside the repository** — it locates the repository root automatically by walking up the directory tree until it finds a `.git` entry.

### From the workflow directory

```bash
cd workflows/term-cards
swift run
```

### From the repository root

```bash
swift run --package-path workflows/term-cards
```

### Expected output

```
term-cards: 13 written, 0 unchanged, 0 deleted.
```

- **written** — cards created or overwritten because the source term changed.
- **unchanged** — cards already on disk that matched the rendered output exactly; not touched (file modification times are preserved).
- **deleted** — stale cards removed because their source term no longer exists in `data/core/`.

Exit code is `0` on success, `1` on any error. Errors and warnings are written to `stderr`; the summary line goes to `stdout`. This makes the tool composable in shell pipelines and CI scripts.

---

## Compiling a release binary

`swift run` always compiles in **debug mode**, which includes extra safety checks and is slower. For a faster binary intended for repeated use, build in release mode:

```bash
cd workflows/term-cards
swift build -c release
```

The compiled binary is written to:

```
workflows/term-cards/.build/release/TermCards
```

Run it directly (no Swift toolchain required at runtime):

```bash
.build/release/TermCards
```

Or copy it somewhere on your `PATH`:

```bash
cp .build/release/TermCards /usr/local/bin/term-cards
term-cards   # run from anywhere inside the repository
```

> **Note:** The `.build/` directory is listed in `.gitignore` and is never committed. Each developer builds locally after checkout.

---

## Recompiling after source changes

Swift Package Manager tracks source changes automatically. Simply re-run `swift run` or `swift build -c release` — SPM recompiles only the files that changed.

There is no separate "clean" step needed under normal circumstances. If you suspect a corrupted build cache:

```bash
swift package clean   # removes .build/
swift run             # full rebuild from scratch
```

---

## Platform notes

### macOS

Fully supported. `Package.swift` targets macOS 13+, which covers all Apple Silicon and Intel Macs running Ventura or later.

### Linux (UNIX)

The code is compatible with Linux. Swift's `Foundation` library on Linux (`swift-corelibs-foundation`) supports all APIs used here: `FileManager`, `URL`, `Data`, `JSONSerialization`. To enable Linux builds, edit `Package.swift` and remove or broaden the `platforms` constraint:

```swift
// Remove this line to allow any platform Swift supports:
platforms: [.macOS(.v13)],
```

Then install a Swift toolchain on your Linux machine from [swift.org/download](https://www.swift.org/download/) and run `swift run` as usual.

### Windows

Swift has experimental Windows support, but `Foundation` on Windows is incomplete. This tool is **not tested on Windows** and is not expected to work without modifications. If Windows support is needed in the future, the recommended approach is to run the tool under WSL2 (Windows Subsystem for Linux), which provides a full Linux environment.

---

## What the sync does

The tool performs a three-phase sync on each run:

1. **Collect** — reads all `*.json` files in `data/core/` and builds a flat index of all terms keyed by `_gid`.
2. **Write** — for every term with an `_info` section, renders a Markdown card and writes it to `terms/<_gid>.md`. Files whose content has not changed are skipped to preserve modification times.
3. **Delete** — removes any `*.md` file in `terms/` whose name does not match a currently known `_gid`. This keeps `terms/` in sync when a term is renamed or removed from `data/core/`.

Terms without an `_info` section (alias terms) are intentionally skipped — they delegate their documentation to the canonical term they point to.

---

## Card format

Each card has the following structure:

```markdown
# `_gid`

**`_title`**

Title text.

**`_definition`**

Definition text.

**`_description`**

Full description in Markdown …

**`_examples`**

Usage examples …
```

Properties appear in the order: `_title`, `_definition`, `_description`, `_examples`, `_notes`, `_url`, `_citation`, `_provider`. Any unrecognised `_info` properties follow alphabetically. Array properties (`_url`, `_citation`, `_provider`) are rendered as Markdown bullet lists.

In Phase 2, only the `iso_639_3_eng` (English) value is rendered. Translations are added in Phase 4.

---

## Future evolution

This is a Phase 2 tool producing simple review cards. In a later phase the generator will be expanded to produce richer cards that include:

- Resolved cross-references to related terms (type definitions, enumeration roots, namespace ancestors).
- Graph relationships (enumeration membership, property-of links, alias resolution).
- Full multilingual content once Phase 4 translations are in place.
- Optional HTML output alongside Markdown.

The rendering logic in `Sources/TermCards/main.swift` is the natural place to extend the card format. The sync mechanism (collect → write → delete) will remain unchanged.
