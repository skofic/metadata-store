# `_path_data`

**`_title`**

Relationship path data

**`_definition`**

An open dictionary that associates structured data with an edge, keyed by document handles. The meaning and schema of each value is determined by the node the key refers to.

**`_description`**

`_path_data` is the payload of an edge document. It is an open key/value dictionary whose entries are scoped by context — each key identifies the node that the associated data belongs to.

Two key patterns are used:

| Key pattern | Meaning |
|---|---|
| Graph root handle (present in [`_path`](_path.md)) | Data specific to this edge within that graph. |
| [`_from`](_from.md) or [`_to`](_to.md) handle | Data related to a node at one end of the relationship. |

When the edge carries **no data**, `_path_data` is an empty object (`{}`), which is also its default value.

When the edge encodes a **conditional schema rule** (on a [`_predicate_property-of`](_predicate_property-of.md) or [`_predicate_value-of`](_predicate_value-of.md) edge), `_path_data` contains a schema object keyed by the graph root handle. The schema object uses the same format as [`_object`](_object.md): its single key is either [`_closed`](_closed.md) or [`_open`](_open.md), and its value is a constraint object that may contain [`_required`](_required.md), [`_recommended`](_recommended.md), and [`_banned`](_banned.md). Using `_closed` means only the properties listed in the constraint are permitted in that context; using `_open` means additional properties are also accepted. [`_required`](_required.md) always accumulates with the base schema; [`_banned`](_banned.md) is unconditional.

Keys must be document handles. Semantically, each key should be the handle of the edge's `_from` or `_to` node, or a handle present in `_path`; handles referencing other documents are accepted by the type system but have no defined meaning. Values may be any valid data shape as defined by the [`_data`](_data.md) section.

**`_examples`**

A travel-graph edge carrying per-airline fares and per-location transfer costs:

```json
{
	"_from": "locations/Roma",
	"_predicate": "_predicate_travel-to",
	"_to": "locations/Milano",
	"_path": ["airlines/airline-A", "airlines/airline-B"],
	"_path_data": {
		"airlines/airline-A": {"price": 150, "duration": 75},
		"airlines/airline-B": {"price": 200, "duration": 45},
		"locations/Roma": {"taxi": 70, "duration": 45},
		"locations/Milano": {"taxi": 90, "duration": 30}
	}
}
```

Each airline graph root handle keys its own fare data; each location handle keys its transfer cost.

A `_predicate_value-of` edge encoding a closed conditional rule — when `_scalar` contains the key `_number_integer`, `_decimals` is banned and the recommended companion properties are restricted to the numeric range and unit properties only (integers have no decimal part):

```json
{
	"_from": "terms/_number_integer",
	"_predicate": "_predicate_value-of",
	"_to": "terms/_scalar",
	"_path": ["terms/_scalar"],
	"_path_data": {
		"terms/_scalar": {
			"_closed": {
				"_recommended": [
					"_unit",
					"_unit_name",
					"_unit_symbol",
					"_range_valid",
					"_range_normal"
				],
				"_banned": ["_decimals"]
			}
		}
	}
}
```

The constraint is keyed by the graph root handle `terms/_scalar` and applies only within that schema context. `_closed` replaces the base recommended set; `_banned` removes `_decimals` unconditionally.

---

**`_code`**

```json
{
  "_gid": "_path_data",
  "_lid": "data",
  "_nid": "_path",
  "_aid": ["data"]
}
```

**`_data`**

```json
{
  "_dict": {
    "_dict_key": {
      "_handle": {}
    },
    "_dict_value": {
      "_typedef": "_data"
    }
  }
}
```
