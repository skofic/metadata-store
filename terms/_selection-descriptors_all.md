# `_selection-descriptors_all`

**`_title`**

All of (Descriptors)

**`_definition`**

A descriptor selection rule requiring that all descriptors in the set are present in the object. If any listed descriptor is absent, the object is invalid.

**`_description`**

`_selection-descriptors_all` is a property of the [`_required`](_required.md) object. Its value is a set of descriptor `_gid`s. For the object to be valid, every listed descriptor must be present.

This is the strictest selection rule — no exemptions. It is used for properties that are unconditionally mandatory.

```json
{
	"_rule": {
		"_required": {
			"_selection-descriptors_all": ["_lid"]
		}
	}
}
```

`_lid` must always be present — no exceptions.

---

**`_code`**

```json
{
  "_aid" : [
    "all"
  ],
  "_gid" : "_selection-descriptors_all",
  "_lid" : "all",
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
