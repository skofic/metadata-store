# Range maximum exclusive
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_max-exclusive</code></p>

> The strict upper bound property of a numeric range object. The validated value must be strictly less than this number (value < bound). Used inside `_range_valid` or `_range_normal` objects; mutually exclusive with `_max-inclusive`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `max-exclusive` |
| [Global identifier](_gid.md) | `_max-exclusive` |
| [Official identifiers](_aid.md) | `max-exclusive` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "max-exclusive"
  ],
  "_gid" : "_max-exclusive",
  "_lid" : "max-exclusive",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Range maximum exclusive

**[Definition](_definition.md):** The strict upper bound property of a numeric range object. The validated value must be strictly less than this number (value < bound). Used inside `_range_valid` or `_range_normal` objects; mutually exclusive with `_max-inclusive`.

**[Description](_description.md)**

`_max-exclusive` is a property of a [`_range`](_range.md) object. When present, the numeric value being validated must be **strictly less than** this bound (open upper bound). It is mutually exclusive with [`_max-inclusive`](_max-inclusive.md) — at most one maximum bound may appear in a single range object.

**[Examples](_examples.md)**

A probability value that must be in the range [0, 1) — zero is allowed, one is not:

```json
{
	"_range_valid": {
		"_min-inclusive": 0.0,
		"_max-exclusive": 1.0
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
    "ISO_639_3_eng" : "Range maximum exclusive"
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
