# `_locked`

**`_title`**

Locked properties

**`_definition`**

A set of descriptor global identifiers listing properties that are fully managed by the system. Users cannot set, modify, or delete locked properties at any point in the object's lifecycle.

**`_description`**

`_locked` is a constraint property within [`_open`](_open.md) or [`_closed`](_closed.md). Properties listed here are exclusively under system control throughout the entire lifecycle of the object — neither the initial value nor any subsequent update may come from user input.

`_locked` differs from [`_immutable`](_immutable.md) in that immutable properties may be set once (by the user or by the system via [`_computed`](_computed.md)) and then fixed. Locked properties can never be set by the user at all — only the system writes and updates them. A locked property may change its value over the object's lifetime (the system updates it), but a user attempting to write to it is always rejected.

**`_examples`**

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

`_id` (the ArangoDB document handle, `<collection>/<key>`) and `_rev` (the document revision token) are generated and updated by the database engine. A user submitting a document that includes either property will have those values silently overwritten or the write will be rejected, depending on the application policy.

---

**`_code`**

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

**`_data`**

```json
{
  "_set" : {
    "_term_key_descriptor" : {

    }
  }
}
```
