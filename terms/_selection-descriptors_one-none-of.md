# `_selection-descriptors_one-none-of`

**`_title`**

One or None of Each (Descriptors)

**`_definition`**

A descriptor selection rule expressed as an array of sets. From each set in the array, zero or one descriptor may be present. Each set is evaluated independently — the rule is applied separately to every group.

**`_description`**

`_selection-descriptors_one-none-of` is a property of the [`_required`](_required.md) object. Unlike the other four selection structures — which each evaluate a single flat set — this one takes an **array of sets** and applies a zero-or-one constraint independently to each group.

This is the natural way to express mutual exclusions across multiple independent pairs or groups simultaneously. For example, a range object must have at most one lower bound and at most one upper bound, where each pair is evaluated independently:

```json
{
	"_rule": {
		"_required": {
			"_selection-descriptors_one-none-of": [
				["_min-range-inclusive", "_min-range-exclusive"],
				["_max-range-inclusive", "_max-range-exclusive"]
			],
			"_selection-descriptors_any": [
				"_min-range-inclusive", "_min-range-exclusive",
				"_max-range-inclusive", "_max-range-exclusive"
			]
		}
	}
}
```

From the first group, at most one of `_min-range-inclusive` / `_min-range-exclusive` may be present. From the second group, at most one of `_max-range-inclusive` / `_max-range-exclusive` may be present. Combined with `_selection-descriptors_any`, at least one bound overall is required. The two groups are evaluated independently — a valid object could have only a lower bound, only an upper bound, or one of each.

---

**`_code`**

```json
{
  "_aid" : [
    "one-none-of"
  ],
  "_gid" : "_selection-descriptors_one-none-of",
  "_lid" : "one-none-of",
  "_nid" : "_selection-descriptors"
}
```

**`_data`**

```json
{
  "_array" : {
    "_set" : {
      "_set_scalar" : {
        "_kind_key" : [
          "_kind_key_term_descriptor"
        ],
        "_set_type" : "_type_key"
      }
    }
  }
}
```
