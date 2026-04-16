# Closed schema
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_closed</code></p>

> A schema constraint section within `_object` that restricts the object to only those properties explicitly listed within it. The full set of permitted properties is the union of `_required` and `_recommended`. If the section is empty, the object must be empty.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `closed` |
| [Global identifier](_gid.md) | `_closed` |
| [Official identifiers](_aid.md) | `closed` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Closed schema

**[Definition](_definition.md):** A schema constraint section within `_object` that restricts the object to only those properties explicitly listed within it. The full set of permitted properties is the union of `_required` and `_recommended`. If the section is empty, the object must be empty.

**[Description](_description.md)**

`_closed` is the schema section for the closed form of [`_object`](_object.md). It may contain any combination of [`_required`](_required.md), [`_recommended`](_recommended.md), [`_banned`](_banned.md), [`_computed`](_computed.md), [`_locked`](_locked.md), [`_immutable`](_immutable.md), and [`_default-value`](_default-value.md). Unlike an open schema, a closed schema defines a strict whitelist: only properties that appear in `_required` or `_recommended` are permitted. Any other property makes the object invalid.

An empty `_closed` section (`"_closed": {}`) means the object must be completely empty — no properties at all are permitted.

Because `_required` and `_recommended` together form the whitelist, a property must appear in exactly one of them. Listing a property in both is a configuration error. `_banned` is redundant in a closed schema (unlisted properties are already forbidden) but may be used explicitly to prevent conditional rules from re-admitting a property.

**[Examples](_examples.md)**

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

**Filled `_closed` section** — [`_lid`](_lid.md) and [`_gid`](_gid.md) are required; [`_nid`](_nid.md), [`_aid`](_aid.md), [`_pid`](_pid.md) are optional; no other properties are allowed:

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
Invalid: `{"_lid": "code", "_gid": "_code", "_title": {...}}` — [`_title`](_title.md) is not in the permitted set.

<details>
<summary>JSON</summary>

```json
{
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_examples" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Closed schema"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

**[Recommended properties](_recommended.md):** [Required properties](_required.md) · [Recommended properties](_recommended.md) · [Banned properties](_banned.md) · [Computed properties](_computed.md) · [Locked properties](_locked.md) · [Immutable properties](_immutable.md) · [Default values](_default-value.md)

<details>
<summary>JSON</summary>

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

</details>
