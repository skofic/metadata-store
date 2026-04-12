# String range maximum exclusive
<p style="color: #888; margin-top: -0.5em;"><code>_string_max-exclusive</code></p>

> The strict upper bound property of a string range object. The validated string must be lexicographically less than this value (value < bound). Used inside `_range_valid_string` or `_range_normal_string` objects; mutually exclusive with `_string_max-inclusive`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [String](_string.md) |
| [Local identifier](_lid.md) | `max-exclusive` |
| [Global identifier](_gid.md) | `_string_max-exclusive` |
| [Official identifiers](_aid.md) | `max-exclusive` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "max-exclusive"
  ],
  "_gid" : "_string_max-exclusive",
  "_lid" : "max-exclusive",
  "_nid" : "_string"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** String range maximum exclusive

**[Definition](_definition.md):** The strict upper bound property of a string range object. The validated string must be lexicographically less than this value (value < bound). Used inside `_range_valid_string` or `_range_normal_string` objects; mutually exclusive with `_string_max-inclusive`.

**[Description](_description.md)**

`_string_max-exclusive` is a property of a [`_range_string`](_range_string.md) object. When present, the string value being validated must be **lexicographically less than** this bound (open upper bound, code-point order). It is mutually exclusive with [`_string_max-inclusive`](_string_max-inclusive.md) — at most one maximum bound may appear in a single range object.

**[Examples](_examples.md)**

A date field accepting dates strictly before 2100-01-01:

```json
{
	"_range_valid_string": {
		"_string_max-exclusive": "2100-01-01"
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
    "ISO_639_3_eng" : "String range maximum exclusive"
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
