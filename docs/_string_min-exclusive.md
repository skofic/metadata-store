# String range minimum exclusive
<p style="color: #888; margin-top: -0.5em;"><code>_string_min-exclusive</code></p>

> The strict lower bound property of a string range object. The validated string must be lexicographically greater than this value (value > bound). Used inside `_range_valid_string` or `_range_normal_string` objects; mutually exclusive with `_string_min-inclusive`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [String](_string.md) |
| [Local identifier](_lid.md) | `min-exclusive` |
| [Global identifier](_gid.md) | `_string_min-exclusive` |
| [Official identifiers](_aid.md) | `min-exclusive` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "min-exclusive"
  ],
  "_gid" : "_string_min-exclusive",
  "_lid" : "min-exclusive",
  "_nid" : "_string"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** String range minimum exclusive

**[Definition](_definition.md):** The strict lower bound property of a string range object. The validated string must be lexicographically greater than this value (value > bound). Used inside `_range_valid_string` or `_range_normal_string` objects; mutually exclusive with `_string_min-inclusive`.

**[Description](_description.md)**

`_string_min-exclusive` is a property of a [`_range_string`](_range_string.md) object. When present, the string value being validated must be **lexicographically greater than** this bound (open lower bound, code-point order). It is mutually exclusive with [`_string_min-inclusive`](_string_min-inclusive.md) — at most one minimum bound may appear in a single range object.

**[Examples](_examples.md)**

A date field that must be strictly after 1999-12-31 (i.e., from 2000 onwards):

```json
{
	"_range_valid_string": {
		"_string_min-exclusive": "1999-12-31"
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
    "ISO_639_3_eng" : "String range minimum exclusive"
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
