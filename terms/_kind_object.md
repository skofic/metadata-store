# `_kind_object`

**`_title`**

Object Kind

**`_definition`**

Optional qualifier for the [`_type_object`](_type_object.md) data type. When present, this set property lists the object definition terms — terms carrying a [`_rule`](_rule.md) section — that the object value must conform to. The value must satisfy at least one of the listed schemas. When absent, the only requirement is that all properties of the object are defined as descriptors in the dictionary.

**`_description`**

The [`_kind_object`](_kind_object.md) property qualifies the [`_type_object`](_type_object.md) data type by constraining the schema the object value must conform to. It is **optional** and is a set of [`_type_key`](_type_key.md) values, each referencing an *object definition term* — a term that carries a [`_rule`](_rule.md) section defining which properties are required, recommended, or banned within the object.

When [`_kind_object`](_kind_object.md) is present, the value must conform to at least one of the listed schemas. When multiple schemas are listed, the value is accepted if it satisfies any one of them, giving the descriptor a union-type character.

When [`_kind_object`](_kind_object.md) is absent, no schema constraint is imposed beyond the basic requirement that every property key must correspond to a descriptor [`_gid`](_gid.md) defined in the dictionary.

**`_examples`**

**Single schema** — the value must conform to the [`_range`](_range.md) object definition:

```json
{
	"_scalar": {
		"_type_scalar": "_type_object",
		"_kind_object": ["_range"]
	}
}
```

The value must be an object satisfying the rules defined in the [`_range`](_range.md) term — for example `{"_min-range-inclusive": 0, "_max-range-exclusive": 100}`.



**Multiple schemas** — the value may conform to either of two range definitions:

```json
{
	"_scalar": {
		"_type_scalar": "_type_object",
		"_kind_object": ["_range", "_range_string"]
	}
}
```

The value is accepted if it satisfies the [`_range`](_range.md) schema (numeric bounds) or the [`_range_string`](_range_string.md) schema (string bounds). This allows a single descriptor to cover both numeric and string range structures.



**No restriction** — the value may be any object whose properties are all dictionary-defined descriptors:

```json
{
	"_scalar": {
		"_type_scalar": "_type_object"
	}
}
```

Omitting [`_kind_object`](_kind_object.md) imposes no schema constraint. Any object is accepted as long as every property key is the [`_gid`](_gid.md) of a descriptor defined in the dictionary.

---

**`_code`**

```json
{
  "_aid" : [
    "object"
  ],
  "_gid" : "_kind_object",
  "_lid" : "object",
  "_nid" : "_kind"
}
```

**`_data`**

```json
{
  "_set" : {
    "_set_scalar" : {
      "_type_scalar_set" : "_type_key_term_object"
    }
  }
}
```
