# String range
<p style="color: #888; margin-top: -0.5em;"><code>_range_string</code></p>

> Typedef that defines the shape of a lexicographic string range object. A range must contain at most one minimum bound (`_string_min-inclusive` or `_string_min-exclusive`) and at most one maximum bound (`_string_max-inclusive` or `_string_max-exclusive`), and at least one bound must be present. Referenced by `_range_valid_string` and `_range_normal_string`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_range` |
| [Local identifier](_lid.md) | `string` |
| [Global identifier](_gid.md) | `_range_string` |
| [Official identifiers](_aid.md) | `string` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_range",
  "_lid": "string",
  "_gid": "_range_string",
  "_aid": [
    "string"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** String range

**[Definition](_definition.md):** Typedef that defines the shape of a lexicographic string range object. A range must contain at most one minimum bound (`_string_min-inclusive` or `_string_min-exclusive`) and at most one maximum bound (`_string_max-inclusive` or `_string_max-exclusive`), and at least one bound must be present. Referenced by `_range_valid_string` and `_range_normal_string`.

**[Description](_description.md)**

`_range_string` is a typedef term defining the shape of a string range object used by [`_range_valid_string`](_range_valid_string.md) and [`_range_normal_string`](_range_normal_string.md). It is the string counterpart of [`_range`](_range.md) and follows the same structural rules, but uses string-specific bound properties.

A string range object may contain:
- A lower bound: exactly one of [`_string_min-inclusive`](_string_min-inclusive.md) (≥) or [`_string_min-exclusive`](_string_min-exclusive.md) (>).
- An upper bound: exactly one of [`_string_max-inclusive`](_string_max-inclusive.md) (≤) or [`_string_max-exclusive`](_string_max-exclusive.md) (<).

Comparison is lexicographic (Unicode code-point order). At least one bound must be present.

**[Examples](_examples.md)**

A date range accepting dates from 2000-01-01 through 2099-12-31 (both bounds inclusive):

```json
{
	"_string_min-inclusive": "2000-01-01",
	"_string_max-inclusive": "2099-12-31"
}
```

A half-open range — any date from 2000 onwards:

```json
{
	"_string_min-inclusive": "2000-01-01"
}
```

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "String range"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md)

<details>
<summary>JSON</summary>

```json
{
  "_object": {
    "_closed": {
      "_required": [
        {
          "_selectors": [
            {
              "_all": {
                "_min-items": 1,
                "_max-items": 1
              }
            },
            {
              "_any": {
                "_min-items": 1
              }
            }
          ],
          "_selection": [
            [
              "_string_min-exclusive",
              "_string_min-inclusive"
            ],
            [
              "_string_max-exclusive",
              "_string_max-inclusive"
            ]
          ]
        }
      ]
    }
  }
}
```

</details>
