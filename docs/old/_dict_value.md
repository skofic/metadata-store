# `_dict_value`

**`_title`**

Dictionary value

**`_definition`**

The sub-section that defines the data type and shape of the values in a dictionary. Equivalent to a full `_data` section: at most one shape property may be present. When empty, the value may be of any shape and type.

**`_description`**

`_dict_value` defines the type of the value side of a dictionary entry. It is equivalent to a full [`_data`](_data.md) section: at most one shape property may be present — one of [`_scalar`](_scalar.md), [`_array`](_array.md), [`_nested`](_nested.md), [`_set`](_set.md), [`_tuple`](_tuple.md), [`_dict`](_dict.md), or [`_typedef`](_typedef.md).

When `_dict_value` is an *empty object* (`{}`), the value side of the dictionary accepts any value of any shape and type without constraint.

The shape sub-properties are defined identically to their counterparts in [`_data`](_data.md), making the dictionary structure fully recursive. A dictionary whose values are themselves dictionaries, or whose values are arrays of sets, is equally valid.

**`_examples`**

A value defined as a plain string — the value side of a multilingual string dictionary:

```json
{"_dict_value": {"_scalar": {"_scalar_type": "_type_string"}}}
```

A value defined as an array of integers:

```json
{
	"_dict_value": {"_array": {"_scalar": {"_scalar_type": "_type_number_integer"}}}
}
```

An unconstrained value (any shape and type accepted):

```json
{"_dict_value": {}}
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
  "_scalar" : {
    "_object_types" : [
      "_dict_value"
    ],
    "_scalar_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_required" : [
    {
      "_selection_descriptors" : [
        "_scalar",
        "_array",
        "_nested",
        "_set",
        "_tuple",
        "_dict",
        "_typedef"
      ],
      "_selection_rules" : [
        {
          "_elements" : {
            "_max-items" : 1
          },
          "_selection_type" : "_type_selection_optional"
        }
      ]
    }
  ]
}
```
