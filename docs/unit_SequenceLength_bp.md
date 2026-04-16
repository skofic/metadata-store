# Base pair (bp)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_SequenceLength_bp</code></p>

> The fundamental unit of nucleic acid sequence length: one complementary pair of nucleotide bases (adenine–thymine or guanine–cytosine in DNA).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Sequence length](unit_SequenceLength.md) |
| [Local identifier](_lid.md) | `bp` |
| [Global identifier](_gid.md) | `unit_SequenceLength_bp` |
| [Official identifiers](_aid.md) | `bp` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "bp"
  ],
  "_gid" : "unit_SequenceLength_bp",
  "_lid" : "bp",
  "_name" : "Base pair",
  "_nid" : "unit_SequenceLength",
  "_symbol" : "\\mathrm{bp}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Base pair (bp)

**[Definition](_definition.md):** The fundamental unit of nucleic acid sequence length: one complementary pair of nucleotide bases (adenine–thymine or guanine–cytosine in DNA).

**[Description](_description.md)**

The base pair is the standard unit for measuring the length of DNA or RNA sequences, genomic regions, and chromosomes. One base pair (bp) is the smallest unit of double-stranded nucleic acid sequence and the pivot for all sequence-length conversions in this dictionary.

In the EUFGIS characterisation database, sequence length appears as the unit for the `chr_SequenceLength` descriptor, which records the number of base pairs of aligned genomic sequence used in population genetic analyses. Typical values range from a few hundred bp (RADseq loci, microsatellite flanking regions) to tens of megabases (whole-chromosome scaffolds).

**Note:** The QUDT ontology does not define base pairs. The UCUM code is `[bp]`. The SI_base flag is set to true because bp is the reference unit for its quantity kind; there is no SI-system coherent unit for sequence length — this is a domain-specific quantity with no physical dimension in the SI framework. The QUDT_dimension_vector `A0E0L0I0M0H0T0D0` (all zeros) is assigned by convention to reflect the dimensionless character of a count.

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
    "ISO_639_3_eng" : "Base pair (bp)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M0H0T0D0` |
| [Base unit](SI_base.md) | true |
| [Multiplicative factor](SI_factor.md) | 1 |
| [UCUM unit code](UCUM_code.md) | `[bp]` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H0T0D0",
  "SI_base" : true,
  "SI_factor" : 1,
  "UCUM_code" : "[bp]"
}
```

</details>
