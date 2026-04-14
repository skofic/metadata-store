# Open schema
<p style="color: #888; margin-top: -0.5em;"><code>_open</code></p>

> A schema constraint section within `_object` that applies listed constraints to an object while permitting any additional property defined in the data dictionary. If the section is empty, the object may contain any dictionary property without restriction.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `open` |
| [Global identifier](_gid.md) | `_open` |
| [Official identifiers](_aid.md) | `open` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "open",
  "_gid": "_open",
  "_aid": [
    "open"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Open schema

**[Definition](_definition.md):** A schema constraint section within `_object` that applies listed constraints to an object while permitting any additional property defined in the data dictionary. If the section is empty, the object may contain any dictionary property without restriction.

**[Description](_description.md)**

`_open` is the schema section for the open form of [`_object`](_object.md). It may contain any combination of the constraint properties — [`_required`](_required.md), [`_recommended`](_recommended.md), [`_banned`](_banned.md), [`_computed`](_computed.md), [`_locked`](_locked.md), [`_immutable`](_immutable.md), [`_default-value`](_default-value.md) — to define what is mandatory, advisory, or forbidden within the object. Beyond those explicit constraints, the object may contain any other property defined in the data dictionary.

An empty `_open` section (`"_open": {}`) means no constraints apply: the object may contain any dictionary property, any number of them, or none.

`_recommended` in an open schema is advisory: the listed properties are expected or encouraged but their absence does not make the object invalid. Properties not listed in `_recommended` are still accepted.

**[Examples](_examples.md)**

**Empty `_open` section** — no constraints; any dictionary property is accepted:

```json
{
	"_data": {
		"_object": {
			"_open": {}
		}
	}
}
```

Valid: `{}`, `{"_title": {...}}`, `{"_title": {...}, "_notes": {...}, "_custom_prop": 42}`.

---

**Filled `_open` section** — `_title` is required; `_definition` and `_description` are recommended; `_notes` is banned:

```json
{
	"_data": {
		"_object": {
			"_open": {
				"_required": [
					{
						"_selectors": [{"_all": {}}],
						"_selection": ["_title"]
					}
				],
				"_recommended": ["_definition", "_description"],
				"_banned": ["_notes"]
			}
		}
	}
}
```

Valid: `{"_title": {...}}`, `{"_title": {...}, "_definition": {...}, "_examples": {...}}`.
Invalid: `{}` — `_title` is missing.
Invalid: `{"_title": {...}, "_notes": "..."}` — `_notes` is banned.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Open schema"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md)

<details>
<summary>JSON</summary>

```json
{
  "_object": {
    "_closed": {
      "_recommended": [
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
