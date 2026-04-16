# Locked properties
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_locked</code></p>

> A set of descriptor global identifiers listing properties that are fully managed by the system. Users cannot set, modify, or delete locked properties at any point in the object's lifecycle.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `locked` |
| [Global identifier](_gid.md) | `_locked` |
| [Official identifiers](_aid.md) | `locked` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "locked"
  ],
  "_gid" : "_locked",
  "_lid" : "locked",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Locked properties

**[Definition](_definition.md):** A set of descriptor global identifiers listing properties that are fully managed by the system. Users cannot set, modify, or delete locked properties at any point in the object's lifecycle.

**[Description](_description.md)**

`_locked` is a constraint property within [`_open`](_open.md) or [`_closed`](_closed.md). Properties listed here are exclusively under system control throughout the entire lifecycle of the object — neither the initial value nor any subsequent update may come from user input.

`_locked` differs from [`_immutable`](_immutable.md) in that immutable properties may be set once (by the user or by the system via [`_computed`](_computed.md)) and then fixed. Locked properties can never be set by the user at all — only the system writes and updates them. A locked property may change its value over the object's lifetime (the system updates it), but a user attempting to write to it is always rejected.

**[Examples](_examples.md)**

A schema that locks the ArangoDB-managed document identifier and revision counter:

```json
{
	"_data": {
		"_object": {
			"_closed": {
				"_required": [
					{
						"_selectors": [{"_all": {}}],
						"_selection": ["_lid"]
					}
				],
				"_recommended": ["_definition"],
				"_locked": ["_id", "_rev"]
			}
		}
	}
}
```

[`_id`](_id.md) (the ArangoDB document handle, `<collection>/<key>`) and [`_rev`](_rev.md) (the document revision token) are generated and updated by the database engine. A user submitting a document that includes either property will have those values silently overwritten or the write will be rejected, depending on the application policy.

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
    "ISO_639_3_eng" : "Locked properties"
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
