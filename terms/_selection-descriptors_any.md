# `_selection-descriptors_any`

**`_title`**

Any of (Descriptors)

**`_definition`**

A descriptor selection rule requiring that at least one descriptor from the set is present in the object. Two or more from the set may also be present.

**`_description`**

`_selection-descriptors_any` is a property of the [`_required`](_required.md) object. Its value is a set of descriptor `_gid`s. For the object to be valid, at least one of the listed descriptors must be present; having several from the set present is equally valid.

This expresses an inclusive OR requirement: one or more, but at least one.

```json
{
	"_rule": {
		"_required": {
			"_selection-descriptors_any": [
				"_title", "_definition", "_description"
			]
		}
	}
}
```

At least one of `_title`, `_definition`, or `_description` must be present.

---

**`_code`**

```json
{
  "_aid" : [
    "any"
  ],
  "_gid" : "_selection-descriptors_any",
  "_lid" : "any",
  "_nid" : "_selection-descriptors"
}
```

**`_data`**

```json
{
  "_set" : {
    "_set_scalar" : {
      "_kind_key" : [
        "_kind_key_term_descriptor"
      ],
      "_set_type" : "_type_key"
    }
  }
}
```
