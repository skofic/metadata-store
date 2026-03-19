# `_selection-descriptors_one-none`

**`_title`**

One or None of (Descriptors)

**`_definition`**

A descriptor selection rule requiring that at most one descriptor from the set is present in the object. Zero descriptors from the set may also be present — none is allowed.

**`_description`**

`_selection-descriptors_one-none` is a property of the [`_required`](_required.md) object. Its value is a set of descriptor `_gid`s. For the object to be valid, zero or one of the listed descriptors may be present; having two or more from the set present is an error.

This is a mutual exclusion without mandatory selection: at most one of the group is chosen.

```json
{
	"_rule": {
		"_required": {
			"_selection-descriptors_one-none": [
				"_kind_string", "_regexp"
			]
		}
	}
}
```

`_kind_string` and `_regexp` are mutually exclusive — at most one may be present. Neither is required.

---

**`_code`**

```json
{
  "_aid" : [
    "one-none"
  ],
  "_gid" : "_selection-descriptors_one-none",
  "_lid" : "one-none",
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
