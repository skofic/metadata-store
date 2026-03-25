# `_selection-descriptors_all-of-one`

**`_title`**

All of One

**`_definition`**

A selection structure for the [`_required`](_required.md) object. Takes an array of groups (each group is a set of descriptor [`_gid`](_gid.md)s); exactly one group must be selected in its entirety — all its members must be present in the object, and no member from any other group may be present.

**`_description`**

[`_selection-descriptors_all-of-one`](_selection-descriptors_all-of-one.md) is a property of the [`_required`](_required.md) object. It takes an **array of groups** and enforces an exclusive variant rule:

1. **Exactly one group** must be chosen — all descriptors in the chosen group must be present in the object.
2. **All other groups** are excluded — no descriptor from any non-chosen group may be present.

This selector is the natural way to express mutually exclusive structural modes — for example, a [`_dict`](_dict.md) that can be specified either inline (with both [`_dict_key`](_dict_key.md) and [`_dict_value`](_dict_value.md)) or by reference (with [`_kind_dict`](_kind_dict.md) alone):

```json
{
	"_rule": {
		"_required": {
			"_selection-descriptors_all-of-one": [
				["_kind_dict"],
				["_dict_key", "_dict_value"]
			]
		}
	}
}
```

Exactly one of the two groups must be satisfied: either [`_kind_dict`](_kind_dict.md) is present (and [`_dict_key`](_dict_key.md) / [`_dict_value`](_dict_value.md) are absent), or both [`_dict_key`](_dict_key.md) and [`_dict_value`](_dict_value.md) are present (and [`_kind_dict`](_kind_dict.md) is absent). Mixed forms — such as [`_kind_dict`](_kind_dict.md) alongside [`_dict_key`](_dict_key.md) — are invalid.

Compare with [`_selection-descriptors_one-of-all`](_selection-descriptors_one-of-all.md), which selects one *element* from each group rather than one *group* in its entirety.

---

**`_code`**

```json
{
  "_aid" : [
    "all-of-one"
  ],
  "_gid" : "_selection-descriptors_all-of-one",
  "_lid" : "all-of-one",
  "_nid" : "_selection-descriptors"
}
```

**`_data`**

```json
{
  "_array" : {
    "_set" : {
      "_scalar_set" : {
        "_type_scalar_set" : "_type_key_term_descriptor"
      }
    }
  }
}
```
