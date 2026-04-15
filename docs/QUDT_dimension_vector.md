# Dimension vector
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>QUDT_dimension_vector</code></p>

> The QUDT dimension vector string encoding the SI dimensional exponents of a quantity kind.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [QUDT dimensional analysis](QUDT_dimension.md) |
| [Local identifier](_lid.md) | `vector` |
| [Global identifier](_gid.md) | `QUDT_dimension_vector` |
| [Official identifiers](_aid.md) | `vector` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "vector"
  ],
  "_gid" : "QUDT_dimension_vector",
  "_lid" : "vector",
  "_nid" : "QUDT_dimension"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Dimension vector

**[Definition](_definition.md):** The QUDT dimension vector string encoding the SI dimensional exponents of a quantity kind.

**[Description](_description.md)**

Sourced from QUDT's `qudt:dimensionVectorForSI` RDF property. Encodes the physical dimension of a quantity kind as a compact string of eight dimension-exponent pairs in the fixed order:

| Letter | SI base dimension |
|--------|------------------|
| A | Amount of substance (mol) |
| E | Electric current (A) |
| L | Length (m) |
| I | Luminous intensity (cd) |
| M | Mass (kg) |
| H | Thermodynamic temperature (K) |
| T | Time (s) |
| D | Dimensionless ratio |

Each pair is the letter followed by its signed integer exponent. Example: `A0E0L-2I0M1H0T0D0` represents mass per area (M¹·L⁻²). Dimensionless quantities have all exponents zero except D.

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
    "ISO_639_3_eng" : "Dimension vector"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [String](_string.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_string" : {

    }
  }
}
```

</details>
