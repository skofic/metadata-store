# `_selection-descriptors_one-of-any`

**`_title`**

One of Each, Any Result (Descriptors)

**`_definition`**

A descriptor selection rule expressed as an array of sets. From each set, exactly one descriptor is the valid form for that group — if any element of the group is present, exactly one must be (mutual exclusion within the group). At least one group must contribute an element to the object. Each set in the array must be non-empty.

**`_description`**

[`_selection-descriptors_one-of-any`](_selection-descriptors_one-of-any.md) is a property of the [`_required`](_required.md) object. It takes an **array of sets** and applies a two-phase selection rule:

1. **Within each set**: exactly one descriptor is the valid form for that group. If any element from the set is present in the object, exactly one must be present — the elements within a set are mutually exclusive.
2. **Across sets**: at least one set must contribute an element — the object must not be empty of all listed descriptors.

This selector is the natural way to express structures such as range objects, where each bound type has exactly one valid form (inclusive or exclusive) and at least one bound must be present:

```json
{
	"_rule": {
		"_required": {
			"_selection-descriptors_one-of-any": [
				["_min-range-inclusive", "_min-range-exclusive"],
				["_max-range-inclusive", "_max-range-exclusive"]
			]
		}
	}
}
```

From the first set, at most one of [`_min-range-inclusive`](_min-range-inclusive.md) / [`_min-range-exclusive`](_min-range-exclusive.md) may be present (the two forms of the lower bound are mutually exclusive). From the second set, at most one of [`_max-range-inclusive`](_max-range-inclusive.md) / [`_max-range-exclusive`](_max-range-exclusive.md) may be present. At least one bound overall must be present. Valid objects include: only a lower bound, only an upper bound, or one of each.

Compare with [`_selection-descriptors_one-of-all`](_selection-descriptors_one-of-all.md), which requires every set to contribute — meaning all groups must have exactly one element present.

---

**`_code`**

```json
{
  "_aid" : [
    "one-of-any"
  ],
  "_gid" : "_selection-descriptors_one-of-any",
  "_lid" : "one-of-any",
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
