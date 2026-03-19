# `_closed`

**`_title`**

Closed Schema

**`_definition`**

A boolean flag that switches the schema from open to closed mode. When true, only the properties listed in `_recommended` are permitted in the object; any unlisted property is rejected. When false or absent, `_recommended` is advisory and unlisted properties are accepted.

**`_description`**

`_closed` is an optional property of the [`_rule`](_rule.md) section. It controls whether [`_recommended`](_recommended.md) is treated as a strict whitelist or as an advisory list.

When `_closed` is **absent or false** (open schema): properties not listed in `_recommended` are accepted without raising an error. This is the default and is appropriate for schemas that are still evolving or where extensibility is desired.

When `_closed` is **true** (closed schema): the object must contain only properties listed in `_recommended` (plus any conditionally added by the graph layer). Any other property causes a validation error. This is appropriate for mature, well-controlled schemas where unexpected properties indicate a data quality issue.

`_closed` has no effect when `_recommended` is absent — without a whitelist there is nothing to enforce.

[`_banned`](_banned.md) properties are unconditional and apply regardless of whether the schema is open or closed.

```json
{
	"_rule": {
		"_recommended": ["_lid", "_nid", "_gid"],
		"_closed": true
	}
}
```

Only `_lid`, `_nid`, and `_gid` are permitted; any other property is a validation error.

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
    "_type" : "_type_boolean"
  }
}
```
