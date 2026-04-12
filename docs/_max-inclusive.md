# Range maximum inclusive
<p style="color: #888; margin-top: -0.5em;"><code>_max-inclusive</code></p>

> The closed upper bound property of a numeric range object. The validated value must be less than or equal to this number (value ≤ bound). Used inside `_range_valid` or `_range_normal` objects; mutually exclusive with `_max-exclusive`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `max-inclusive` |
| [Global identifier](_gid.md) | `_max-inclusive` |
| [Official identifiers](_aid.md) | `max-inclusive` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "max-inclusive"
  ],
  "_gid" : "_max-inclusive",
  "_lid" : "max-inclusive",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Range maximum inclusive

**[Definition](_definition.md):** The closed upper bound property of a numeric range object. The validated value must be less than or equal to this number (value ≤ bound). Used inside `_range_valid` or `_range_normal` objects; mutually exclusive with `_max-exclusive`.

**[Description](_description.md)**

`_max-inclusive` is a property of a [`_range`](_range.md) object. When present, the numeric value being validated must be **less than or equal to** this bound (closed upper bound). It is mutually exclusive with [`_max-exclusive`](_max-exclusive.md) — at most one maximum bound may appear in a single range object.

**[Examples](_examples.md)**

A percentage value that must be between 0 and 100 (both bounds inclusive):

```json
{
	"_range_valid": {
		"_min-inclusive": 0,
		"_max-inclusive": 100
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
    "ISO_639_3_eng" : "Range maximum inclusive"
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
