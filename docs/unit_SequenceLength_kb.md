# Kilobase pair (kb)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_SequenceLength_kb</code></p>

> Unit of sequence length equal to 1 000 base pairs.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Sequence length](unit_SequenceLength.md) |
| [Local identifier](_lid.md) | `kb` |
| [Global identifier](_gid.md) | `unit_SequenceLength_kb` |
| [Official identifiers](_aid.md) | `kb` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "kb"
  ],
  "_gid" : "unit_SequenceLength_kb",
  "_lid" : "kb",
  "_name" : "Kilobase pair",
  "_nid" : "unit_SequenceLength",
  "_symbol" : "\\mathrm{kb}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Kilobase pair (kb)

**[Definition](_definition.md):** Unit of sequence length equal to 1 000 base pairs.

**[Description](_description.md)**

The kilobase pair (kb) is used for gene lengths, intergenic regions, and short-read sequencing library insert sizes. Typical gene lengths in plants range from 1 to 10 kb. RADseq loci used in EUFGIS population genetics studies are typically 100–500 bp, but RADseq library fragments are described in kb.

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
    "ISO_639_3_eng" : "Kilobase pair (kb)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M0H0T0D0` |
| [Multiplicative factor](SI_factor.md) | 1000 |
| [UCUM unit code](UCUM_code.md) | `[kbp]` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H0T0D0",
  "SI_factor" : 1000,
  "UCUM_code" : "[kbp]"
}
```

</details>
