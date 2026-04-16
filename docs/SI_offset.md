# Additive offset
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>SI_offset</code></p>

> The additive offset applied after the SI factor when converting a value in this unit to the SI coherent unit.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [International System of Units](SI.md) |
| [Local identifier](_lid.md) | `offset` |
| [Global identifier](_gid.md) | `SI_offset` |
| [Official identifiers](_aid.md) | `offset` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "offset"
  ],
  "_gid" : "SI_offset",
  "_lid" : "offset",
  "_nid" : "SI"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Additive offset

**[Definition](_definition.md):** The additive offset applied after the SI factor when converting a value in this unit to the SI coherent unit.

**[Description](_description.md)**

Part of the two-parameter linear conversion formula:

```
SI_value = value × SI_factor + SI_offset
```

Non-zero only for units whose zero point is shifted relative to the SI coherent unit. The most common case is thermodynamic temperature: 1 °C × 1.0 + 273.15 = 274.15 K.

When zero, this property is omitted from the unit term's [`_prop`](_prop.md) section — do not write `0` or `0.0`. The value is sourced from QUDT's `qudt:conversionOffset` at import time and stored in parallel as [`QUDT_offset`](QUDT_offset.md).

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
    "ISO_639_3_eng" : "Additive offset"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Floating point number](_number_float.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_number_float" : {

    }
  }
}
```

</details>
