# Quantities, Units, Dimensions and Types ontology
<p><a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>QUDT</code></p>

> Namespace for terms derived from the QUDT (Quantities, Units, Dimensions and Types) ontology.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (none) |
| [Local identifier](_lid.md) | `QUDT` |
| [Global identifier](_gid.md) | `QUDT` |
| [Official identifiers](_aid.md) | `QUDT` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "QUDT"
  ],
  "_gid" : "QUDT",
  "_lid" : "QUDT"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Quantities, Units, Dimensions and Types ontology

**[Definition](_definition.md):** Namespace for terms derived from the QUDT (Quantities, Units, Dimensions and Types) ontology.

**[Description](_description.md)**

QUDT is an open ontology for scientific measurement: it defines quantity kinds, units of measure, unit conversion factors, and dimensional analysis using a formal RDF/OWL model. Published at [qudt.org](https://qudt.org) and maintained in the [qudt/qudt-public-repo](https://github.com/qudt/qudt-public-repo) GitHub repository.

This dictionary uses QUDT as an import source for unit URIs ([`_uri`](_uri.md)), conversion multipliers ([`QUDT_multiplier`](QUDT_multiplier.md)), conversion offsets ([`QUDT_offset`](QUDT_offset.md)), and dimension vectors ([`QUDT_dimension_vector`](QUDT_dimension_vector.md)). QUDT is not a live dependency — all values are copied into the term records at import time.

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
    "ISO_639_3_eng" : "Quantities, Units, Dimensions and Types ontology"
  }
}
```

</details>
