# Sequence length
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_SequenceLength</code></p>

> Quantity kind for the number of nucleotide base pairs in a DNA or RNA sequence.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `SequenceLength` |
| [Global identifier](_gid.md) | `unit_SequenceLength` |
| [Official identifiers](_aid.md) | `SequenceLength` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "SequenceLength"
  ],
  "_gid" : "unit_SequenceLength",
  "_lid" : "SequenceLength",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Sequence length

**[Definition](_definition.md):** Quantity kind for the number of nucleotide base pairs in a DNA or RNA sequence.

**[Description](_description.md)**

Sequence length counts the number of nucleotide base pairs (bp) in a sequenced DNA or RNA fragment. It is a dimensionless integer count, but the base pair (bp) is the conventional unit in genomics and bioinformatics. The base unit is the **base pair** ([`unit_SequenceLength_bp`](unit_SequenceLength_bp.md)), with the SI coherent unit being the dimensionless count 1.

Dimensional analysis (QUDT): `A0E0L0I0M0H0T0D0` (dimensionless count).

In the EUFGIS database, sequence length appears in the metadata of genetic marker datasets: the length of the sequenced loci used to compute genetic diversity indices. Genome-scale analyses require kilobase (kb), megabase (Mb), and gigabase (Gb) units. UCUM codes: `bp`, `kbp`, `Mbp`, `Gbp`.

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
    "ISO_639_3_eng" : "Sequence length"
  }
}
```

</details>
