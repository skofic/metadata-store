# `_computed`

**`_title`**

Computed properties

**`_definition`**

A set of descriptor global identifiers listing properties whose values are automatically derived and set by the system at write time. Users may not supply values for computed properties. Because computed properties are resolved before `_required` is checked, a property that is both computed and required will always satisfy the requirement.

**`_description`**

`_computed` is a constraint property within [`_open`](_open.md) or [`_closed`](_closed.md). Properties listed here are derived from other properties in the same object according to rules encoded in the system. The system sets their values before any validation is performed.

Computed properties may also appear in [`_immutable`](_immutable.md) when the derived value must never change after the initial write. A property appearing in both `_computed` and `_immutable` is computed once at creation time and locked permanently thereafter.

**`_examples`**

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

---

**`_code`**

```json
{
  "_gid": "_computed",
  "_lid": "computed",
  "_nid": "",
  "_aid": ["computed"]
}
```

**`_data`**

```json
{
  "_set": {
    "_term_key_descriptor": {}
  }
}
```
