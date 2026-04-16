# Banned properties
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_banned</code></p>

> A set of descriptor global identifiers listing properties that must never be present in the object. The ban is unconditional and takes precedence over all other schema rules, including conditional rules applied via graph edges.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `banned` |
| [Global identifier](_gid.md) | `_banned` |
| [Official identifiers](_aid.md) | `banned` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "banned"
  ],
  "_gid" : "_banned",
  "_lid" : "banned",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Banned properties

**[Definition](_definition.md):** A set of descriptor global identifiers listing properties that must never be present in the object. The ban is unconditional and takes precedence over all other schema rules, including conditional rules applied via graph edges.

**[Description](_description.md)**

`_banned` is a constraint property within [`_open`](_open.md) or [`_closed`](_closed.md). Any property listed in `_banned` must be absent from the object — the ban cannot be overridden by [`_required`](_required.md), [`_recommended`](_recommended.md), or any conditional rule stored in [`_path_data`](_path_data.md) on graph edges.

The practical effect of `_banned` differs by schema type:

- In an **open schema**: `_banned` creates an explicit exclusion. Without it, any dictionary property is permitted; adding it carves out specific properties that must not appear.
- In a **closed schema**: unlisted properties are already excluded by the whitelist. Explicitly adding them to `_banned` makes the exclusion permanent and prevents any conditional rule from re-admitting them.

Because `_banned` is unconditional, it also overrides conditional rules. A property banned in the base schema cannot be permitted by any activation condition.

**[Examples](_examples.md)**

**In an open schema** — any dictionary property is accepted except [`_notes`](_notes.md) and [`_citation`](_citation.md):

```json
{
	"_data": {
		"_object": {
			"_open": {
				"_banned": ["_notes", "_citation"]
			}
		}
	}
}
```

Valid: `{"_title": {...}, "_description": {...}}`.
Invalid: `{"_title": {...}, "_notes": "..."}` — `_notes` is banned.

---

**In a closed schema** — a numeric scalar type that permits unit and range properties but permanently forbids `_decimals`:

```json
{
	"_data": {
		"_object": {
			"_closed": {
				"_recommended": ["_unit", "_range_valid", "_range_normal"],
				"_banned": ["_decimals"]
			}
		}
	}
}
```

Valid: `{}`, `{"_unit": "_unit_length_cm"}`.
Invalid: `{"_decimals": 2}` — `_decimals` is banned even though no conditional rule has activated it.

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
    "ISO_639_3_eng" : "Banned properties"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Set](_set.md) — [Descriptor term document key](_term_key_descriptor.md)

<details>
<summary>JSON</summary>

```json
{
  "_set" : {
    "_term_key_descriptor" : {

    }
  }
}
```

</details>
