# `_rule`

**`_title`**

Structure Rules Section

**`_definition`**

The section of a term that defines the structural constraints governing an object: which properties are required, recommended, forbidden, or system-managed. Its presence in a term signals that the term is an object definition. An empty `_rule` section is valid and means that all structural constraints are expressed in the graph layer rather than here.

**`_description`**

The `_rule` section is present in object definition terms. Its mere presence — even when empty — signals that the term defines an object structure. This is analogous to how an empty [`_scalar`](_scalar.md) section signals a scalar value of any type.

When non-empty, `_rule` carries unconditional structural constraints:

- [`_required`](_required.md): which properties must always be present, expressed using descriptor selection structures.
- [`_recommended`](_recommended.md): the whitelist of permitted properties — advisory in open schemas, enforced in closed schemas.
- [`_closed`](_closed.md): when true, switches `_recommended` from advisory to a strict whitelist.
- [`_banned`](_banned.md): properties that must never be present; unconditional and absolute.
- [`_computed`](_computed.md): properties the system fills in automatically when absent.
- [`_locked`](_locked.md): properties the system manages exclusively; users cannot touch them.
- [`_immutable`](_immutable.md): properties that, once set, cannot be modified or deleted.
- [`_default-value`](_default-value.md): default values applied at insertion time before `_required` is checked.

**Empty `_rule`**: when `_rule` is present but empty (`_rule: {}`), it means the term is an object definition whose structural constraints are entirely expressed in the graph layer via `_predicate_value-of` edges. This is the appropriate pattern for highly dynamic schemas — such as [`_scalar`](_scalar.md) — where the permitted and required properties depend entirely on the values of other properties and cannot be expressed as unconditional rules.

Conditional constraints — rules that activate only when a specific property holds a specific value — are always expressed in the graph layer, never in this section. The `_rule` section handles only constraints that apply unconditionally, regardless of property values.

```json
{
	"_rule": {
		"_required": {
			"_selection-descriptors_all": ["_lid"]
		},
		"_recommended": ["_nid", "_lid", "_gid", "_aid"],
		"_closed": true,
		"_computed": ["_gid"],
		"_immutable": ["_lid", "_gid"]
	}
}
```

An object definition where `_lid` is always required and immutable, `_gid` is computed and immutable, the schema is closed to the four listed properties, and all constraints are unconditional.

```json
{
	"_rule": {}
}
```

An object definition with no unconditional constraints — all rules are in the graph.

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
    "_kind_object" : [
      "_rule"
    ],
    "_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_recommended" : [
    "_required",
    "_recommended",
    "_closed",
    "_banned",
    "_computed",
    "_locked",
    "_immutable",
    "_default-value"
  ]
}
```
