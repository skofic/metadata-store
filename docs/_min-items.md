# Minimum element count
<p style="color: #888; margin-top: -0.5em;"><code>_min-items</code></p>

> The minimum number of elements a collection must contain. The bound is inclusive. A non-negative integer.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `min-items` |
| [Global identifier](_gid.md) | `_min-items` |
| [Official identifiers](_aid.md) | `min-items` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "min-items"
  ],
  "_gid" : "_min-items",
  "_lid" : "min-items",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Minimum element count

**[Definition](_definition.md):** The minimum number of elements a collection must contain. The bound is inclusive. A non-negative integer.

**[Description](_description.md)**

`_min-items` sets the inclusive lower bound on the number of elements in an [`_array`](_array.md), [`_nested`](_nested.md), [`_set`](_set.md), or [`_tuple`](_tuple.md). A collection is valid only if its element count is greater than or equal to this value.

When `_min-items` is absent, the collection may be empty (element count of zero is permitted). The value must be a non-negative integer.

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
    "ISO_639_3_eng" : "Minimum element count"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Integer number](_number_integer.md) ([Valid numeric range](_range_valid.md): [Range minimum inclusive](_min-inclusive.md): 0)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_number_integer" : {
      "_range_valid" : {
        "_min-inclusive" : 0
      }
    }
  }
}
```

</details>
