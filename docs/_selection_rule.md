# `_selection_rule`

**`_title`**

Selection rule

**`_definition`**

An object specifying a selection type and optional element count constraints. The selection type determines whether the governed descriptor set must contribute elements (mandatory) or may contribute any subset (optional). The optional `_elements` property further constrains the allowed count.

**`_description`**

A `_selection_rule` is a single entry in the [`_selection_rules`](_selection_rules.md) array. It combines [`_selection_type`](_selection_type.md) — the cardinality mode — with the optional [`_elements`](_elements.md) property, which constrains how many items from the governed set must or may be present.

- **[`_type_selection_mandatory`](_type_selection_mandatory.md)**: all items in the governed descriptor array must contribute. Combined with `_elements`, exactly the constrained count must be present.
- **[`_type_selection_optional`](_type_selection_optional.md)**: any subset of items may contribute, including none. Combined with `_elements`, a minimum and/or maximum count is enforced — for example, `_max-items: 1` means at most one property from the set may be present.

**`_examples`**

All items must be present:

```json
{"_selection_type": "_type_selection_mandatory"}
```

At most one item may be present (the selection may also be empty):

```json
{"_selection_type": "_type_selection_optional", "_elements": {"_max-items": 1}}
```

At least one item must be present:

```json
{"_selection_type": "_type_selection_mandatory", "_elements": {"_min-items": 1}}
```

---

**`_code`**

```json
{
	"_nid": "_selection",
	"_lid": "rule",
	"_gid": "_selection_rule",
	"_aid": ["rule"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_object",
		"_object_types": ["_selection_rule"]
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
			"_selection_descriptors": ["_selection_type"]
		}
	],
	"_recommended": ["_elements"]
}
```

**`_domn`**

```json
{}
```
