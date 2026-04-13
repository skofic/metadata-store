# Range minimum inclusive
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_min-inclusive</code></p>

> The closed lower bound property of a numeric range object. The validated value must be greater than or equal to this number (value ≥ bound). Used inside `_range_valid` or `_range_normal` objects; mutually exclusive with `_min-exclusive`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `min-inclusive` |
| [Global identifier](_gid.md) | `_min-inclusive` |
| [Official identifiers](_aid.md) | `min-inclusive` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "min-inclusive"
  ],
  "_gid" : "_min-inclusive",
  "_lid" : "min-inclusive",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Range minimum inclusive

**[Definition](_definition.md):** The closed lower bound property of a numeric range object. The validated value must be greater than or equal to this number (value ≥ bound). Used inside `_range_valid` or `_range_normal` objects; mutually exclusive with `_min-exclusive`.

**[Description](_description.md)**

`_min-inclusive` is a property of a [`_range`](_range.md) object. When present, the numeric value being validated must be **greater than or equal to** this bound (closed lower bound). It is mutually exclusive with [`_min-exclusive`](_min-exclusive.md) — at most one minimum bound may appear in a single range object.

**[Examples](_examples.md)**

A value that must be non-negative (zero or greater):

```json
{
	"_range_valid": {
		"_min-inclusive": 0
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
    "ISO_639_3_eng" : "Range minimum inclusive"
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
