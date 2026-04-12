# Maximum element count
<p style="color: #888; margin-top: -0.5em;"><code>_max-items</code></p>

> The maximum number of elements a collection may contain. The bound is inclusive. A positive integer.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `max-items` |
| [Global identifier](_gid.md) | `_max-items` |
| [Official identifiers](_aid.md) | `max-items` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "max-items"
  ],
  "_gid" : "_max-items",
  "_lid" : "max-items",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Maximum element count

**[Definition](_definition.md):** The maximum number of elements a collection may contain. The bound is inclusive. A positive integer.

**[Description](_description.md)**

`_max-items` sets the inclusive upper bound on the number of elements in an [`_array`](_array.md), [`_nested`](_nested.md), [`_set`](_set.md), or [`_tuple`](_tuple.md). A collection is valid only if its element count is less than or equal to this value.

When `_max-items` is absent, no upper limit is imposed on the collection size. The value must be a positive integer (at least 1).

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
  "_title" : {
    "ISO_639_3_eng" : "Maximum element count"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Integer number](_number_integer.md) ([Valid numeric range](_range_valid.md): [Range minimum inclusive](_min-inclusive.md): 1)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_number_integer" : {
      "_range_valid" : {
        "_min-inclusive" : 1
      }
    }
  }
}
```

</details>
