# Dictionary
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_dict</code></p>

> The data shape property for a key/value structure with explicitly typed keys and values. Both `_dict_key` and `_dict_value` must be present: `_dict_key` constrains the key type, `_dict_value` defines the value shape.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `dict` |
| [Global identifier](_gid.md) | `_dict` |
| [Official identifiers](_aid.md) | `dict` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "dict"
  ],
  "_gid" : "_dict",
  "_lid" : "dict",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Dictionary

**[Definition](_definition.md):** The data shape property for a key/value structure with explicitly typed keys and values. Both `_dict_key` and `_dict_value` must be present: `_dict_key` constrains the key type, `_dict_value` defines the value shape.

**[Description](_description.md)**

A *dictionary* is a set of key/value pairs in which both keys and values are typed. Keys are defined by the required [`_dict_key`](_dict_key.md) sub-property, which constrains the key to a string-compatible comparable type using the type-as-key convention. Values are defined by the required [`_dict_value`](_dict_value.md) sub-property, which specifies the data shape of dictionary values — making the dictionary structure fully recursive when the value type is itself a dictionary. When `_dict_value` is an empty object, values may be of any type and shape.

The canonical use of `_dict` in the core dictionary is the multilingual string structure used throughout the [`_info`](_info.md) section: keys are ISO 639-3 language [`_gid`](_gid.md)s (constrained with [`_enum`](_enum.md) to the [`ISO_639_3`](ISO_639_3.md) vocabulary) and values are plain strings.

**[Examples](_examples.md)**

A multilingual string — ISO 639-3 language codes as keys, plain strings as values:

```json
{
	"_data": {
		"_dict": {
			"_dict_key": {
				"_enum": {
					"_enums": ["ISO_639_3"]
				}
			},
			"_dict_value": {
				"_scalar": {
					"_string": {}
				}
			}
		}
	}
}
```

A dictionary mapping descriptor term keys to arrays of integers:

```json
{
	"_data": {
		"_dict": {
			"_dict_key": {
				"_term_key_descriptor": {}
			},
			"_dict_value": {
				"_array": {
					"_scalar": {
						"_number_integer": {}
					}
				}
			}
		}
	}
}
```

A recursive dictionary — ISO 3166-3 country codes as outer keys, multilingual strings as values (each value is itself a dictionary of language codes to strings):

```json
{
	"_data": {
		"_dict": {
			"_dict_key": {
				"_enum": {
					"_enums": ["ISO_3166_3"]
				}
			},
			"_dict_value": {
				"_dict": {
					"_dict_key": {
						"_enum": {
							"_enums": ["ISO_639_3"]
						}
					},
					"_dict_value": {
						"_scalar": {
							"_string": {}
						}
					}
				}
			}
		}
	}
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
    "ISO_639_3_eng" : "Dictionary"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

**[Required properties](_required.md)**

[Mandatory selection](_all.md)
[Dictionary key](_dict_key.md) · [Dictionary value](_dict_value.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {
      "_required" : [
        {
          "_selection" : [
            "_dict_key",
            "_dict_value"
          ],
          "_selectors" : [
            {
              "_all" : {

              }
            }
          ]
        }
      ]
    }
  }
}
```

</details>
