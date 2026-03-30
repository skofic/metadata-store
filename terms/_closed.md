# `_closed`

**`_title`**

Closed schema

**`_definition`**

Boolean flag required in every rule object — both base `_rule` sections and conditional rule objects. When `true`, only properties in `_required` or `_recommended` are permitted. When `false`, `_recommended` is advisory and additional properties are accepted.

**`_description`**

`_closed` is a **required** property of every rule object — it must be present in the [`_rule`](_rule.md) section of every object definition term and in every conditional rule object stored in `_path_data` on graph edges. Its explicit presence eliminates ambiguity about a schema's closure state.

- **`_closed: false`** (open schema): properties outside [`_required`](_required.md) and [`_recommended`](_recommended.md) are accepted without error. `_recommended` is advisory — it documents expected properties and guides form generation, but does not reject unlisted ones. Appropriate for schemas that are still evolving or where extensibility is desired.

- **`_closed: true`** (closed schema): only properties in `_required` or `_recommended` may be present; any other property causes a validation error. Appropriate for stable schemas with a known, bounded property set.

For **conditional rule objects** in `_path_data` on graph edges:

- A **closed** conditional rule replaces the base `_recommended` set entirely — its `_recommended` becomes the complete optional-property whitelist for that value context.
- An **open** conditional rule accumulates — its `_recommended` is unioned with the base `_recommended`, and any [`_banned`](_banned.md) entries conditionally remove properties from the effective permitted set.

[`_required`](_required.md) always accumulates regardless of closure mode. `_banned` is unconditional in all modes.

**`_examples`**

Open schema — additional properties beyond `_lid` and `_nid` are accepted:

```json
{
	"_closed": false,
	"_recommended": ["_lid", "_nid"]
}
```

Closed schema — only the listed properties are permitted:

```json
{
	"_closed": true,
	"_recommended": ["_lid", "_nid", "_gid", "_aid"]
}
```

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "closed",
	"_gid": "_closed",
	"_aid": ["closed"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_boolean"
	}
}
```

**`_domn`**

```json
{}
```
