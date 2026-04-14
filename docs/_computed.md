# Computed properties
<p style="color: #888; margin-top: -0.5em;"><code>_computed</code></p>

> A set of descriptor global identifiers listing properties whose values are automatically derived and set by the system at write time. Users may not supply values for computed properties. Because computed properties are resolved before `_required` is checked, a property that is both computed and required will always satisfy the requirement.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `computed` |
| [Global identifier](_gid.md) | `_computed` |
| [Official identifiers](_aid.md) | `computed` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "computed",
  "_gid": "_computed",
  "_aid": [
    "computed"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Computed properties

**[Definition](_definition.md):** A set of descriptor global identifiers listing properties whose values are automatically derived and set by the system at write time. Users may not supply values for computed properties. Because computed properties are resolved before `_required` is checked, a property that is both computed and required will always satisfy the requirement.

**[Description](_description.md)**

`_computed` is a constraint property within [`_open`](_open.md) or [`_closed`](_closed.md). Properties listed here are derived from other properties in the same object according to rules encoded in the system. The system sets their values before any validation is performed.

Computed properties may also appear in [`_immutable`](_immutable.md) when the derived value must never change after the initial write. A property appearing in both `_computed` and `_immutable` is computed once at creation time and locked permanently thereafter.

**[Examples](_examples.md)**

The [`_code`](_code.md) section computes three properties automatically:

```json
{
	"_data": {
		"_object": {
			"_closed": {
				"_required": [
					{
						"_selectors": [{"_all": {}}],
						"_selection": ["_lid", "_gid"]
					}
				],
				"_recommended": ["_nid", "_aid", "_pid"],
				"_computed": ["_gid", "_aid"],
				"_immutable": ["_lid", "_gid"]
			}
		}
	}
}
```

- `_gid` is computed as the concatenation of `_nid` and `_lid` separated by `"_"`. The user provides `_lid` (and optionally `_nid`); the system derives `_gid`.
- `_key` (the ArangoDB document key) is then set to the value of `_gid` by the loader before the document is saved.
- `_aid` (the set of all identifiers) is initialised to `[_lid]` if absent — the user's local identifier becomes the first official identifier.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Computed properties"
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

**Shape:** [Set](_set.md) of [Descriptor term key](_term_key_descriptor.md)

<details>
<summary>JSON</summary>

```json
{
  "_set": {
    "_term_key_descriptor": {}
  }
}
```

</details>
