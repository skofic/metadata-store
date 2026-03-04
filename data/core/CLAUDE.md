# data/core — Working Instructions

This directory contains JSON files defining the **core terms** of the data dictionary: the building blocks the dictionary uses to describe itself. All terms here belong to the default (empty-string) namespace.

Refer to the top-level `CLAUDE.md` for the complete Data Dictionary Rules. This file contains only the working standards for this directory.

---

## Directory Layout

```
data/core/
  containers.json     — top-level structure terms (term, edge, sections)
  <other>.json        — additional core term groups, one file per logical group
```

```
terms/                — term cards (project root, not inside data/)
  _term.md
  _code.md
  ...
```

Term cards live at the **project root** in `terms/`, not inside `data/`. All cards are named `<_gid>.md`.

---

## Namespace Convention

Every term in this directory has `"_nid": ""` (empty string). The resulting `_gid` is `"_" + _lid` — a leading underscore marks a core dictionary term.

| `_nid` | `_lid`  | `_gid`           |
|--------|---------|------------------|
| `""`   | `term`  | `_term`          |
| `""`   | `code`  | `_code`          |
| `""`   | `rule`  | `_rule`          |

---

## Term Structure Checklist

Every term in this directory must have:

- [ ] `_code` — with `_nid: ""`, `_lid`, `_gid`, and `_aid` (containing `_lid` value)
- [ ] `_info` — with `_title` and `_definition` at minimum; `_description` strongly recommended
- [ ] `_data` — if the term is a descriptor (defines a data value type)
- [ ] `_rule` — if the term is an object definition (defines a schema)

`_key` is never written to the JSON file — it is computed from `_gid` by the loader.

---

## `_info` Content Standards

**Language**: English only in this phase. Use `"iso_639_3_eng"` as the language key for all `_info` string values. Translations are added in Phase 4.

**`_title`**: Short label, no punctuation. One to five words.

**`_definition`**: Two to four sentences. Sufficient for an informed reader to understand the term without needing to read the description.

**`_description`**: Markdown string. Aimed at a non-expert audience. Should cover what the term is, how it is used, and why it exists. May include links to other term cards (see Link Format below) and fenced code blocks for examples.

**`_examples`**: Markdown string. Include JSON code blocks where helpful.

---

## Link Format

All cross-references in `_description` and `_examples` use relative Markdown links pointing to cards in the `terms/` directory:

```markdown
[identification section](_code.md)
[descriptor](_term_descriptor.md)
```

The link target is always `<_gid>.md`. Since all cards live in the same `terms/` directory, no path prefix is needed. Links are valid when rendered from the `terms/` directory.

Do not create links to terms that do not yet exist. Use backtick formatting instead: `` `_predicate_value-of` ``.

---

## `_rule` Constraints

- `_recommended` is a **flat array** of descriptor `_gid` strings. Never use selection structures inside `_recommended`.
- `_required` uses selection structures (`_selection-descriptors_all`, `_selection-descriptors_one`, etc.).
- `_key` belongs in `_computed` and `_immutable`, not in `_required`.
- `_gid` belongs in `_computed` and `_immutable` for the `_code` section term.
- Properties that are immutable once set (identifiers, relationship endpoints) go in `_immutable`.

---

## File Naming

Group related terms into a single JSON file. Each file is a JSON array of term objects. Suggested groupings:

| File                | Contents |
|---------------------|----------|
| `containers.json`   | Top-level structure terms: `_term`, `_term_descriptor`, `_term_object`, `_edge`, `_code`, `_info`, `_rule` |
| `predicates.json`   | All `_predicate_*` terms |
| `types.json`        | All `_type_*` terms |
| `data_shapes.json`  | `_scalar`, `_array`, `_set`, `_tuple`, `_dict` and their sub-properties |
| `ranges.json`       | Range and element-count terms (`_valid-range`, `_normal-range`, `_min-items`, etc.) |
| `selectors.json`    | Selection structure terms (`_selection-descriptors_*`) |
| `formats.json`      | `_format_*` terms |

New files may be added as needed. Keep each file focused on one logical group.
