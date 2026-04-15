# Elements count range
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_elements</code></p>

> An object constraining the minimum and maximum number of elements in a collection. At least one of `_min-items` or `_max-items` must be present.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `elements` |
| [Global identifier](_gid.md) | `_elements` |
| [Official identifiers](_aid.md) | `elements` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "elements"
  ],
  "_gid" : "_elements",
  "_lid" : "elements",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Elements count range

**[Definition](_definition.md):** An object constraining the minimum and maximum number of elements in a collection. At least one of `_min-items` or `_max-items` must be present.

**[Description](_description.md)**

`_elements` constrains the cardinality of a collection. It may be added to [`_array`](_array.md), [`_nested`](_nested.md), [`_set`](_set.md), and [`_tuple`](_tuple.md) sections, and may also be used alongside [`_typedef`](_typedef.md) in an `_array` context.

Both [`_min-items`](_min-items.md) and [`_max-items`](_max-items.md) are optional; omitting one leaves that end of the interval open. An absent `_min-items` means the collection may be empty; an absent `_max-items` means no upper limit is imposed.

**[Examples](_examples.md)**

A collection must contain between 1 and 10 elements:

```json
{"_elements": {"_min-items": 1, "_max-items": 10}}
```

A collection must contain at least 1 element (no upper limit):

```json
{"_elements": {"_min-items": 1}}
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
    "ISO_639_3_eng" : "Elements count range"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

**[Required properties](_required.md)**

[Optional selection](_any.md) ([Minimum element count](_min-items.md): 1)
[Minimum element count](_min-items.md) · [Maximum element count](_max-items.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {
      "_required" : [
        {
          "_selection" : [
            "_min-items",
            "_max-items"
          ],
          "_selectors" : [
            {
              "_any" : {
                "_min-items" : 1
              }
            }
          ]
        }
      ]
    }
  }
}
```

</details>
