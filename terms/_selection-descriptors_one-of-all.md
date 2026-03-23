# `_selection-descriptors_one-of-all`

**`_title`**

One of Each, All Results (Descriptors)

**`_definition`**

A descriptor selection rule expressed as an array of sets. From each set, exactly one descriptor is the valid form for that group — if any element of the group is present, exactly one must be (mutual exclusion within the group). All groups must contribute an element to the object. Each set in the array must be non-empty.

**`_description`**

[`_selection-descriptors_one-of-all`](_selection-descriptors_one-of-all.md) is a property of the [`_required`](_required.md) object. It takes an **array of sets** and applies a two-phase selection rule:

1. **Within each set**: exactly one descriptor is the valid form for that group. If any element from the set is present in the object, exactly one must be present — the elements within a set are mutually exclusive.
2. **Across sets**: all sets must contribute an element — every group must have exactly one of its elements present in the object.

This selector expresses structures where every group of alternatives is mandatory, but within each group only one form is allowed. For example, a closed range that requires both a lower and an upper bound, each in exactly one form:

```json
{
	"_rule": {
		"_required": {
			"_selection-descriptors_one-of-all": [
				["_min-range-inclusive", "_min-range-exclusive"],
				["_max-range-inclusive", "_max-range-exclusive"]
			]
		}
	}
}
```

Exactly one lower bound and exactly one upper bound must be present. A range with only a lower bound or only an upper bound would be invalid under this rule.

Compare with [`_selection-descriptors_one-of-any`](_selection-descriptors_one-of-any.md), which requires only at least one group to contribute — groups may be absent.

---

**`_code`**

```json
{
  "_aid" : [
    "one-of-all"
  ],
  "_gid" : "_selection-descriptors_one-of-all",
  "_lid" : "one-of-all",
  "_nid" : "_selection-descriptors"
}
```

**`_data`**

```json
{
  "_array" : {
    "_set" : {
      "_set_scalar" : {
        "_type_scalar_set" : "_type_key_term_descriptor"
      }
    }
  }
}
```
