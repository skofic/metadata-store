# QUDT conversion multiplier
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>QUDT_multiplier</code></p>

> The multiplicative factor for converting a unit value to the SI coherent unit, as recorded in the QUDT ontology.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Quantities, Units, Dimensions and Types ontology](QUDT.md) |
| [Local identifier](_lid.md) | `multiplier` |
| [Global identifier](_gid.md) | `QUDT_multiplier` |
| [Official identifiers](_aid.md) | `multiplier` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "multiplier"
  ],
  "_gid" : "QUDT_multiplier",
  "_lid" : "multiplier",
  "_nid" : "QUDT"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** QUDT conversion multiplier

**[Definition](_definition.md):** The multiplicative factor for converting a unit value to the SI coherent unit, as recorded in the QUDT ontology.

**[Description](_description.md)**

Sourced from QUDT's `qudt:conversionMultiplier` RDF property. Part of the two-parameter linear conversion formula:

```
SI_value = value × QUDT_multiplier + QUDT_offset
```

For units that differ from the SI coherent unit by scale only (most units), [`QUDT_offset`](QUDT_offset.md) is zero and only this multiplier is needed. For SI coherent units the value is `1.0`.

This property records the value as found in the QUDT source. The operational conversion factor used by this dictionary is [`SI_factor`](SI_factor.md), which equals `QUDT_multiplier` in the vast majority of cases.

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
    "ISO_639_3_eng" : "QUDT conversion multiplier"
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
