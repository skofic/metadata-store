# `_type`

**`_title`**

Data Type

**`_definition`**

The data type of the value in a scalar section. This property is required whenever the scalar section is not empty, and constrains what kind of value the descriptor represents. Valid values form an enumeration whose elements define all supported scalar types.

**`_description`**

This property defines the *data type* of the value in a [`_scalar`](_scalar.md) section. It is required whenever [`_scalar`](_scalar.md) is not empty, and its value must be one of the following enumeration elements:

- [`_type_boolean`](_type_boolean.md): The value is a `true` or `false` boolean. No other [`_scalar`](_scalar.md) properties are expected.

- [`_type_number`](_type_number.md): The value is a generic numeric value stored as a double-precision floating-point number; both integer and fractional values are accepted. The [`_scalar`](_scalar.md) section may include the following additional properties:
  - [`_unit`](_unit.md): The unit in which the number is expressed, drawn from the unit enumeration.
  - [`_unit-name`](_unit-name.md): A free-text unit name, used when the required unit is not available in the unit enumeration.
  - [`_unit-symbol`](_unit-symbol.md): A unit symbol expressed as a [LaTeX](https://www.latex-project.org) string, used when the required unit is not available in the unit enumeration.
  - [`_decimals`](_decimals.md): The number of decimal places to display when rendering the value. The stored value is not rounded.
  - [`_valid-range`](_valid-range.md): The numeric bounds outside which the value is considered invalid.
  - [`_normal-range`](_normal-range.md): The numeric bounds outside which the value is considered an outlier.

- [`_type_number_integer`](_type_number_integer.md): The value is an integer — a whole number with no decimal part. The [`_scalar`](_scalar.md) section may include the following additional properties:
  - [`_unit`](_unit.md): The unit in which the integer is expressed.
  - [`_unit-name`](_unit-name.md): A free-text unit name, used when the required unit is not available in the unit enumeration.
  - [`_unit-symbol`](_unit-symbol.md): A unit symbol as a LaTeX string, used when the required unit is not available in the unit enumeration.
  - [`_valid-range`](_valid-range.md): The numeric bounds outside which the value is considered invalid.
  - [`_normal-range`](_normal-range.md): The numeric bounds outside which the value is considered an outlier.

- [`_type_number_timestamp`](_type_number_timestamp.md): The value is a [Unix timestamp](https://www.unixtimestamp.com) — a number representing a precise moment in time as seconds elapsed since 1 January 1970 UTC. The [`_scalar`](_scalar.md) section may include:
  - [`_valid-range`](_valid-range.md): The timestamp bounds outside which the value is considered invalid.
  - [`_normal-range`](_normal-range.md): The timestamp bounds outside which the value is considered an outlier.

- [`_type_string`](_type_string.md): The value is a UTF-8 string. The [`_scalar`](_scalar.md) section may include the following additional properties:
  - [`_format`](_format.md): The encoding format of the string, drawn from the following enumeration:
    - [`_format_markdown`](_format_markdown.md): The string is in [Markdown](https://www.markdownguide.org/getting-started/) format.
    - [`_format_html`](_format_html.md): The string is in [HTML](https://en.wikipedia.org/wiki/HTML) format.
    - [`_format_uri`](_format_uri.md): The string is a [Uniform Resource Identifier](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier) (URI).
    - [`_format_hex`](_format_hex.md): The string is a [hexadecimal](https://en.wikipedia.org/wiki/Hexadecimal) value.
    - [`_format_svg`](_format_svg.md): The string is an [SVG](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) image.
    - [`_format_email`](_format_email.md): The string is an [email address](https://en.wikipedia.org/wiki/Email_address).
    - [`_format_date`](_format_date.md): The string is a date, equivalent to the JSON Schema `date` format.
    - [`_format_time`](_format_time.md): The string is a time, equivalent to the JSON Schema `time` format.
    - [`_format_date-time`](_format_date-time.md): The string is a date and time, equivalent to the JSON Schema `date-time` format.
    - [`_format_hostname`](_format_hostname.md): The string is an [internet hostname](https://en.wikipedia.org/wiki/Hostname).
    - [`_format_ipv4`](_format_ipv4.md): The string is an [IPv4 address](https://en.wikipedia.org/wiki/IPv4).
    - [`_format_ipv6`](_format_ipv6.md): The string is an [IPv6 address](https://en.wikipedia.org/wiki/IPv6).
  - [`_unit`](_unit.md): The unit in which the string value is expressed.
  - [`_unit-name`](_unit-name.md): A free-text unit name.
  - [`_unit-symbol`](_unit-symbol.md): A unit symbol as a LaTeX string.
  - [`_regexp`](_regexp.md): A [regular expression](https://en.wikipedia.org/wiki/Regular_expression) in ECMA 262 dialect used to validate the string value.
  - [`_valid-range_string`](_valid-range_string.md): The string bounds outside which the value is considered invalid.
  - [`_normal-range_string`](_normal-range_string.md): The string bounds outside which the value is considered an outlier.

- [`_type_string_key`](_type_string_key.md): The value is a string representing the [`_key`](_key.md) of a document in any collection of the database. The [`_scalar`](_scalar.md) section may include:
  - [`_kind_string_key`](_kind_string_key.md): An array of enumeration values constraining which type of term the key may reference:
    - [`_any-term`](_any-term.md): The key may reference any term.
    - [`_any-enum`](_any-enum.md): The key may reference any enumeration type — i.e., any term that serves as the root of a controlled vocabulary graph.
    - [`_any-enum_element`](_any-enum_element.md): The key may reference any enumeration element — i.e., any term that is a valid choice within a controlled vocabulary, connected to an enumeration root via a [`_predicate_enum-of`](_predicate_enum-of.md) edge.
    - [`_any-object`](_any-object.md): The key may reference any term that defines an object schema — i.e., any term with a [`_rule`](_rule.md) section.
    - [`_any-descriptor`](_any-descriptor.md): The key may reference any descriptor — i.e., any term with a [`_data`](_data.md) section.

- [`_type_string_handle`](_type_string_handle.md): The value is a string representing the [`_id`](_id.md) (document handle in `<collection>/<_key>` form) of a record in any collection. No other [`_scalar`](_scalar.md) properties are expected.

- [`_type_string_enum`](_type_string_enum.md): The value is a string representing the [`_gid`](_gid.md) of a term that is an element of a controlled vocabulary. The [`_scalar`](_scalar.md) section may include the following property:
  - [`_kind_string_enum`](_kind_string_enum.md): An array of enumeration type `_gid`s — i.e., the roots of the controlled vocabulary graphs — identifying the vocabularies from which the value must be drawn. The value must be a valid enumeration *element* of at least one of the listed roots. When omitted, the value may be any enumeration element from any controlled vocabulary.

- [`_type_string_date`](_type_string_date.md): The value is a string representing a full or partial date in `YYYYMMDD` format; the day, or the day and month, may be omitted, yielding `YYYYMM` or `YYYY` respectively. The [`_scalar`](_scalar.md) section may include:
  - [`_valid-range_date`](_valid-range_date.md): The date bounds outside which the value is considered invalid.
  - [`_normal-range_date`](_normal-range_date.md): The date bounds outside which the value is considered an outlier.

- [`_type_struct`](_type_struct.md): The value is a free-form object whose properties need not be defined in the dictionary. No other [`_scalar`](_scalar.md) properties are expected.

- [`_type_object`](_type_object.md): The value is an object whose properties must correspond to descriptor `_gid`s defined in the dictionary. The [`_scalar`](_scalar.md) section may include:
  - [`_kind_object`](_kind_object.md): An array of `_gid`s of object definition terms. The value must conform to at least one of the listed definitions. When absent, the value may be any object whose properties are defined as descriptors in the dictionary.

- [`_type_object_geojson`](_type_object_geojson.md): The value is a [GeoJSON](https://geojson.org) object representing a geographic feature. The object must not be empty, and no other [`_scalar`](_scalar.md) properties are expected.

When `_type` is omitted, the [`_scalar`](_scalar.md) section must be empty, meaning the value may be of any scalar type without constraint.

---

**`_data`**

```json
{
  "_scalar" : {
    "_kind_string_enum" : [
      "_type"
    ],
    "_type" : "_type_string_enum"
  }
}
```
