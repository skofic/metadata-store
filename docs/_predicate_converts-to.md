# Converts to
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_converts-to</code></p>

> A bidirectional linear conversion relationship between two unit terms of the same quantity kind. A single edge encodes both conversion directions in [`_path_data`](_path_data.md), keyed by the target unit handle.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Relationship predicate](_predicate.md) |
| [Local identifier](_lid.md) | `converts-to` |
| [Global identifier](_gid.md) | `_predicate_converts-to` |
| [Official identifiers](_aid.md) | `converts-to` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "converts-to"
  ],
  "_gid" : "_predicate_converts-to",
  "_lid" : "converts-to",
  "_nid" : "_predicate"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Converts to

**[Definition](_definition.md):** A bidirectional linear conversion relationship between two unit terms of the same quantity kind. A single edge encodes both conversion directions in [`_path_data`](_path_data.md), keyed by the target unit handle.

**[Description](_description.md)**

Unlike other predicates that follow the many-to-one direction convention, `_predicate_converts-to` is **bidirectional**: one edge encodes conversions in both directions between two unit terms. The [`_from`](_from.md) and [`_to`](_to.md) endpoint assignment is arbitrary — which direction to apply is determined at query time by reading [`_path_data`](_path_data.md) keyed by the **target** unit handle.

The `_path_data` object contains exactly two entries, one per endpoint unit:

- `_path_data[handle_A]` — the formula to convert **to** unit A (i.e. from the other unit)
- `_path_data[handle_B]` — the formula to convert **to** unit B (i.e. from the other unit)

Each formula follows the two-parameter linear model:

```
result = value × factor + offset
```

For pure scale conversions (the vast majority of units), `offset` is absent — it is only written when non-zero (temperature scales with shifted zero points: °C ↔ K, °F ↔ K, °C ↔ °F).

**Query pattern**: given two unit handles A and B, locate the single edge where `{_from, _to} = {A, B}` in either order, then read `_path_data[B_handle]` to obtain the formula for converting a value in A to B.

**Edge ordering convention**: when writing conversion edges, the unit with the larger [`SI_factor`](SI_factor.md) (the numerically bigger unit) is placed in `_from`, and the SI coherent unit (if one of the pair) is always `_from`. This ordering is for readability only — it has no semantic effect.

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
  "_domn" : {
    "_term_role" : [
      "..."
    ]
  },
  "_title" : {
    "ISO_639_3_eng" : "Converts to"
  }
}
```

</details>
