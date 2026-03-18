# term-cards — Working Instructions

Generates and synchronises one Markdown card per term in the `terms/` directory at the repository root.

- **Input**: all `*.json` files in `data/core/`
- **Output**: one `terms/<_gid>.md` file per term that has an `_info` section

## Card Format

Each card contains:

1. **`# \`_gid\``** — H1 heading with the term's global identifier.
2. One labelled section per `_info` property, rendered in this order:
   `_title`, `_definition`, `_description`, `_examples`, `_notes`, `_url`, `_citation`, `_provider`.
   Unrecognised properties follow in alphabetical order.
3. A horizontal rule (`---`) followed by pretty-printed JSON blocks for `_code`, `_data`, and `_rule`, if present, in that order.

Property labels use the format **\`_property_name\`**.

Multilingual values: only the `ISO_639_3_eng` entry is rendered in this phase.
Array properties (`_url`, `_citation`, `_provider`): rendered as a Markdown bullet list.

Terms that have no `_info` section (alias terms) produce no card.

## Sync Behaviour

| Condition | Action |
|-----------|--------|
| Term in data, card does not exist | Card is created |
| Term in data, card content differs | Card is overwritten |
| Term in data, card content is identical | Card is left untouched |
| Card exists in `terms/` but term not in data | Card is deleted |

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
