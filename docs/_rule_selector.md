# `_rule_selector`

**`_title`**

Selector for object rules

**`_definition`**

An object that pairs a list of cardinality rules with a set of descriptor references. Used as an element of `_required` to specify which properties must be present and under what conditions.

**`_description`**

A `_rule_selector` is a single entry in the [`_required`](_required.md) array. It binds [`_selection_rules`](_selection_rules.md) — the cardinality constraints — with [`_selection_descriptors`](_selection_descriptors.md) — the set of descriptor keys those constraints apply to.

**Evaluation order — deepest level first:**

1. `_selection_rules[0]` is applied to the **deepest (last) level** of `_selection_descriptors`. For a flat array this is the array itself; for a nested array this is each innermost sub-array. The rule produces a selection of descriptor keys from that level.
2. `_selection_rules[1]`, if present, is applied to the results of step 1 — governing how many of the step-1 groups must have contributed a non-empty selection.
3. This continues through successive rules, each operating on the output of the previous step.
4. **Early termination**: if any step produces an empty selection, evaluation stops immediately and the selector fails — later rules are not evaluated.

For a **flat** `_selection_descriptors` (a single array of keys), `_selection_rules` contains exactly one rule, which applies directly to all listed keys.

For a **nested** `_selection_descriptors` (an array of arrays), `_selection_rules` must contain at least two rules: the first governs which elements are chosen from each innermost sub-array; the second governs how many of those sub-arrays must contribute a result. The number of rules must equal the depth of nesting.

When multiple `_rule_selector` objects appear in `_required`, all of their conditions must be satisfied simultaneously — AND logic.

**`_examples`**

A selector permitting at most one shape property from a list (zero is also valid — an empty [`_data`](_data.md) section means any type):

```json
{
	"_selection_rules": [
		{
			"_selection_type": "_type_selection_optional",
			"_elements": {"_max-items": 1}
		}
	],
	"_selection_descriptors": ["_scalar", "_array", "_set", "_tuple", "_dict", "_typedef"]
}
```

A selector requiring [`_closed`](_closed.md) to be present:

```json
{
	"_selection_rules": [{"_selection_type": "_type_selection_mandatory"}],
	"_selection_descriptors": ["_closed"]
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "selector"
  ],
  "_gid" : "_rule_selector",
  "_lid" : "selector",
  "_nid" : "_rule"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_object_types" : [
      "_rule_selector"
    ],
    "_scalar_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_required" : [
    {
      "_selection_descriptors" : [
        "_selection_rules",
        "_selection_descriptors"
      ],
      "_selection_rules" : [
        {
          "_selection_type" : "_type_selection_mandatory"
        }
      ]
    }
  ]
}
```
