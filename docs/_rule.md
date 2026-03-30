# `_rule`

**`_title`**

Structure Rules Section

**`_definition`**

The section of a term that defines the structural constraints governing an object: which properties are required, recommended, forbidden, or system-managed. Its presence in a term — even when empty — signals that the term is an object definition. An empty `_rule` section means all structural constraints are expressed in the graph layer.

**`_description`**

The `_rule` section is present in object definition terms. Its mere presence — even when empty — signals that the term defines an object structure. This is analogous to how an empty [`_scalar`](_scalar.md) section signals a scalar value of any type.

When non-empty, `_rule` carries unconditional structural constraints:

- [`_required`](_required.md): which properties must always be present, expressed using descriptor selection structures.
- [`_recommended`](_recommended.md): the whitelist of permitted optional properties — advisory in open schemas, enforced in closed schemas.
- [`_closed`](_closed.md): when `true`, switches `_recommended` from advisory to a strict whitelist.
- [`_banned`](_banned.md): properties that must never be present; unconditional and absolute.
- [`_computed`](_computed.md): properties the system fills in automatically when absent.
- [`_locked`](_locked.md): properties the system manages exclusively; users cannot touch them.
- [`_immutable`](_immutable.md): properties that, once set, cannot be modified or deleted.
- [`_default-value`](_default-value.md): default values applied at insertion time before `_required` is checked.

**Empty `_rule`**: when `_rule` is present but empty (`"_rule": {}`), the term is an object definition whose structural constraints are entirely expressed in the graph layer via [`_predicate_value-of`](_predicate_value-of.md) edges. This is the appropriate pattern for highly dynamic schemas — such as [`_scalar`](_scalar.md) — where the permitted and required properties depend entirely on the values of other properties and cannot be expressed as unconditional rules.

Conditional constraints — rules that activate only when a specific property holds a specific value — are always expressed in the graph layer, never in this section. `_rule` handles only unconditional constraints.

For a comprehensive explanation of how the rule system works — including selection structures, conditional rule strategies, and the self-sufficient rule graph design — see [Structure Definition Rules](../docs/Structure Definition Rules.md).

**`_examples`**

A closed schema where [`_lid`](_lid.md) is required and immutable, [`_gid`](_gid.md) is computed and immutable, and the whitelist is limited to three properties:

```json
{
	"_rule": {
		"_closed": true,
		"_required": [
			{
				"_selection_rules": [{"_selection_type": "_type_selection_mandatory"}],
				"_selection_descriptors": ["_lid"]
			}
		],
		"_recommended": ["_nid", "_aid"],
		"_computed": ["_gid"],
		"_immutable": ["_lid", "_gid"]
	}
}
```

An object definition with no unconditional constraints — all rules expressed in the graph:

```json
{"_rule": {}}
```

---

**`_code`**

```json
{
  "_aid" : [
    "rule"
  ],
  "_gid" : "_rule",
  "_lid" : "rule",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_object_types" : [
      "_rule"
    ],
    "_scalar_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_recommended" : [
    "_required",
    "_recommended",
    "_banned",
    "_computed",
    "_locked",
    "_immutable",
    "_default-value"
  ],
  "_required" : [
    {
      "_selection_descriptors" : [
        "_closed"
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
