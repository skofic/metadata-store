# `_selection-descriptors_one`

**`_title`**

Exactly One of (Descriptors)

**`_definition`**

A descriptor selection rule requiring that exactly one descriptor from the set is present in the object. All other descriptors in the set must be absent.

**`_description`**

[`_selection-descriptors_one`](_selection-descriptors_one.md) is a property of the [`_required`](_required.md) object. Its value is a set of descriptor [`_gid`](_gid.md)s. For the object to be valid, exactly one of the listed descriptors must be present; the others must be absent.

This is a mutual exclusion with mandatory selection: one and only one of the group is chosen.

```json
{
	"_rule": {
		"_required": {
			"_selection-descriptors_one": [
				"_min-range-inclusive",
				"_min-range-exclusive"
			]
		}
	}
}
```

Exactly one of the two lower-bound properties must be present — not both, not neither.

---

**`_code`**

```json
{
  "_aid" : [
    "one"
  ],
  "_gid" : "_selection-descriptors_one",
  "_lid" : "one",
  "_nid" : "_selection-descriptors"
}
```

**`_data`**

```json
{
  "_set" : {
    "_set_scalar" : {
      "_type_scalar_set" : "_type_key_term_descriptor"
    }
  }
}
```
