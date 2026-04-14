# Dictionary value
<p style="color: #888; margin-top: -0.5em;"><code>_dict_value</code></p>

> The sub-property of a dictionary that defines the type and shape of its values. At most one data shape property may be present, following the same conventions as a `_data` section. When empty, the value may be of any shape and type.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_dict` |
| [Local identifier](_lid.md) | `value` |
| [Global identifier](_gid.md) | `_dict_value` |
| [Official identifiers](_aid.md) | `value` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_dict",
  "_lid": "value",
  "_gid": "_dict_value",
  "_aid": [
    "value"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Dictionary value

**[Definition](_definition.md):** The sub-property of a dictionary that defines the type and shape of its values. At most one data shape property may be present, following the same conventions as a `_data` section. When empty, the value may be of any shape and type.

**[Description](_description.md)**

`_dict_value` defines the type of the value side of a dictionary entry. At most one shape property may be present — one of [`_scalar`](_scalar.md), [`_object`](_object.md), [`_array`](_array.md), [`_set`](_set.md), [`_tuple`](_tuple.md), [`_nested`](_nested.md), [`_dict`](_dict.md), or [`_typedef`](_typedef.md).

When `_dict_value` is an **empty object** (`{}`), the value side accepts any value of any shape and type without constraint.

The shape sub-properties follow the same definitions as their counterparts in [`_data`](_data.md), making the dictionary structure fully recursive. A dictionary whose values are themselves dictionaries, or whose values are arrays of sets, is equally valid.

**[Examples](_examples.md)**

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

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Dictionary value"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Type definition](_typedef.md): `_data`

<details>
<summary>JSON</summary>

```json
{
  "_typedef": "_data"
}
```

</details>
