# `_rule_selector`

**`_title`**

Selector for object rules

**`_definition`**

An object that pairs a list of cardinality rules with a set of descriptor references. Used as an element of `_required` to specify which properties must be present and under what conditions.

**`_description`**

A `_rule_selector` is a single entry in the [`_required`](_required.md) array. It binds [`_selection_rules`](_selection_rules.md) — the cardinality constraints — with [`_selection_descriptors`](_selection_descriptors.md) — the set of descriptor keys those constraints apply to.

Evaluation proceeds bottom-up:

- For **flat** `_selection_descriptors` (a single array of keys), the one rule in `_selection_rules` applies directly to the listed keys.
- For **nested** `_selection_descriptors` (an array of arrays), each inner array is evaluated against the rule at the corresponding position in `_selection_rules`, and the outermost rule governs how many inner arrays must contribute.

When multiple `_rule_selector` objects appear in `_required`, all of their conditions must be satisfied simultaneously — AND logic.

**`_examples`**

A selector requiring exactly one shape property from a list:

```json
{
	"_selection_rules": [
		{"_selection_type": "_type_selection_optional", "_elements": {"_max-items": 1}}
	],
	"_selection_descriptors": ["_scalar", "_array", "_set", "_tuple", "_dict", "_typedef"]
}
```

A selector requiring `_closed` to be present:

```json
{
	"_selection_rules": [
		{"_selection_type": "_type_selection_mandatory"}
	],
	"_selection_descriptors": ["_closed"]
}
```

---

**`_code`**

```json
{
	"_nid": "_rule",
	"_lid": "selector",
	"_gid": "_rule_selector",
	"_aid": ["selector"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_object",
		"_object_types": ["_rule_selector"]
	}
}
```

**`_rule`**

```json
{
	"_closed": true,
	"_required": [
		{
			"_selection_rules": [
				{"_selection_type": "_type_selection_mandatory"}
			],
			"_selection_descriptors": ["_selection_rules", "_selection_descriptors"]
		}
	]
}
```

**`_domn`**

```json
{}
```
