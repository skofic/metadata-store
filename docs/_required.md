# Required properties
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_required</code></p>

> An array of `_selector` objects that define mandatory property presence rules for the enclosing schema. All selectors in the array must be satisfied simultaneously. Properties listed in `_computed` or given a value in `_default-value` satisfy their requirements automatically, since those are resolved first.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `required` |
| [Global identifier](_gid.md) | `_required` |
| [Official identifiers](_aid.md) | `required` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "required"
  ],
  "_gid" : "_required",
  "_lid" : "required",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Required properties

**[Definition](_definition.md):** An array of `_selector` objects that define mandatory property presence rules for the enclosing schema. All selectors in the array must be satisfied simultaneously. Properties listed in `_computed` or given a value in `_default-value` satisfy their requirements automatically, since those are resolved first.

**[Description](_description.md)**

`_required` is a constraint property within [`_open`](_open.md) or [`_closed`](_closed.md). Its value is an array of [`_selector`](_selector.md) objects. Each `_selector` object pairs a set of cardinality rules ([`_selectors`](_selectors.md)) with a pool of candidate properties ([`_selection`](_selection.md)). All `_selector` objects in the array must be satisfied simultaneously — the array is implicitly AND-connected.

Each `_selector` controls how many of its candidate properties must be present. The rules inside `_selectors` use [`_all`](_all.md) (mandatory group) or [`_any`](_any.md) (optional group) to define cardinality.

In a **closed schema**: `_required` defines the mandatory tier of the permitted whitelist. The union of `_required` candidates and [`_recommended`](_recommended.md) is the full set of allowed properties.

In an **open schema**: `_required` defines which properties must be present, without restricting the set of permitted properties.

**[Examples](_examples.md)**

**In a closed schema** — the [`_range`](_range.md) numeric range object. Exactly one of `_min-exclusive` or `_min-inclusive` must be present, and at least one of `_max-exclusive` or `_max-inclusive` must be present:

```json
{
	"_data": {
		"_object": {
			"_closed": {
				"_required": [
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
				]
			}
		}
	}
}
```

Valid: `{"_min-inclusive": 0, "_max-exclusive": 100}`, `{"_min-inclusive": 0, "_max-inclusive": 100, "_max-exclusive": 99.9}` (two max bounds are allowed since `_any: {_min-items: 1}` only requires at least one).
Invalid: `{"_min-exclusive": 0, "_min-inclusive": 0}` — both min bounds are present; exactly one is required.
Invalid: `{"_min-inclusive": 0}` — no max bound is present.

---

**In an open schema** — both `_selectors` and `_selection` must be present:

```json
{
	"_data": {
		"_object": {
			"_open": {
				"_required": [
					{
						"_selectors": [{"_all": {}}],
						"_selection": ["_selectors", "_selection"]
					}
				]
			}
		}
	}
}
```

Both `_selectors` and `_selection` must be present. Any other dictionary property is also permitted.

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
  "_title" : {
    "ISO_639_3_eng" : "Required properties"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Array](_array.md) — [Properties selector](_selector.md)

<details>
<summary>JSON</summary>

```json
{
  "_array" : {
    "_typedef" : "_selector"
  }
}
```

</details>
