# `_computed`

**`_title`**

Computed properties

**`_definition`**

Properties whose values are automatically set by the system if not provided by the user at insertion time. Computed properties are resolved before `_required` is checked, allowing them to appear in `_required` without requiring the user to supply them explicitly.

**`_description`**

`_computed` is a property of the [`_rule`](_rule.md) section. Its value is a flat array of descriptor `_gid` strings.

When a listed property is absent at insertion time, the system fills it in automatically. Because computation happens before [`_required`](_required.md) validation, a property can be both computed and required — the system sets it first, and validation then confirms its presence.

Computed properties are typically paired with [`_immutable`](_immutable.md) to prevent the system-set value from being modified after it has been established. [`_gid`](_gid.md) and `_key` are the canonical examples: computed from `_nid` + `_lid`, then locked from further modification.

Unlike [`_locked`](_locked.md) properties — which users can never touch — a computed property *may* be provided by the user on first write. The system only steps in when the value is absent.

**`_examples`**

```json
{
	"_computed": ["_gid", "_key", "_aid"]
}
```

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "computed",
	"_gid": "_computed",
	"_aid": ["computed"]
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
