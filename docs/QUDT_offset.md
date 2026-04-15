# QUDT conversion offset
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>QUDT_offset</code></p>

> The additive offset applied after the conversion multiplier when converting a unit value to the SI coherent unit, as recorded in the QUDT ontology.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Quantities, Units, Dimensions and Types ontology](QUDT.md) |
| [Local identifier](_lid.md) | `offset` |
| [Global identifier](_gid.md) | `QUDT_offset` |
| [Official identifiers](_aid.md) | `offset` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "offset"
  ],
  "_gid" : "QUDT_offset",
  "_lid" : "offset",
  "_nid" : "QUDT"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** QUDT conversion offset

**[Definition](_definition.md):** The additive offset applied after the conversion multiplier when converting a unit value to the SI coherent unit, as recorded in the QUDT ontology.

**[Description](_description.md)**

Sourced from QUDT's `qudt:conversionOffset` RDF property. Part of the two-parameter linear conversion formula:

```
SI_value = value × QUDT_multiplier + QUDT_offset
```

Non-zero only for units whose zero point differs from the SI coherent unit. The most common case is degrees Celsius: offset = 273.15 (converting to kelvin). When zero, this property is omitted from the unit term's `_prop` section.

This property records the value as found in the QUDT source. The operational offset used by this dictionary is [`SI_offset`](SI_offset.md).

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
    "ISO_639_3_eng" : "QUDT conversion offset"
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
