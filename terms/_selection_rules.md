# `_selection_rules`

**`_title`**

Selection rules list

**`_definition`**

An ordered list of selection rule objects, each specifying a selection type and optional element count constraints. When paired with `_selection_descriptors`, each rule applies positionally: the rule at index n governs the array at depth n within `_selection_descriptors`.

**`_description`**

`_selection_rules` is a required property of [`_rule_selector`](_rule_selector.md). Its value is an array of [`_selection_rule`](_selection_rule.md) objects.

When [`_selection_descriptors`](_selection_descriptors.md) is a **flat array**, `_selection_rules` contains a single rule that applies to all listed descriptor keys.

When `_selection_descriptors` is a **nested array**, each rule in `_selection_rules` corresponds to one level of nesting. The first rule governs the leaf descriptor keys within each inner array; subsequent rules govern progressively outer groupings. The number of rules must equal the depth of nesting in `_selection_descriptors`.

**`_examples`**

Two rules for a nested range selector — mutual exclusion within each bound pair, at least one bound overall:

```json
{
	"_selection_rules": [
		{"_selection_type": "_type_selection_optional", "_elements": {"_max-items": 1}},
		{"_selection_type": "_type_selection_mandatory", "_elements": {"_min-items": 1}}
	]
}
```

---

**`_code`**

```json
{
	"_nid": "_selection",
	"_lid": "rules",
	"_gid": "_selection_rules",
	"_aid": ["rules"]
}
```

**`_data`**

```json
{
	"_array": {
		"_scalar": {
			"_scalar_type": "_type_object",
			"_object_types": ["_selection_rule"]
		}
	}
}
```

**`_domn`**

```json
{}
```
