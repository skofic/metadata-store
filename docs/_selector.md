# Properties selector
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_selector</code></p>

> A selection rule object that pairs a set of cardinality rules (`_selectors`) with a pool of candidate properties (`_selection`). Both properties are required. Multiple `_selector` objects within `_required` are AND-connected: all must be satisfied simultaneously.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `selector` |
| [Global identifier](_gid.md) | `_selector` |
| [Official identifiers](_aid.md) | `selector` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "selector"
  ],
  "_gid" : "_selector",
  "_lid" : "selector",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Properties selector

**[Definition](_definition.md):** A selection rule object that pairs a set of cardinality rules (`_selectors`) with a pool of candidate properties (`_selection`). Both properties are required. Multiple `_selector` objects within `_required` are AND-connected: all must be satisfied simultaneously.

**[Description](_description.md)**

A `_selector` object is the unit of selection logic within [`_required`](_required.md). It has two required properties:

- [`_selectors`](_selectors.md) — an array of [`_all`](_all.md) or [`_any`](_any.md) objects defining cardinality rules.
- [`_selection`](_selection.md) — a flat or nested array of descriptor global identifiers serving as the candidate pool.

When `_selection` is a flat array, `_selectors` has a single element applied to all candidates directly.

When `_selection` is a nested array of sub-arrays, `_selectors` operates as a two-phase pipeline. `_selectors[0]` (the intra-group phase) is applied to each sub-array of `_selection` independently: it defines how many elements from each sub-array can simultaneously be present. `_selectors[1]` (the inter-group phase) is applied to the combined result — one candidate slot per sub-array: it defines how many of the sub-array groups must be represented.

**[Examples](_examples.md)**

**Example 1** — the [`_range`](_range.md) numeric range object:

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

`_selectors[0]` (`_all: {_min-items: 1, _max-items: 1}`) is the intra-group phase: applied to each sub-array independently. From `["_min-exclusive", "_min-inclusive"]`, exactly 1 must be present; from `["_max-exclusive", "_max-inclusive"]`, exactly 1 must be present. The combined result is exactly 2 selected elements (one per group).

`_selectors[1]` (`_any: {_min-items: 1}`) is the inter-group phase: applied to the 2 selected elements, at least 1 must be present in the actual object.

---

**Example 2** — requiring that the closed schema form be present:

```json
{
	"_selectors": [{"_all": {}}],
	"_selection": ["_closed"]
}
```

`_closed` must be present. With `_all: {}` and a single candidate, the candidate is simply required.

**[Notes](_notes.md)**

Previously named `_rule_selector` in earlier versions of the dictionary.

<details>
<summary>JSON</summary>

```json
{
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_examples" : {
    "ISO_639_3_eng" : "..."
  },
  "_notes" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Properties selector"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

**[Required properties](_required.md)**

[Mandatory selection](_all.md)
[Properties selectors](_selectors.md) · [Properties selection](_selection.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {
      "_required" : [
        {
          "_selection" : [
            "_selectors",
            "_selection"
          ],
          "_selectors" : [
            {
              "_all" : {

              }
            }
          ]
        }
      ]
    }
  }
}
```

</details>
