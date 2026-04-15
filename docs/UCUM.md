# Unified Code for Units of Measure
<p><a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>UCUM</code></p>

> Namespace for terms derived from the Unified Code for Units of Measure (UCUM).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (none) |
| [Local identifier](_lid.md) | `UCUM` |
| [Global identifier](_gid.md) | `UCUM` |
| [Official identifiers](_aid.md) | `UCUM` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "UCUM"
  ],
  "_gid" : "UCUM",
  "_lid" : "UCUM"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Unified Code for Units of Measure

**[Definition](_definition.md):** Namespace for terms derived from the Unified Code for Units of Measure (UCUM).

**[Description](_description.md)**

UCUM is a code system for units of measure designed for use in electronic data interchange, particularly in health informatics (HL7, FHIR) and scientific data exchange. It provides a case-sensitive, machine-readable string syntax for unit expressions that can be processed without ambiguity.

This dictionary stores UCUM unit codes in the [`UCUM_code`](UCUM_code.md) descriptor property of unit terms, providing an additional cross-reference for systems that already use UCUM. UCUM is maintained by the [Regenstrief Institute](https://ucum.org).

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
    "ISO_639_3_eng" : "Unified Code for Units of Measure"
  }
}
```

</details>
