# `_path_data`

**`_title`**

Path data

**`_definition`**

An open dictionary of custom data attached to the edge, scoped by graph root or node context.

**`_description`**

[Edges](_edge.md) are shared across all the graphs listed in [_path](_path.md). This property allows data to be associated with the edge in a context-sensitive way: keys are document handles (graph root handles from [`_path`](_path.md), or the [`_from`](_from.md)/[`_to`](_to.md) handles) or descriptor [`_gid`](_gid.md)s, and values contain the data relevant to that context.

A common pattern for conditional validation rules uses graph root handles as keys. When the system traverses a specific graph, it reads `_path_data[root_handle]` to find any additional [`_rule`](_rule.md)-like constraints that apply within that structural context — for example, making a property required only when a specific value is present in a parent descriptor.

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

This edge represents the Rome → Milan route shared by two airlines. [`_path_data`](_path_data.md) holds price and duration data scoped to each airline, taxi data scoped to the departure and arrival cities, and a general passenger count attached to the edge as a whole.

```json
{
	"_key": "<edge hash>",
	"_from": "terms/_type_number_float",
	"_predicate": "_predicate_value-of",
	"_to": "terms/_type_scalar",
	"_path": ["terms/_scalar"],
	"_path_data": {
		"terms/_scalar": {
			"_closed": true,
			"_recommended": ["_unit", "_unit-name", "_unit-symbol", "_decimals", "_valid-range", "_normal-range"]
		}
	}
}
```

This edge states that, within the [`_scalar`](_scalar.md) structure, when [`_type_scalar`](_type_scalar.md) holds the value [`_type_number_float`](_type_number_float.md), the listed optional properties are permitted and no others (closed). The [`_path_data`](_path_data.md) key is the graph root handle `terms/_scalar`; the value mirrors the [`_rule`](_rule.md) section format.

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
  "_dict" : {
    "_dict_key" : {
      "_dict_key_type" : "_type_handle"
    },
    "_dict_value" : {
      "_scalar" : {
        "_type_scalar" : "_type_object"
      }
    }
  }
}
```
