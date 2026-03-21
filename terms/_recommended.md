# `_recommended`

**`_title`**

Recommended Properties

**`_definition`**

A flat set of descriptor `_gid`s listing the properties that are expected or permitted in the object. In open schema mode (the default) it is advisory — a documentation aid and form generation hint. In closed schema mode (when `_closed` is true) it is enforced as a strict whitelist: any property not listed here is rejected.

**`_description`**

`_recommended` is a property of the [`_rule`](_rule.md) section. Its value is a flat set of descriptor `_gid`s — not a cardinality structure like [`_required`](_required.md), but a plain membership list.

**Open schema** (default, `_closed` absent or false): `_recommended` documents which properties are expected for this object type. It is used by form generators and display tools to know which fields to show, but does not reject unlisted properties.

**Closed schema** (`_closed` is true): `_recommended` is enforced as a strict whitelist. Any property not in the list is rejected. This mode is appropriate for well-controlled object types where unexpected properties indicate a data quality problem.

Conditional rules expressed in the graph layer via `_predicate_value-of` edges may supplement `_recommended` for specific value contexts — they can add properties to the effective permitted set but cannot remove listed properties or override [`_banned`](_banned.md).

A property should not appear in both `_recommended` and `_banned`.

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
    "_set_scalar" : {
      "_kind_key" : [
        "_kind_key_term_descriptor"
      ],
      "_set_type" : "_type_key"
    }
  }
}
```
