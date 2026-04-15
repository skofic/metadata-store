# Multiplicative factor
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>SI_factor</code></p>

> The multiplicative factor for converting a value in this unit to the SI coherent unit for the same quantity kind.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [International System of Units](SI.md) |
| [Local identifier](_lid.md) | `factor` |
| [Global identifier](_gid.md) | `SI_factor` |
| [Official identifiers](_aid.md) | `factor` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "factor"
  ],
  "_gid" : "SI_factor",
  "_lid" : "factor",
  "_nid" : "SI"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Multiplicative factor

**[Definition](_definition.md):** The multiplicative factor for converting a value in this unit to the SI coherent unit for the same quantity kind.

**[Description](_description.md)**

Part of the two-parameter linear conversion formula:

```
SI_value = value × SI_factor + SI_offset
```

For SI coherent units ([`SI_base`](SI_base.md) is `true`) this value is `1.0`. For all other units, multiply the stored value by this factor — and add [`SI_offset`](SI_offset.md) if present — to obtain the equivalent value in the SI coherent unit.

Example: 1 tonne per hectare × 0.1 = 0.1 kg/m².

The value is sourced from QUDT's `qudt:conversionMultiplier` at import time and stored in parallel as [`QUDT_multiplier`](QUDT_multiplier.md). `SI_factor` will equal `QUDT_multiplier` in the vast majority of cases; both are retained to distinguish the source record from the operational value.

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
    "ISO_639_3_eng" : "Multiplicative factor"
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
