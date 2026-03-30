# `_selection_descriptors`

**`_title`**

Selection items

**`_definition`**

A nested array of descriptor `_gid` references. A flat array pairs with a single selection rule; a nested array pairs with multiple rules, one per level of nesting. Each leaf element is the `_gid` of a descriptor.

**`_description`**

`_selection_descriptors` is a required property of [`_rule_selector`](_rule_selector.md). Its value is a nested array of descriptor [`_gid`](_gid.md) strings.

When the corresponding [`_selection_rules`](_selection_rules.md) list contains **one rule**, `_selection_descriptors` is a **flat array** of descriptor keys and the rule applies uniformly to all of them.

When `_selection_rules` contains **multiple rules**, `_selection_descriptors` is a **nested array**: each inner array contains the descriptor keys governed by the rule at the corresponding index in `_selection_rules`. This enables multi-phase selection — for example, enforcing mutual exclusion within each bound pair while requiring at least one bound overall:

```json
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
```

The first rule (mandatory, exactly 1) governs each inner array — exactly one bound form per side must be chosen if that side participates. The second rule (optional, min 1) governs the outer array — at least one side must participate.

---

**`_code`**

```json
{
  "_aid" : [
    "descriptors"
  ],
  "_gid" : "_selection_descriptors",
  "_lid" : "descriptors",
  "_nid" : "_selection"
}
```

**`_data`**

```json
{
  "_nested" : {
    "_comparable" : {
      "_comparable_type" : "_type_key_term_descriptor"
    }
  }
}
```
