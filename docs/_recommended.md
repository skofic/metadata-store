# Recommended properties
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_recommended</code></p>

> A set of descriptor global identifiers listing properties that are allowed but not mandatory in the enclosing schema. In a closed schema, `_recommended` together with `_required` defines the complete whitelist of permitted properties. In an open schema, `_recommended` is advisory: listed properties are expected but the object may contain any dictionary property.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `recommended` |
| [Global identifier](_gid.md) | `_recommended` |
| [Official identifiers](_aid.md) | `recommended` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "recommended"
  ],
  "_gid" : "_recommended",
  "_lid" : "recommended",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Recommended properties

**[Definition](_definition.md):** A set of descriptor global identifiers listing properties that are allowed but not mandatory in the enclosing schema. In a closed schema, `_recommended` together with `_required` defines the complete whitelist of permitted properties. In an open schema, `_recommended` is advisory: listed properties are expected but the object may contain any dictionary property.

**[Description](_description.md)**

`_recommended` is a constraint property within [`_open`](_open.md) or [`_closed`](_closed.md). Its value is a set of descriptor global identifiers — the terms whose values are optional in the object.

The role of `_recommended` differs by schema type:

- In a **closed schema**: `_recommended` and [`_required`](_required.md) together form the complete whitelist of permitted properties. Any property not present in either set is forbidden. A property must appear in exactly one of them — listing the same property in both is a configuration error.
- In an **open schema**: `_recommended` is advisory. It lists properties that are expected or encouraged, but the object may also contain any other property defined in the data dictionary, regardless of whether it appears in `_recommended`.

**[Examples](_examples.md)**

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
    "ISO_639_3_eng" : "Recommended properties"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Set](_set.md) — [Descriptor term document key](_term_key_descriptor.md)

<details>
<summary>JSON</summary>

```json
{
  "_set" : {
    "_term_key_descriptor" : {

    }
  }
}
```

</details>
