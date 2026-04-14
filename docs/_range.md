# Numeric range
<p style="color: #888; margin-top: -0.5em;"><code>_range</code></p>

> Typedef that defines the shape of a numeric range object. A range must contain at most one minimum bound (`_min-inclusive` or `_min-exclusive`) and at most one maximum bound (`_max-inclusive` or `_max-exclusive`), and at least one bound must be present. Referenced by `_range_valid` and `_range_normal`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `range` |
| [Global identifier](_gid.md) | `_range` |
| [Official identifiers](_aid.md) | `range` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "range",
  "_gid": "_range",
  "_aid": [
    "range"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Numeric range

**[Definition](_definition.md):** Typedef that defines the shape of a numeric range object. A range must contain at most one minimum bound (`_min-inclusive` or `_min-exclusive`) and at most one maximum bound (`_max-inclusive` or `_max-exclusive`), and at least one bound must be present. Referenced by `_range_valid` and `_range_normal`.

**[Description](_description.md)**

`_range` is a typedef term defining the shape of a numeric range object used by [`_range_valid`](_range_valid.md) and [`_range_normal`](_range_normal.md). It is not used directly as a `_data` type — only through `_typedef: "_range"`.

A range object may contain:
- A lower bound: exactly one of [`_min-inclusive`](_min-inclusive.md) (≥) or [`_min-exclusive`](_min-exclusive.md) (>).
- An upper bound: exactly one of [`_max-inclusive`](_max-inclusive.md) (≤) or [`_max-exclusive`](_max-exclusive.md) (<).

At least one bound must be present. Both bounds may be omitted independently — a range with only a lower bound or only an upper bound is valid (open-ended range).

**[Examples](_examples.md)**

A closed interval from 0 to 100 (both bounds inclusive):

```json
{
	"_min-inclusive": 0,
	"_max-inclusive": 100
}
```

A half-open interval — values must be ≥ 0 but may be any size (lower bound only):

```json
{
	"_min-inclusive": 0
}
```

A half-open interval — values must be strictly less than 1.0 (upper bound only):

```json
{
	"_max-exclusive": 1.0
}
```

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Numeric range"
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
              "_min-exclusive",
              "_min-inclusive"
            ],
            [
              "_max-exclusive",
              "_max-inclusive"
            ]
          ]
        }
      ]
    }
  }
}
```

</details>
