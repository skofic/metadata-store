# `_recommended`

**`_title`**

Recommended Properties

**`_definition`**

A flat set of descriptor [`_gid`](_gid.md)s listing the properties that are permitted (and expected) in the object. When [`_closed`](_closed.md) is false it is advisory — a documentation aid and form generation hint. When [`_closed`](_closed.md) is true it is enforced as a strict whitelist: any property not listed here or in [`_required`](_required.md) is rejected.

**`_description`**

[`_recommended`](_recommended.md) is a property of the [`_rule`](_rule.md) section. Its value is a flat set of descriptor [`_gid`](_gid.md)s — not a cardinality structure like [`_required`](_required.md), but a plain membership list.

**Open schema** (`_closed: false`): [`_recommended`](_recommended.md) documents which properties are expected for this object type. It is used by form generators and display tools to know which fields to show, but does not reject unlisted properties.

**Closed schema** (`_closed: true`): [`_recommended`](_recommended.md) is enforced as a strict whitelist. Only properties in [`_required`](_required.md) or [`_recommended`](_recommended.md) may be present; any other property causes a validation error. This mode is appropriate for well-controlled object types where unexpected properties indicate a data quality problem.

Conditional rules expressed in the graph layer via [`_predicate_value-of`](_predicate_value-of.md) edges modify [`_recommended`](_recommended.md) for specific value contexts. A **closed** conditional rule (`_closed: true`) **replaces** the base [`_recommended`](_recommended.md) entirely — the conditional's list becomes the complete optional-property whitelist for that value context, which may be narrower than the base. An **open** conditional rule (`_closed: false`) accumulates — its list is unioned with the base. Neither can lift a [`_banned`](_banned.md) constraint.

[`_required`](_required.md) and [`_recommended`](_recommended.md) are **disjoint**: a property must appear in exactly one or neither — never both. A property should not appear in both [`_recommended`](_recommended.md) and [`_banned`](_banned.md).

```json
{
	"_rule": {
		"_recommended": [
			"_title", "_definition", "_description",
			"_examples", "_notes", "_url", "_citation"
		]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "recommended"
  ],
  "_gid" : "_recommended",
  "_lid" : "recommended",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_set" : {
    "_scalar_set" : {
      "_type_scalar_set" : "_type_key_term_descriptor"
    }
  }
}
```
