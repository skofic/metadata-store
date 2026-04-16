# Object
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_object</code></p>

> A data shape for structured objects. Three forms are available: an empty `_object` imposes no constraint on the object's contents; an `_object` containing `_open` applies an open schema that enforces the listed constraints while accepting any additional dictionary property; an `_object` containing `_closed` restricts the object to only the properties explicitly listed within it. At most one of `_open` or `_closed` may be present.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `object` |
| [Global identifier](_gid.md) | `_object` |
| [Official identifiers](_aid.md) | `object` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "object"
  ],
  "_gid" : "_object",
  "_lid" : "object",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Object

**[Definition](_definition.md):** A data shape for structured objects. Three forms are available: an empty `_object` imposes no constraint on the object's contents; an `_object` containing `_open` applies an open schema that enforces the listed constraints while accepting any additional dictionary property; an `_object` containing `_closed` restricts the object to only the properties explicitly listed within it. At most one of `_open` or `_closed` may be present.

**[Description](_description.md)**

`_object` describes the shape of a structured object value. It is one of the top-level shape properties available in a [`_data`](_data.md) section. Three forms are available depending on what `_object` contains:

- **`{}`** — unrestricted object. The value may have any properties, including properties not defined in the dictionary, or none at all.
- **`{"_open": {...}}`** — [`_open`](_open.md) schema. The constraints listed in `_open` apply, but the object may also contain any additional property defined in the data dictionary.
- **`{"_closed": {...}}`** — [`_closed`](_closed.md) schema. Only the properties listed within `_closed` are permitted; any other property makes the object invalid.

At most one of `_open` or `_closed` may be present. Having both simultaneously is invalid.

**[Examples](_examples.md)**

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

**Open schema** — [`_title`](_title.md) is required; any other dictionary property may also appear:

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

**Closed schema** — [`_lid`](_lid.md) and [`_gid`](_gid.md) are required; only the listed properties are permitted:

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
Invalid: `{"_lid": "code", "_gid": "_code", "_info": {...}}` — [`_info`](_info.md) is not in the permitted set.

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
    "ISO_639_3_eng" : "Object"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

**[Required properties](_required.md)**

[Optional selection](_any.md) ([Maximum element count](_max-items.md): 1)
[Open schema](_open.md) · [Closed schema](_closed.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {
      "_required" : [
        {
          "_selection" : [
            "_open",
            "_closed"
          ],
          "_selectors" : [
            {
              "_any" : {
                "_max-items" : 1
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
