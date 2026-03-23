# `_closed`

**`_title`**

Closed Schema

**`_definition`**

A required boolean flag that switches the schema between open and closed mode. When true, only properties in [`_required`](_required.md) or [`_recommended`](_recommended.md) are permitted; any other property is rejected. When false, [`_recommended`](_recommended.md) is advisory. Must be present in every rule object — both base [`_rule`](_rule.md) sections and [`_path_data`](_path_data.md) conditional rule objects.

**`_description`**

[`_closed`](_closed.md) is a **required** property of every rule object — both base [`_rule`](_rule.md) sections and conditional rule objects stored in [`_path_data`](_path_data.md). Its explicit presence eliminates ambiguity about a schema's closure state without having to trace the rule hierarchy to a root.

[`_required`](_required.md) and [`_recommended`](_recommended.md) are **disjoint tiers** of the allowed property set: required means allowed and mandatory; recommended means allowed and optional. A property must appear in exactly one or neither — never both. In a closed schema the allowed set is their union.

When [`_closed`](_closed.md) is **false** (open schema): optional properties outside [`_recommended`](_recommended.md) are accepted without raising an error. Appropriate for schemas that are still evolving or where extensibility is desired.

When [`_closed`](_closed.md) is **true** (closed schema): only properties in [`_required`](_required.md) or [`_recommended`](_recommended.md) may be present. Any other property causes a validation error. Appropriate for mature, well-controlled schemas where unexpected properties indicate a data quality issue.

For **conditional rule objects** in [`_path_data`](_path_data.md) (attached to [`_predicate_value-of`](_predicate_value-of.md) edges):

- A **closed** conditional rule (`_closed: true`) **replaces** the base [`_recommended`](_recommended.md) set entirely — its [`_recommended`](_recommended.md) becomes the complete optional-property whitelist for that value context.
- An **open** conditional rule (`_closed: false`) **accumulates** — its [`_recommended`](_recommended.md) is unioned with the base, and any [`_banned`](_banned.md) entries conditionally remove properties from the effective permitted set.

[`_required`](_required.md) always accumulates (AND logic) regardless of closure mode. [`_banned`](_banned.md) is unconditional and absolute in all modes.

```json
{
	"_rule": {
		"_closed": true,
		"_required": {
			"_selection-descriptors_all": ["_lid"]
		},
		"_recommended": ["_nid", "_gid", "_aid"]
	}
}
```

[`_lid`](_lid.md) is required and always permitted. [`_nid`](_nid.md), [`_gid`](_gid.md), and [`_aid`](_aid.md) are optional and permitted. Any other property is a validation error.

---

**`_code`**

```json
{
  "_aid" : [
    "closed"
  ],
  "_gid" : "_closed",
  "_lid" : "closed",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_type_scalar" : "_type_boolean"
  }
}
```
