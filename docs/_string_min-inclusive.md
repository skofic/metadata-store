# String range minimum inclusive
<p style="color: #888; margin-top: -0.5em;"><code>_string_min-inclusive</code></p>

> The closed lower bound property of a string range object. The validated string must be lexicographically greater than or equal to this value (value ≥ bound). Used inside `_range_valid_string` or `_range_normal_string` objects; mutually exclusive with `_string_min-exclusive`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [String](_string.md) |
| [Local identifier](_lid.md) | `min-inclusive` |
| [Global identifier](_gid.md) | `_string_min-inclusive` |
| [Official identifiers](_aid.md) | `min-inclusive` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "min-inclusive"
  ],
  "_gid" : "_string_min-inclusive",
  "_lid" : "min-inclusive",
  "_nid" : "_string"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** String range minimum inclusive

**[Definition](_definition.md):** The closed lower bound property of a string range object. The validated string must be lexicographically greater than or equal to this value (value ≥ bound). Used inside `_range_valid_string` or `_range_normal_string` objects; mutually exclusive with `_string_min-exclusive`.

**[Description](_description.md)**

`_string_min-inclusive` is a property of a [`_range_string`](_range_string.md) object. When present, the string value being validated must be **lexicographically greater than or equal to** this bound (closed lower bound, code-point order). It is mutually exclusive with [`_string_min-exclusive`](_string_min-exclusive.md) — at most one minimum bound may appear in a single range object.

**[Examples](_examples.md)**

A date field accepting any date from 2000-01-01 onwards (inclusive):

```json
{
	"_range_valid_string": {
		"_string_min-inclusive": "2000-01-01"
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
    "ISO_639_3_eng" : "String range minimum inclusive"
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
