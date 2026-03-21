# `_type`

**`_title`**

Data Type

**`_definition`**

The data type of the value in a scalar section. This property is required whenever the scalar section is not empty, and constrains what kind of value the descriptor represents. Valid values form an enumeration whose elements define all supported scalar types.

**`_description`**

This property defines the *data type* of the value in a [`_scalar`](_scalar.md) section. It is required whenever [`_scalar`](_scalar.md) is not empty, and its value must be one of the following enumeration elements:

- [`_type_boolean`](_type_boolean.md): The value is a `true` or `false` boolean. No other [`_scalar`](_scalar.md) properties are expected.

- [`_type_number`](_type_number.md): The value is a numeric value stored as a double-precision floating-point number. The [`_scalar`](_scalar.md) section may additionally include [`_unit`](_unit.md), [`_unit-name`](_unit-name.md) (a multilingual name keyed by language `_gid`), [`_unit-symbol`](_unit-symbol.md), [`_valid-range`](_valid-range.md), and [`_normal-range`](_normal-range.md). The companion property [`_kind_number`](_kind_number.md) is **required**: it is a set and may contain one or both of the following values — when both are present, both floating-point and integer values are accepted:
  - [`_kind_number_float`](_kind_number_float.md): The value is a floating-point number. The [`_scalar`](_scalar.md) section may additionally include [`_decimals`](_decimals.md) to specify the number of decimal places to display when rendering the value; the stored value is not rounded.
  - [`_kind_number_integer`](_kind_number_integer.md): The value is an integer — a whole number with no decimal part.

- [`_type_string`](_type_string.md): The value is a UTF-8 string. The optional companion property [`_kind_string`](_kind_string.md) specifies the encoding or format of the string, selecting one of the following:
  - [`_kind_string_Markdown`](_kind_string_Markdown.md): The string is in [Markdown](https://www.markdownguide.org/getting-started/) format.
  - [`_kind_string_HTML`](_kind_string_HTML.md): The string is in [HTML](https://en.wikipedia.org/wiki/HTML) format.
  - [`_kind_string_URI`](_kind_string_URI.md): The string is a [Uniform Resource Identifier](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier) (URI).
  - [`_kind_string_HEX`](_kind_string_HEX.md): The string is a [hexadecimal](https://en.wikipedia.org/wiki/Hexadecimal) value. May additionally include [`_unit`](_unit.md), [`_unit-name`](_unit-name.md), [`_unit-symbol`](_unit-symbol.md), [`_valid-range`](_valid-range.md), and [`_normal-range`](_normal-range.md).
  - [`_kind_string_SVG`](_kind_string_SVG.md): The string is an [SVG](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) image.
  - [`_kind_string_email`](_kind_string_email.md): The string is an [email address](https://en.wikipedia.org/wiki/Email_address).
  - [`_kind_string_date`](_kind_string_date.md): The string is a date, equivalent to the JSON Schema `date` format. May additionally include [`_valid-range`](_valid-range.md) and [`_normal-range`](_normal-range.md).
  - [`_kind_string_time`](_kind_string_time.md): The string is a time, equivalent to the JSON Schema `time` format. May additionally include [`_valid-range`](_valid-range.md) and [`_normal-range`](_normal-range.md).
  - [`_kind_string_date-time`](_kind_string_date-time.md): The string is a date and time, equivalent to the JSON Schema `date-time` format. May additionally include [`_valid-range`](_valid-range.md) and [`_normal-range`](_normal-range.md).
  - [`_kind_string_YMD`](_kind_string_YMD.md): The string is a full or partial date in `YYYYMMDD` format; the day, or the day and month, may be omitted, yielding `YYYYMM` or `YYYY` respectively. May additionally include [`_valid-range`](_valid-range.md) and [`_normal-range`](_normal-range.md).
  - [`_kind_string_Hostname`](_kind_string_Hostname.md): The string is an [internet hostname](https://en.wikipedia.org/wiki/Hostname).
  - [`_kind_string_IPv4`](_kind_string_IPv4.md): The string is an [IPv4 address](https://en.wikipedia.org/wiki/IPv4).
  - [`_kind_string_IPv6`](_kind_string_IPv6.md): The string is an [IPv6 address](https://en.wikipedia.org/wiki/IPv6).
  - [`_kind_string_LaTeX`](_kind_string_LaTeX.md): The string is a [LaTeX](https://www.latex-project.org) expression. [LaTeX](https://www.latex-project.org) is a superset of plain UTF-8 text: simple symbols such as `€` or `°C` can be stored as plain Unicode characters, while complex mathematical expressions use LaTeX syntax. The frontend renders `_kind_string_LaTeX` strings using [KaTeX](https://katex.org).
  - [`_kind_string_regexp`](_kind_string_regexp.md): The string is a [regular expression](https://en.wikipedia.org/wiki/Regular_expression). The value must be syntactically valid; the editing interface provides a testing facility for verifying the expression. Note the distinction from the [`_regexp`](_regexp.md) property: `_kind_string_regexp` declares that the stored value *is* a regular expression, while `_regexp` holds a validation pattern applied to a generic string value.

  When `_kind_string` is absent, the string is generic. In this case the [`_scalar`](_scalar.md) section may include [`_regexp`](_regexp.md), [`_unit`](_unit.md), [`_unit-name`](_unit-name.md), [`_unit-symbol`](_unit-symbol.md), [`_valid-range_string`](_valid-range_string.md), and [`_normal-range_string`](_normal-range_string.md). The [`_regexp`](_regexp.md) property is not available when `_kind_string` is present — the data kind is self-defining and a regular expression could contradict it.

- [`_type_key`](_type_key.md): The value is a string representing the [`_key`](_key.md) of a document in any collection of the database. The optional companion property [`_kind_key`](_kind_key.md) is a set constraining which type of term the key may reference:
  - [`_kind_key_term`](_kind_key_term.md): The key may reference any term.
  - [`_kind_key_term_enum`](_kind_key_term_enum.md): The key may reference any enumeration type — i.e., any term that serves as the root of a controlled vocabulary graph.
  - [`_kind_key_term_enum_element`](_kind_key_term_enum_element.md): The key may reference any enumeration element — i.e., any term that is a valid choice within a controlled vocabulary, connected to an enumeration root via a [`_predicate_enum-of`](_predicate_enum-of.md) edge.
  - [`_kind_key_term_object`](_kind_key_term_object.md): The key may reference any term that defines an object schema — i.e., any term with a [`_rule`](_rule.md) section.
  - [`_kind_key_term_descriptor`](_kind_key_term_descriptor.md): The key may reference any descriptor — i.e., any term with a [`_data`](_data.md) section.
  When `_kind_key` is absent, the key may reference a document in any collection.

- [`_type_enum`](_type_enum.md): The value is a string representing the [`_gid`](_gid.md) of a term that is an element of a controlled vocabulary. The optional companion property [`_kind_enum`](_kind_enum.md) is a set of enumeration type `_gid`s — i.e., the roots of the controlled vocabulary graphs — identifying the vocabularies from which the value must be drawn. The value must be a valid enumeration *element* of at least one of the listed roots. When `_kind_enum` is absent, the value may be any enumeration element from any controlled vocabulary.

- [`_type_object`](_type_object.md): The value is an object whose properties must correspond to descriptor `_gid`s defined in the dictionary. The optional companion property [`_kind_object`](_kind_object.md) is a set of `_gid`s of object definition terms; the value must conform to at least one of the listed definitions. When `_kind_object` is absent, the only requirement is that all properties are defined as descriptors in the dictionary.

- [`_type_struct`](_type_struct.md): The value is a free-form object whose properties need not be defined in the dictionary. No other [`_scalar`](_scalar.md) properties are expected.

- [`_type_handle`](_type_handle.md): The value is a string representing the [`_id`](_id.md) (document handle in `<collection>/<_key>` form) of a record in any collection. No other [`_scalar`](_scalar.md) properties are expected.

- [`_type_timestamp`](_type_timestamp.md): The value is an integer representing a [Unix timestamp](https://www.unixtimestamp.com) — the number of seconds elapsed since 1 January 1970 UTC. The [`_scalar`](_scalar.md) section may include [`_valid-range`](_valid-range.md) and [`_normal-range`](_normal-range.md).

- [`_type_object_geojson`](_type_object_geojson.md): The value is a [GeoJSON](https://geojson.org) object representing a geographic feature. The object must not be empty, and no other [`_scalar`](_scalar.md) properties are expected.

When `_type` is omitted, the [`_scalar`](_scalar.md) section must be empty, meaning the value may be of any scalar type without constraint.

**`_examples`**

```json
{
	"_scalar": {
		"_type": "_type_boolean"
	}
}
```

This [data section](_data.md) defines a descriptor that holds [boolean](_type_boolean.md) values.



```json
{
	"_scalar": {
		"_type": "_type_number",
		"_kind_number": ["_kind_number_float"],
		"_decimals": 1,
		"_unit": "qudt_unit_CentiM",
		"_normal-range": {
			"_min-range-inclusive": 10.0,
			"_max-range-exclusive": 40.0
		}
	}
}
```

This descriptor defines a [floating point](_kind_number_float.md) [numeric](_type_number.md) value that should be *displayed* with one [decimal](_decimals.md) at most, and with a [normal range](_normal-range.md) starting at 10 and less than 40 [centimeters](qudt_unit_CentiM.md).

For instance `39.85`.



```json
{
	"_scalar": {
		"_type": "_type_string",
		"_regexp": "^[A-Z]{3}$"
	}
}
```

This descriptor defines a [string](_type_string.md) that must made of [three capital letters](_regexp.md).

For instance: `ITA`.



```json
{
	"_scalar": {
		"_type": "_type_key",
		"_kind_key": ["_kind_key_term_enum_element"]
	}
}
```

This descriptor defines a [document key](_key.md) that must correspond to a [term](_term.md) that represents a valid [enumeration choice of any type](_kind_key_term_enum_element.md).

For instance: `ISO_639_3_tlh`, which represents the [ISO standard language](`ISO_639_3.md) code for [Klingon](ISO_639_3_tlh.md) (*I bet you didn't know that Klingon is an ISO standard. ;-*).



```json
{
	"_scalar": {
		"_type": "_type_enum",
		"_kind_enum": ["ISO_3166_1"]
	}
}
```

This descriptor defines a [valid enumeration choice](_type_enum.md) belonging to the [ISO 3166 controlled vocabulary](ISO_316_1.md).

For instance: `ISO_3166_1_FRA`, which represents the country [France](ISO_3166_1_FRA.md) in the [3166 ISO standard](ISO_3166_1.md).



```json
{
	"_scalar": {
		"_type": "_type_object",
		"_kind_object": ["_range"]
	}
}
```

This descriptor defines an [object structure](_type_object.md) that must represent a [range](_range.md).

For instance look at [`_normal-range`](_normal-range.md) in the first example.



```json
{
	"_scalar": {
		"_type": "_type_struct"
	}
}
```

This descriptor defines an [object structure](_type_struct.md) of any type.



```json
{
	"_scalar": {
		"_type": "_type_handle"
	}
}
```

This descriptor defines a [document handle](_id.md).



```json
{
	"_scalar": {
		"_type": "_type_timestamp"
	}
}
```

This descriptor defines a [timestamp](_type_timestamp.md).

---

**`_code`**

```json
{
  "_aid" : [
    "type"
  ],
  "_gid" : "_type",
  "_lid" : "type",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_enum" : [
      "_type"
    ],
    "_type" : "_type_enum"
  }
}
```
