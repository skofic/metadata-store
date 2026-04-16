# Units of measurement
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit</code></p>

> Root namespace and enumeration root for the physical unit ontology of the data dictionary.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (none) |
| [Local identifier](_lid.md) | `unit` |
| [Global identifier](_gid.md) | `unit` |
| [Official identifiers](_aid.md) | `unit` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "unit"
  ],
  "_gid" : "unit",
  "_lid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Units of measurement

**[Definition](_definition.md):** Root namespace and enumeration root for the physical unit ontology of the data dictionary.

**[Description](_description.md)**

This namespace organises the dictionary's unit terms into a two-level hierarchy. The first level is **quantity kinds** — categories of physical measurement such as length, temperature, or pressure. Each quantity kind is itself a sub-namespace whose members are the individual **unit terms** that express measurements of that kind (e.g., metre, kilometre, foot for length).

All unit terms carry a [`_prop`](_prop.md) section with SI conversion parameters ([`SI_factor`](SI_factor.md), [`SI_offset`](SI_offset.md)) that define the linear formula `SI_value = value × SI_factor + SI_offset`. This enables runtime conversion between any two units of the same quantity kind via their shared SI coherent unit as an intermediate pivot. The SI coherent unit of each quantity kind has [`SI_base`](SI_base.md)`: true` and `SI_factor: 1.0`.

Unit terms carry cross-references to three external standards:

- **SI** (Système International d'Unités) — the international metric system, maintained by the [BIPM](https://www.bipm.org/en/measurement-units). The `SI_factor` and `SI_offset` properties encode the linear conversion to the SI coherent unit for each quantity kind.
- **UCUM** (Unified Code for Units of Measure) — a code system for machine-readable unit expressions used in health informatics and scientific data exchange, maintained by the [Regenstrief Institute](https://ucum.org). The [`UCUM_code`](UCUM_code.md) property stores the case-sensitive UCUM expression for each unit.
- **QUDT** (Quantities, Units, Dimensions and Types) — an open RDF/OWL ontology for scientific measurement, published at [qudt.org](https://qudt.org). The [`QUDT_multiplier`](QUDT_multiplier.md), [`QUDT_offset`](QUDT_offset.md), and [`QUDT_dimension_vector`](QUDT_dimension_vector.md) properties store values sourced from QUDT at import time.

Conversion relationships between units of the same quantity kind are encoded as bidirectional [`_predicate_converts-to`](_predicate_converts-to.md) edges. Each edge stores both conversion directions in [`_path_data`](_path_data.md) keyed by the target unit handle.

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
    "ISO_639_3_eng" : "Units of measurement"
  }
}
```

</details>
