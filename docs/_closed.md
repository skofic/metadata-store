# `_closed`

**`_title`**

Closed schema

**`_definition`**

A schema constraint section within `_object` that restricts the object to only those properties explicitly listed within it. The full set of permitted properties is the union of `_required` and `_recommended`. If the section is empty, the object must be empty.

**`_description`**

`_closed` is the schema section for the closed form of [`_object`](_object.md). It may contain any combination of [`_required`](_required.md), [`_recommended`](_recommended.md), [`_banned`](_banned.md), [`_computed`](_computed.md), [`_locked`](_locked.md), [`_immutable`](_immutable.md), and [`_default-value`](_default-value.md). Unlike an open schema, a closed schema defines a strict whitelist: only properties that appear in `_required` or `_recommended` are permitted. Any other property makes the object invalid.

An empty `_closed` section (`"_closed": {}`) means the object must be completely empty — no properties at all are permitted.

Because `_required` and `_recommended` together form the whitelist, a property must appear in exactly one of them. Listing a property in both is a configuration error. `_banned` is redundant in a closed schema (unlisted properties are already forbidden) but may be used explicitly to prevent conditional rules from re-admitting a property.

**`_examples`**

**Empty `_closed` section** — the object must be empty:

```json
{
	"_data": {
		"_object": {
			"_closed": {}
		}
	}
}
```

Valid: `{}`.
Invalid: `{"_title": {...}}` — no properties are permitted.

---

**Filled `_closed` section** — `_lid` and `_gid` are required; `_nid`, `_aid`, `_pid` are optional; no other properties are allowed:

```json
{
	"_data": {
		"_object": {
			"_closed": {
				"_required": [
					{
						"_selectors": [{"_all": {}}],
						"_selection": ["_lid", "_gid"]
					}
				],
				"_recommended": ["_nid", "_aid", "_pid"],
				"_computed": ["_gid", "_aid"],
				"_immutable": ["_lid"]
			}
		}
	}
}
```

Valid: `{"_lid": "code", "_gid": "_code"}`, `{"_lid": "code", "_gid": "_code", "_nid": "", "_aid": ["code"]}`.
Invalid: `{"_gid": "_code"}` — `_lid` is missing.
Invalid: `{"_lid": "code", "_gid": "_code", "_title": {...}}` — `_title` is not in the permitted set.

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
  "_object" : {
    "_closed" : {
      "_recommended" : [
        "_required",
        "_recommended",
        "_banned",
        "_computed",
        "_locked",
        "_immutable",
        "_default-value"
      ]
    }
  }
}
```
