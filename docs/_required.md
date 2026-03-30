# `_required`

**`_title`**

Required items

**`_definition`**

An array of selector objects, each combining cardinality rules with a set of descriptor references, that together define which properties must be present in the object. All selectors in the array must be satisfied simultaneously.

**`_description`**

`_required` is a property of the [`_rule`](_rule.md) section. Its value is an ordered array of [`_rule_selector`](_rule_selector.md) objects. Each selector binds a [`_selection_rules`](_selection_rules.md) list — the cardinality constraints — with a [`_selection_descriptors`](_selection_descriptors.md) value — the descriptor keys to which those constraints apply.

When multiple selectors are present, **all must be satisfied simultaneously** (AND logic). When a single selector is present, only its conditions must hold.

[`_default-value`](_default-value.md) is applied before `_required` is checked: a property with a default value will always satisfy a requirement for it, even when the user omits it.

`_required` and [`_recommended`](_recommended.md) are strictly disjoint — a property appears in exactly one or neither, never both.

**`_examples`**

Requiring [`_lid`](_lid.md) and exactly one of a lower bound / upper bound pair (with at least one bound overall):

```json
{
	"_required": [
		{
			"_selection_rules": [{"_selection_type": "_type_selection_mandatory"}],
			"_selection_descriptors": ["_lid"]
		},
		{
			"_selection_rules": [
				{
					"_selection_type": "_type_selection_mandatory",
					"_elements": {"_min-items": 1, "_max-items": 1}
				},
				{
					"_selection_type": "_type_selection_optional",
					"_elements": {"_min-items": 1}
				}
			],
			"_selection_descriptors": [
				["_range_min-inclusive", "_range_min-exclusive"],
				["_range_max-inclusive", "_range_max-exclusive"]
			]
		}
	]
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "required"
  ],
  "_gid" : "_required",
  "_lid" : "required",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_array" : {
    "_scalar" : {
      "_object_types" : [
        "_rule_selector"
      ],
      "_scalar_type" : "_type_object"
    }
  }
}
```
