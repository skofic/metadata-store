# Properties selection
<p style="color: #888; margin-top: -0.5em;"><code>_selection</code></p>

> A flat or nested array of descriptor global identifiers that serves as the candidate pool for the cardinality rules defined in `_selectors`. When nested, each sub-array corresponds positionally to one element of `_selectors`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `selection` |
| [Global identifier](_gid.md) | `_selection` |
| [Official identifiers](_aid.md) | `selection` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "selection",
  "_gid": "_selection",
  "_aid": [
    "selection"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Properties selection

**[Definition](_definition.md):** A flat or nested array of descriptor global identifiers that serves as the candidate pool for the cardinality rules defined in `_selectors`. When nested, each sub-array corresponds positionally to one element of `_selectors`.

**[Description](_description.md)**

`_selection` is the candidate pool within a [`_selector`](_selector.md) object. Its structure is coordinated with [`_selectors`](_selectors.md):

- **Flat array** — a single list of candidates. `_selectors` has one element that governs all candidates.
- **Nested array** — an array of sub-arrays. Each sub-array is governed by the `_selectors` element at the same position. The first `_selectors` element applies to the first sub-array, the second to the second, and so on.

All values in `_selection` must be descriptor global identifiers. The nesting may be as deep as needed, but each nesting level adds one entry to `_selectors`.

The name `_selection` was previously `_selection_descriptors` in earlier versions of the dictionary.

**[Examples](_examples.md)**

**Flat `_selection`** — a single selector governs all candidates:

```json
{
	"_selectors": [{"_all": {}}],
	"_selection": ["_selectors", "_selection"]
}
```

One `_selectors` entry governs both `_selectors` and `_selection` as a flat group. Both must be present.

---

**Nested `_selection`** — two selectors each govern one sub-array (from the [`_range`](_range.md) term):

```json
{
	"_selectors": [
		{"_all": {"_min-items": 1, "_max-items": 1}},
		{"_any": {"_min-items": 1}}
	],
	"_selection": [
		["_min-exclusive", "_min-inclusive"],
		["_max-exclusive", "_max-inclusive"]
	]
}
```

The first `_selectors` entry applies to `["_min-exclusive", "_min-inclusive"]`: exactly one lower-bound property is required. The second applies to `["_max-exclusive", "_max-inclusive"]`: at least one upper-bound property is required.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Properties selection"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** (complex)

<details>
<summary>JSON</summary>

```json
{
  "_nested": {
    "_term_key_descriptor": {}
  }
}
```

</details>
