# International System of Units
<p><a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>SI</code></p>

> Namespace for International System of Units (SI) conversion descriptor terms.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (none) |
| [Local identifier](_lid.md) | `SI` |
| [Global identifier](_gid.md) | `SI` |
| [Official identifiers](_aid.md) | `SI` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "SI"
  ],
  "_gid" : "SI",
  "_lid" : "SI"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** International System of Units

**[Definition](_definition.md):** Namespace for International System of Units (SI) conversion descriptor terms.

**[Description](_description.md)**

The SI (Système International d'Unités) is the modern metric system, defining seven base units — metre (m), kilogram (kg), second (s), ampere (A), kelvin (K), mole (mol), and candela (cd) — and a coherent set of derived units. It is defined and maintained by the [Bureau International des Poids et Mesures (BIPM)](https://www.bipm.org/en/measurement-units).

This namespace groups descriptor terms that encode the relationship between a unit term and its SI coherent counterpart: whether the unit is itself an SI coherent unit ([`SI_base`](SI_base.md)), the multiplicative scale factor ([`SI_factor`](SI_factor.md)), and the additive offset ([`SI_offset`](SI_offset.md)) needed to convert values into SI coherent units. Together these three properties define the complete linear conversion formula used by the dictionary.

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
    "ISO_639_3_eng" : "International System of Units"
  }
}
```

</details>
