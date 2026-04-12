# Property of
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_property-of</code></p>

> The source descriptor is a property of the destination schema term. Declares the descriptor's membership in a schema and, when `_path_data` is non-empty, activates a conditional rule whenever the property is present in an object, regardless of its value.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Relationship predicate](_predicate.md) |
| [Local identifier](_lid.md) | `property-of` |
| [Global identifier](_gid.md) | `_predicate_property-of` |
| [Official identifiers](_aid.md) | `property-of` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "property-of"
  ],
  "_gid" : "_predicate_property-of",
  "_lid" : "property-of",
  "_nid" : "_predicate"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Property of

**[Definition](_definition.md):** The source descriptor is a property of the destination schema term. Declares the descriptor's membership in a schema and, when `_path_data` is non-empty, activates a conditional rule whenever the property is present in an object, regardless of its value.

**[Description](_description.md)**

`_predicate_property-of` links a descriptor to the object schema it belongs to. An edge with this predicate states that [`_from`](_from.md) (a descriptor) is a property of the schema defined by [`_to`](_to.md) (an object definition term).

**Schema membership**: the edge declares that `_from` may appear as a property in objects conforming to the `_to` schema. This allows tooling to discover all properties of a schema by traversing `_predicate_property-of` edges.

**Presence-triggered rules**: when [`_path_data`](_path_data.md) is non-empty, the schema constraint stored there activates whenever `_from` is present in the object — regardless of its value. The primary use case is mutual exclusion: when [`_unit`](_unit.md) is present (any value), [`_unit_name`](_unit_name.md) and [`_unit_symbol`](_unit_symbol.md) must be absent. This cannot be expressed with [`_predicate_value-of`](_predicate_value-of.md) because the constraint is not tied to any specific value.

Use `_open` for presence-triggered rules unless the property's presence alone fully determines the complete allowed set — which is rare.

Note: for **passive properties** whose presence triggers no conditional rule, a `_predicate_property-of` edge with empty `_path_data` may be omitted. Membership for such properties is implicitly declared by their appearance in [`_recommended`](_recommended.md) lists of type and kind conditional rules. Tooling that inspects schema membership must therefore read both property-of edges and `_recommended` lists.

**[Examples](_examples.md)**

A simple membership edge (no conditional rule):

```json
{
	"_from": "terms/_unit",
	"_predicate": "_predicate_property-of",
	"_to": "terms/_scalar",
	"_path": ["terms/_scalar"],
	"_path_data": {}
}
```

A presence-triggered rule: when [`_unit`](_unit.md) is present, [`_unit_name`](_unit_name.md) and [`_unit_symbol`](_unit_symbol.md) must be absent:

```json
{
	"_from": "terms/_unit",
	"_predicate": "_predicate_property-of",
	"_to": "terms/_scalar",
	"_path": ["terms/_scalar"],
	"_path_data": {
		"terms/_scalar": {
			"_open": {
				"_banned": ["_unit_name", "_unit_symbol"]
			}
		}
	}
}
```

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
    "ISO_639_3_eng" : "Property of"
  }
}
```

</details>
