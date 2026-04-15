# UCUM unit code
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>UCUM_code</code></p>

> The UCUM (Unified Code for Units of Measure) expression string identifying the unit.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Unified Code for Units of Measure](UCUM.md) |
| [Local identifier](_lid.md) | `code` |
| [Global identifier](_gid.md) | `UCUM_code` |
| [Official identifiers](_aid.md) | `code` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "code"
  ],
  "_gid" : "UCUM_code",
  "_lid" : "code",
  "_nid" : "UCUM"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** UCUM unit code

**[Definition](_definition.md):** The UCUM (Unified Code for Units of Measure) expression string identifying the unit.

**[Description](_description.md)**

UCUM codes are case-sensitive strings constructed from unit symbols, metric prefixes, and arithmetic operators following the UCUM specification. They uniquely identify a unit in a form that is both human-readable and machine-parseable.

Common examples:

- `kg/m2` — kilograms per square metre
- `t/ha` — metric tonnes per hectare
- `Cel` — degree Celsius
- `m.s-1` — metres per second
- `[lb_av]/[acr_us]` — pounds per US acre

The UCUM specification distinguishes case-sensitive and case-insensitive codes; this dictionary always stores the case-sensitive form.

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
    "ISO_639_3_eng" : "UCUM unit code"
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
