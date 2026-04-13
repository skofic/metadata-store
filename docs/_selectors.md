# Properties selectors
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_selectors</code></p>

> An ordered array of cardinality rule objects (`_all` or `_any`), each applying positionally to the corresponding element of `_selection`. The first element of `_selectors` applies to the first element of `_selection`, the second to the second, and so on.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `selectors` |
| [Global identifier](_gid.md) | `_selectors` |
| [Official identifiers](_aid.md) | `selectors` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "selectors"
  ],
  "_gid" : "_selectors",
  "_lid" : "selectors",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Properties selectors

**[Definition](_definition.md):** An ordered array of cardinality rule objects (`_all` or `_any`), each applying positionally to the corresponding element of `_selection`. The first element of `_selectors` applies to the first element of `_selection`, the second to the second, and so on.

**[Description](_description.md)**

`_selectors` is the array of cardinality rules within a [`_selector`](_selector.md) object. Each element of `_selectors` is an object containing exactly one of [`_all`](_all.md) (mandatory group) or [`_any`](_any.md) (optional group).

When [`_selection`](_selection.md) is a flat array, `_selectors` has a single element applied to all candidates directly.

When `_selection` is a nested array of sub-arrays, `_selectors` operates as a two-phase pipeline. The first element (`_selectors[0]`) is the intra-group rule: applied to each sub-array of `_selection` independently, it constrains how many elements from each group can simultaneously be present. The second element (`_selectors[1]`) is the inter-group rule: applied to the combined result (one candidate slot per sub-array), it constrains how many of the groups must be represented.

**[Examples](_examples.md)**

The `_selectors` from the [`_range`](_range.md) numeric range term:

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

The first `_selectors` entry — `_all: {_min-items: 1, _max-items: 1}` — is the intra-group rule. Applied to each sub-array independently: from `["_min-exclusive", "_min-inclusive"]`, exactly 1 must be present; from `["_max-exclusive", "_max-inclusive"]`, exactly 1 must be present. The combined result is exactly 2 selected elements.

The second `_selectors` entry — `_any: {_min-items: 1}` — is the inter-group rule. Applied to the 2 selected elements, at least 1 must be present in the actual object.

**[Notes](_notes.md)**

Previously named `_selection_rules` in earlier versions of the dictionary.

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
    "ISO_639_3_eng" : "Properties selectors"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Array](_array.md) — [Object](_object.md) — [Closed schema](_closed.md)

<details>
<summary>JSON</summary>

```json
{
  "_array" : {
    "_object" : {
      "_closed" : {
        "_required" : [
          {
            "_selection" : [
              "_all",
              "_any"
            ],
            "_selectors" : [
              {
                "_all" : {
                  "_max-items" : 1,
                  "_min-items" : 1
                }
              }
            ]
          }
        ]
      }
    }
  }
}
```

</details>
