# `_path_data`

**`_title`**

Path data

**`_definition`**

An open structure of custom data attached to the edge, scoped by graph root or node context. Initialised to an empty object at insertion time.

**`_description`**

[Edges](_edge.md) are shared across all graphs listed in [`_path`](_path.md). This property allows data to be attached to an edge in a context-sensitive way: keys are document handles (graph root handles from `_path`, or the [`_from`](_from.md)/[`_to`](_to.md) handles) or descriptor [`_gid`](_gid.md)s, and values hold the data relevant to that context.

A common use is conditional validation rules via [`_predicate_value-of`](_predicate_value-of.md) edges. When the system evaluates a specific structural context, it reads `_path_data[root_handle]` to find any additional [`_rule`](_rule.md)-like constraints that apply — for example, permitting or banning properties only when a specific value is present in a governing descriptor.

This property is initialised to an empty object `{}` at edge insertion time.

**`_examples`**

An edge between two locations shared by two airlines. `_path_data` holds price and duration scoped to each airline, taxi data scoped to each city, and a general passenger count attached to the edge as a whole:

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
		"locations/Milano": {"taxi": 90, "duration": 30},
		"passengers": 1247
	}
}
```

A value-triggered conditional rule: within the [`_scalar`](_scalar.md) structure, when [`_scalar_type`](_scalar_type.md) holds the value `_type_number_float`, the listed optional properties are permitted and no others:

```json
{
	"_from": "terms/_type_number_float",
	"_predicate": "_predicate_value-of",
	"_to": "terms/_scalar_type",
	"_path": ["terms/_scalar"],
	"_path_data": {
		"terms/_scalar": {
			"_closed": true,
			"_recommended": ["_unit", "_unit-name", "_unit-symbol", "_decimals", "_range_valid", "_range_normal"]
		}
	}
}
```

---

**`_code`**

```json
{
	"_nid": "_path",
	"_lid": "data",
	"_gid": "_path_data",
	"_aid": ["data"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_struct"
	}
}
```

**`_domn`**

```json
{}
```
