# String range maximum inclusive
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_string_max-inclusive</code></p>

> The closed upper bound property of a string range object. The validated string must be lexicographically less than or equal to this value (value ≤ bound). Used inside `_range_valid_string` or `_range_normal_string` objects; mutually exclusive with `_string_max-exclusive`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [String](_string.md) |
| [Local identifier](_lid.md) | `max-inclusive` |
| [Global identifier](_gid.md) | `_string_max-inclusive` |
| [Official identifiers](_aid.md) | `max-inclusive` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "max-inclusive"
  ],
  "_gid" : "_string_max-inclusive",
  "_lid" : "max-inclusive",
  "_nid" : "_string"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** String range maximum inclusive

**[Definition](_definition.md):** The closed upper bound property of a string range object. The validated string must be lexicographically less than or equal to this value (value ≤ bound). Used inside `_range_valid_string` or `_range_normal_string` objects; mutually exclusive with `_string_max-exclusive`.

**[Description](_description.md)**

`_string_max-inclusive` is a property of a [`_range_string`](_range_string.md) object. When present, the string value being validated must be **lexicographically less than or equal to** this bound (closed upper bound, code-point order). It is mutually exclusive with [`_string_max-exclusive`](_string_max-exclusive.md) — at most one maximum bound may appear in a single range object.

**[Examples](_examples.md)**

A date field accepting dates up to and including 2099-12-31:

```json
{
	"_range_valid_string": {
		"_string_max-inclusive": "2099-12-31"
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
    "ISO_639_3_eng" : "String range maximum inclusive"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [String](_string.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_string" : {

    }
  }
}
```

</details>
