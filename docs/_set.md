# Set
<p style="color: #888; margin-top: -0.5em;"><code>_set</code></p>

> The data shape property for an unordered collection of unique elements. Uses the type-as-key convention: its content is an object with exactly one property key that identifies the element type, and the value associated with that key is an object of companion properties. Uniqueness is enforced by restricting element types to comparable types only. An empty `_set` (`{}`) accepts elements of any comparable type without further constraint.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `set` |
| [Global identifier](_gid.md) | `_set` |
| [Official identifiers](_aid.md) | `set` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "set"
  ],
  "_gid" : "_set",
  "_lid" : "set",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Set

**[Definition](_definition.md):** The data shape property for an unordered collection of unique elements. Uses the type-as-key convention: its content is an object with exactly one property key that identifies the element type, and the value associated with that key is an object of companion properties. Uniqueness is enforced by restricting element types to comparable types only. An empty `_set` (`{}`) accepts elements of any comparable type without further constraint.

**[Description](_description.md)**

`_set` is the data shape for an unordered collection of values in which every element is unique. It uses the same **type-as-key** convention as [`_scalar`](_scalar.md): the property key present inside `_set` identifies the element type; its value is an object of **companion properties** that apply additional constraints. An empty `_set` (`{}`) imposes no type constraint beyond comparability.

Uniqueness requires that the element type be **comparable** — the validator must be able to determine whether two values are equal. Non-comparable types (`_text`, `_text_HTML`, `_text_Markdown`, `_text_SVG`) are therefore excluded. All other scalar types are permitted.

Allowed element types:

| Family | Types |
|---|---|
| Number | [`_number`](_number.md), [`_number_float`](_number_float.md), [`_number_integer`](_number_integer.md) |
| String | [`_string`](_string.md), [`_string_URI`](_string_URI.md), [`_string_Email`](_string_Email.md), [`_string_Hostname`](_string_Hostname.md), [`_string_IPv4`](_string_IPv4.md), [`_string_IPv6`](_string_IPv6.md), [`_string_YMD`](_string_YMD.md), [`_string_date`](_string_date.md), [`_string_time`](_string_time.md), [`_string_date-time`](_string_date-time.md), [`_string_LaTeX`](_string_LaTeX.md), [`_string_HEX`](_string_HEX.md), [`_string_regexp`](_string_regexp.md) |
| Term key | [`_term_key`](_term_key.md), [`_term_key_enum-root`](_term_key_enum-root.md), [`_term_key_enum-item`](_term_key_enum-item.md), [`_term_key_descriptor`](_term_key_descriptor.md) |
| Other | [`_handle`](_handle.md), [`_timestamp`](_timestamp.md), [`_boolean`](_boolean.md), [`_enum`](_enum.md) |

The optional [`_elements`](_elements.md) companion property constrains the number of elements in the set.

`_set` delegates to the [`_type_comparable`](_type_comparable.md) typedef, which encodes the full list of comparable types and recommends `_elements`. For a recursively nested variant that uses the same element-type constraint, see [`_nested`](_nested.md).

**[Examples](_examples.md)**

A set of ISO 639-3 language codes:

```json
{
	"_set": {
		"_enum": {
			"_enums": ["ISO_639_3"]
		}
	}
}
```

A set of integers with a size constraint:

```json
{
	"_set": {
		"_number_integer": {
			"_elements": {
				"_min-items": 1,
				"_max-items": 10
			}
		}
	}
}
```

A set of enumeration element term keys (any controlled vocabulary):

```json
{
	"_set": {
		"_term_key_enum-item": {}
	}
}
```

An unconstrained set — any comparable type accepted:

```json
{
	"_set": {}
}
```

<details>
<summary>JSON</summary>

```json
{
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_examples" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Set"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Type definition](_typedef.md): [Comparable data type](_type_comparable.md)

<details>
<summary>JSON</summary>

```json
{
  "_typedef" : "_type_comparable"
}
```

</details>
