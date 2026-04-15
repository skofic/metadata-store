# Base unit
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>SI_base</code></p>

> Indicates whether the unit is the SI coherent unit for its quantity kind.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [International System of Units](SI.md) |
| [Local identifier](_lid.md) | `base` |
| [Global identifier](_gid.md) | `SI_base` |
| [Official identifiers](_aid.md) | `base` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "base"
  ],
  "_gid" : "SI_base",
  "_lid" : "base",
  "_nid" : "SI"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Base unit

**[Definition](_definition.md):** Indicates whether the unit is the SI coherent unit for its quantity kind.

**[Description](_description.md)**

When `true`, this unit is the SI coherent derived or base unit for its quantity kind — for example, kilogram per square metre for mass per area, or metre for length. For SI coherent units, [`SI_factor`](SI_factor.md) is `1.0` and [`SI_offset`](SI_offset.md) is absent.

When `false`, or when this property is absent, the unit differs from the SI coherent unit and [`SI_factor`](SI_factor.md) (and [`SI_offset`](SI_offset.md) when non-zero) must be applied to convert values.

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
    "ISO_639_3_eng" : "Base unit"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Boolean](_boolean.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_boolean" : {

    }
  }
}
```

</details>
