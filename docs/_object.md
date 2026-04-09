# `_object`

**`_title`**

Object

**`_definition`**

A data shape for structured objects. Three forms are available: an empty `_object` imposes no constraint on the object's contents; an `_object` containing `_open` applies an open schema that enforces the listed constraints while accepting any additional dictionary property; an `_object` containing `_closed` restricts the object to only the properties explicitly listed within it. At most one of `_open` or `_closed` may be present.

**`_description`**

`_object` describes the shape of a structured object value. It is one of the top-level shape properties available in a [`_data`](_data.md) section. Three forms are available depending on what `_object` contains:

- **`{}`** — unrestricted object. The value may have any properties, including properties not defined in the dictionary, or none at all.
- **`{"_open": {...}}`** — [`_open`](_open.md) schema. The constraints listed in `_open` apply, but the object may also contain any additional property defined in the data dictionary.
- **`{"_closed": {...}}`** — [`_closed`](_closed.md) schema. Only the properties listed within `_closed` are permitted; any other property makes the object invalid.

At most one of `_open` or `_closed` may be present. Having both simultaneously is invalid.

**`_examples`**

**Unrestricted object** — the descriptor accepts any object structure:

```json
{
	"_data": {
		"_object": {}
	}
}
```

The object may contain any properties (dictionary-defined or not) or be entirely empty.

---

**Open schema** — `_title` is required; any other dictionary property may also appear:

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
				"_recommended": ["_definition", "_description"]
			}
		}
	}
}
```

Valid: `{"_title": {...}}`, `{"_title": {...}, "_description": {...}, "_notes": {...}}`.
Invalid: `{}` — `_title` is missing.

---

**Closed schema** — `_lid` and `_gid` are required; only the listed properties are permitted:

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
				"_immutable": ["_lid"]
			}
		}
	}
}
```

Valid: `{"_lid": "code", "_gid": "_code"}`, `{"_lid": "code", "_gid": "_code", "_nid": "", "_aid": ["code"]}`.
Invalid: `{"_lid": "code", "_gid": "_code", "_info": {...}}` — `_info` is not in the permitted set.

---

**`_code`**

```json
{
  "_gid": "_object",
  "_lid": "object",
  "_nid": "",
  "_aid": ["object"]
}
```

**`_data`**

```json
{
  "_object": {
    "_closed": {
      "_required": [
        {
          "_selectors": [
            {
              "_any": {
                "_max-items": 1
              }
            }
          ],
          "_selection": [
            "_open",
            "_closed"
          ]
        }
      ]
    }
  }
}
```
