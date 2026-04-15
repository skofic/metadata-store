# String
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a> <a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a> <a href="_term_role_type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_string</code></p>

> The scalar data type for generic UTF-8 strings. Short, indexable text suitable for use as a tag, database field, or dictionary key. Parent type of all `_string_*` sub-types; `_regexp` may constrain the accepted format.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `string` |
| [Global identifier](_gid.md) | `_string` |
| [Official identifiers](_aid.md) | `string` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_string",
  "_lid" : "string",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** String

**[Definition](_definition.md):** The scalar data type for generic UTF-8 strings. Short, indexable text suitable for use as a tag, database field, or dictionary key. Parent type of all `_string_*` sub-types; `_regexp` may constrain the accepted format.

**[Description](_description.md)**

`_string` serves a dual role. As a type key inside [`_scalar`](_scalar.md), it declares that the value is any UTF-8 string. [`_regexp`](_regexp.md) may be used to constrain the accepted format. As a parent type, it is the root of all `_string_*` sub-types, which carry their own format constraint and do not accept [`_regexp`](_regexp.md).

Unlike [`_text`](_text.md), `_string` values are expected to be short and indexable — suitable for use as tags, property names, or dictionary keys. Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

A string constrained by a regular expression:

```json
{
	"_scalar": {
		"_string": {
			"_regexp": "^[A-Z]{2,3}$"
		}
	}
}
```

An unconstrained string:

```json
{
	"_scalar": {
		"_string": {}
	}
}
```

Stored values: `"hello"`, `"IT"`, `"john.doe"`, `"2024-01-15"`.

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
    "ISO_639_3_eng" : "String"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

**[Recommended properties](_recommended.md):** [Unit](_unit.md) · [Unit name](_unit_name.md) · [Unit symbol](_unit_symbol.md) · [Valid string range](_range_valid_string.md) · [Normal string range](_range_normal_string.md) · [Regular expression](_regexp.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {
      "_recommended" : [
        "_unit",
        "_unit_name",
        "_unit_symbol",
        "_range_valid_string",
        "_range_normal_string",
        "_regexp"
      ]
    }
  }
}
```

</details>
