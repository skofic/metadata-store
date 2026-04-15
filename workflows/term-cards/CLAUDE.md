# term-cards — Working Instructions

Generates and synchronises one Markdown card per term in the `docs/` directory at the repository root.

- **Input**: all `*.json` files in `data/core/` and `data/standards/`
- **Output**: one `docs/<_gid>.md` file per term that has an `_info` section

Paths are read from `dictionary.config.json` (`paths.core`, `paths.standards`, `paths.terms`); defaults are `data/core`, `data/standards`, and `docs/`.

## Card Format

Each card contains:

1. **`# Title`** — H1 heading with the term's English title.
2. **Role tags** (if present) — `_domn._term_role` values rendered as blue pill badges.
3. **Grey GID subtitle** — `_gid` in a small grey paragraph.
4. **Blockquote definition** — `_info._definition` as a Markdown blockquote.
5. Horizontal rule, then one section per top-level term property in this order:

| Section | Rendered when | Format |
|---------|--------------|--------|
| `## _code` | Always | Property/value table + JSON disclosure |
| `## _info` | Always | Labelled properties (description, examples, etc.) + JSON disclosure |
| `## _data` | Term has `_data` | Shape display + JSON disclosure |
| `## _domn` | `_domn` has keys other than `_term_role` | Property/value table + JSON disclosure |
| `## _prop` | Term has `_prop` | Property/value table + JSON disclosure |

Multilingual values: only the `ISO_639_3_eng` entry is rendered in this phase.
Array properties (`_url`, `_citation`, `_provider`): rendered as a Markdown bullet list.

### `_prop` / `_domn` value rendering

| Value type | Rendered as |
|-----------|-------------|
| Number (int or float) | Bare number |
| Bool | `true` / `false` |
| String (GID in registry) | Markdown link to card |
| String (any other) | Backtick code |
| String starting with `blob/` | Truncated handle in backticks |
| Multilingual dict | Extracted `ISO_639_3_eng` string |
| Array of multilingual dicts | Comma-separated extracted strings |
| Array of scalars | Comma-separated, each rendered by the same rules |

Terms that have no `_info` section (alias terms) produce no card.

## Sync Behaviour

| Condition | Action |
|-----------|--------|
| Term in data, card does not exist | Card is created |
| Term in data, card content differs | Card is overwritten |
| Term in data, card content is identical | Card is left untouched |
| Card exists in `docs/` but term not in data | Card is deleted |

## Build and Run

From within the workflow directory:

```bash
cd workflows/term-cards
swift run
```

Or from anywhere inside the repository:

```bash
swift run --package-path workflows/term-cards
```
