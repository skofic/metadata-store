# `_unit`

**`_title`**

Unit

**`_definition`**

The measurement unit of a scalar value, expressed as the `_gid` of an enumeration element from a unit controlled vocabulary. Mutually exclusive with `_unit-name` and `_unit-symbol`.

**`_description`**

`_unit` assigns a codified measurement unit to a scalar descriptor. Its value is the [`_gid`](_gid.md) of a unit term drawn from a unit enumeration vocabulary (such as a standard units ontology). When a codified unit is available, `_unit` should be used in preference to the free-text pair [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md).

`_unit`, `_unit-name`, and `_unit-symbol` are mutually exclusive: a scalar section may carry either `_unit` alone or the `_unit-name`/`_unit-symbol` pair — never both codified and free-text unit information simultaneously. This mutual exclusion is enforced by a presence-triggered conditional rule ([`_predicate_property-of`](_predicate_property-of.md) edge with non-empty [`_path_data`](_path_data.md)).

**`_examples`**

A floating-point length expressed in centimetres:

```json
{
	"_scalar": {
		"_scalar_type": "_type_number_float",
		"_unit": "_unit_length_cm"
	}
}
```

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "unit",
	"_gid": "_unit",
	"_aid": ["unit"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_enum"
	}
}
```

**`_domn`**

```json
{}
```
