# `_path_data`

**`_title`**

Path data

**`_definition`**

An open dictionary of custom data attached to the edge, scoped by graph root or node context.

**`_description`**

[Edges](_edge.md) are shared across all the graphs listed in [_path](_path.md). This property allows data to be associated with the edge in a context-sensitive way: keys are document handles (graph root handles from `_path`, or the `_from`/`_to` handles) or descriptor `_gid`s, and values contain the data relevant to that context.

A common pattern for conditional validation rules uses graph root handles as keys. When the system traverses a specific graph, it reads `_path_data[root_handle]` to find any additional `_rule`-like constraints that apply within that structural context — for example, making a property required only when a specific value is present in a parent descriptor.

This property is initialised to an empty object `{}` at insertion time.

**`_examples`**

```json
{
	"_key": "<edge hash>",
	"_from": "locations/Roma",
	"_predicate": "_predicate_travel-to",
	"_to": "locations/Milano",
	"_path": [
		"airlines/airline-A",
		"airlines/airline-B"
	],
	"_path_data": {
		"airlines/airline-A": {
			"price": 150,
			"duration": 75
		},
		"airlines/airline-B": {
			"price": 200,
			"duration": 45
		},
		"locations/Roma": {
			"taxi": 70,
			"duration": 45
		},
		"locations/Milano": {
			"taxi": 90,
			"duration": 30
		},
		"passengers": 1247
	}
}
```

This edge represents the Rome → Milan route shared by two airlines. `_path_data` holds price and duration data scoped to each airline, taxi data scoped to the departure and arrival cities, and a general passenger count attached to the edge as a whole.

```json
{
	"_key": "<edge hash>",
	"_from": "terms/_type_number",
	"_predicate": "_predicate_value-of",
	"_to": "terms/_type",
	"_path": ["terms/_scalar"],
	"_path_data": {
		"terms/_scalar": {
			"_required": {
				"_selection-descriptors_all": ["_kind_number"]
			}
		}
	}
}
```

This edge states that, within the `_scalar` structure, when `_type` holds the value `_type_number`, the `_kind_number` property becomes required. The `_path_data` key is the graph root handle `terms/_scalar`; the value mirrors the `_rule` section format.

---

**`_code`**

```json
{
  "_aid" : [
    "data"
  ],
  "_gid" : "_path_data",
  "_lid" : "data",
  "_nid" : "_path"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_type" : "_type_struct"
  }
}
```
