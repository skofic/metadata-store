# Range minimum exclusive
<p style="color: #888; margin-top: -0.5em;"><code>_min-exclusive</code></p>

> The strict lower bound property of a numeric range object. The validated value must be strictly greater than this number (value > bound). Used inside `_range_valid` or `_range_normal` objects; mutually exclusive with `_min-inclusive`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `min-exclusive` |
| [Global identifier](_gid.md) | `_min-exclusive` |
| [Official identifiers](_aid.md) | `min-exclusive` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "min-exclusive"
  ],
  "_gid" : "_min-exclusive",
  "_lid" : "min-exclusive",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Range minimum exclusive

**[Definition](_definition.md):** The strict lower bound property of a numeric range object. The validated value must be strictly greater than this number (value > bound). Used inside `_range_valid` or `_range_normal` objects; mutually exclusive with `_min-inclusive`.

**[Description](_description.md)**

`_min-exclusive` is a property of a [`_range`](_range.md) object. When present, the numeric value being validated must be **strictly greater than** this bound (open lower bound). It is mutually exclusive with [`_min-inclusive`](_min-inclusive.md) — at most one minimum bound may appear in a single range object.

**[Examples](_examples.md)**

A value that must be strictly positive (greater than zero):

```json
{
	"_range_valid": {
		"_min-exclusive": 0
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
    "ISO_639_3_eng" : "Range minimum exclusive"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Number](_number.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_number" : {

    }
  }
}
```

</details>
