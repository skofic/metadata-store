# `_banned`

**`_title`**

Banned properties

**`_definition`**

A set of descriptor global identifiers listing properties that must never be present in the object. The ban is unconditional and takes precedence over all other schema rules, including conditional rules applied via graph edges.

**`_description`**

`_banned` is a constraint property within [`_open`](_open.md) or [`_closed`](_closed.md). Any property listed in `_banned` must be absent from the object — the ban cannot be overridden by [`_required`](_required.md), [`_recommended`](_recommended.md), or any conditional rule stored in [`_path_data`](_path_data.md) on graph edges.

The practical effect of `_banned` differs by schema type:

- In an **open schema**: `_banned` creates an explicit exclusion. Without it, any dictionary property is permitted; adding it carves out specific properties that must not appear.
- In a **closed schema**: unlisted properties are already excluded by the whitelist. Explicitly adding them to `_banned` makes the exclusion permanent and prevents any conditional rule from re-admitting them.

Because `_banned` is unconditional, it also overrides conditional rules. A property banned in the base schema cannot be permitted by any activation condition.

**`_examples`**

**In an open schema** — any dictionary property is accepted except `_notes` and `_citation`:

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

---

**`_code`**

```json
{
  "_gid": "_banned",
  "_lid": "banned",
  "_nid": "",
  "_aid": ["banned"]
}
```

**`_data`**

```json
{
  "_set": {
    "_term_key_descriptor": {}
  }
}
```
