# `_dict_value`

**`_title`**

Dictionary value

**`_definition`**

The sub-property of a dictionary that defines the type and shape of its values. At most one data shape property may be present, following the same conventions as a `_data` section. When empty, the value may be of any shape and type.

**`_description`**

`_dict_value` defines the type of the value side of a dictionary entry. At most one shape property may be present — one of [`_scalar`](_scalar.md), [`_object`](_object.md), [`_array`](_array.md), [`_set`](_set.md), [`_tuple`](_tuple.md), [`_nested`](_nested.md), [`_dict`](_dict.md), or [`_typedef`](_typedef.md) — following the same conventions as a [`_data`](_data.md) section.

When `_dict_value` is an **empty object** (`{}`), the value side accepts any value of any shape and type without constraint.

The shape sub-properties follow the same definitions as their counterparts in [`_data`](_data.md), making the dictionary structure fully recursive. A dictionary whose values are themselves dictionaries, or whose values are arrays of sets, is equally valid.

**`_examples`**

Plain string values — the value side of a multilingual string dictionary:

```json
{
	"_dict_value": {
		"_scalar": {
			"_string": {}
		}
	}
}
```

Arrays of integers as values:

```json
{
	"_dict_value": {
		"_array": {
			"_scalar": {
				"_number_integer": {}
			}
		}
	}
}
```

Unconstrained values — any shape and type accepted:

```json
{
	"_dict_value": {}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "value"
  ],
  "_gid" : "_dict_value",
  "_lid" : "value",
  "_nid" : "_dict"
}
```

**`_data`**

```json
{
  "_typedef": "_data"
}
```
