# `_recommended`

**`_title`**

Recommended properties

**`_definition`**

A set of descriptor global identifiers listing properties that are allowed but not mandatory in the enclosing schema. In a closed schema, `_recommended` together with `_required` defines the complete whitelist of permitted properties. In an open schema, `_recommended` is advisory: listed properties are expected but the object may contain any dictionary property.

**`_description`**

`_recommended` is a constraint property within [`_open`](_open.md) or [`_closed`](_closed.md). Its value is a set of descriptor global identifiers — the terms whose values are optional in the object.

The role of `_recommended` differs by schema type:

- In a **closed schema**: `_recommended` and [`_required`](_required.md) together form the complete whitelist of permitted properties. Any property not present in either set is forbidden. A property must appear in exactly one of them — listing the same property in both is a configuration error.
- In an **open schema**: `_recommended` is advisory. It lists properties that are expected or encouraged, but the object may also contain any other property defined in the data dictionary, regardless of whether it appears in `_recommended`.

**`_examples`**

**In a closed schema** — `_lid` and `_gid` are required; `_nid`, `_aid`, `_pid`, `_name` are optional; no other property is permitted:

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
				"_recommended": ["_nid", "_aid", "_pid", "_name"]
			}
		}
	}
}
```

Valid: `{"_lid": "x", "_gid": "_x", "_name": "X"}`.
Invalid: `{"_lid": "x", "_gid": "_x", "_title": {...}}` — `_title` is not in the permitted set.

---

**In an open schema** — `_title` is required; `_definition`, `_description`, `_examples` are recommended; any other dictionary property is also accepted:

```json
{
	"_data": {
		"_object": {
			"_open": {
				"_required": [
					{
						"_selectors": [{"_all": {}}],
						"_selection": ["_title"]
					}
				],
				"_recommended": ["_definition", "_description", "_examples"]
			}
		}
	}
}
```

Valid: `{"_title": {...}}`, `{"_title": {...}, "_notes": {...}}` — `_notes` is not in `_recommended` but is still permitted.

---

**`_code`**

```json
{
  "_gid": "_recommended",
  "_lid": "recommended",
  "_nid": "",
  "_aid": ["recommended"]
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
