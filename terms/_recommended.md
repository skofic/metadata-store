# `_recommended`

**`_title`**

Recommended properties

**`_definition`**

The set of optional properties permitted in the object. Advisory when the schema is open; enforced as a strict whitelist when the schema is closed. Disjoint from `_required` — a property must appear in exactly one or neither.

**`_description`**

`_recommended` is a property of the [`_rule`](_rule.md) section. Its value is a flat array of descriptor `_gid` strings naming the optional properties of the schema.

Its effect depends on [`_closed`](_closed.md):

- **`_closed: false`** (open schema): advisory — the listed properties are documented as expected and guide form generation, but unlisted properties are accepted without error.
- **`_closed: true`** (closed schema): enforced — only properties in [`_required`](_required.md) or `_recommended` may be present; any other property is rejected.

`_recommended` and `_required` are strictly disjoint: a property appears in exactly one or neither, never both. [`_banned`](_banned.md) is unconditional and applies regardless of these lists.

**`_examples`**

```json
{
	"_recommended": ["_nid", "_aid", "_pid", "_name", "_symbol", "_regexp", "_emoji"]
}
```

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "recommended",
	"_gid": "_recommended",
	"_aid": ["recommended"]
}
```

**`_data`**

```json
{
	"_array": {
		"_scalar": {
			"_scalar_type": "_type_key_term_descriptor"
		}
	}
}
```

**`_domn`**

```json
{}
```
