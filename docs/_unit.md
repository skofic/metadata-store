# Unit
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a> <a href="_term_role_enum-source.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration source</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_unit</code></p>

> The companion property for specifying the unit of measurement of a scalar value using a controlled vocabulary term from the `_unit` enumeration graph. Its value is a single `_unit` element `_gid`. Mutually exclusive with `_unit_name` and `_unit_symbol`: use `_unit` when the unit exists in the controlled vocabulary, or `_unit_name` / `_unit_symbol` otherwise.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `unit` |
| [Global identifier](_gid.md) | `_unit` |
| [Official identifiers](_aid.md) | `unit` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "unit"
  ],
  "_gid" : "_unit",
  "_lid" : "unit",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Unit

**[Definition](_definition.md):** The companion property for specifying the unit of measurement of a scalar value using a controlled vocabulary term from the `_unit` enumeration graph. Its value is a single `_unit` element `_gid`. Mutually exclusive with `_unit_name` and `_unit_symbol`: use `_unit` when the unit exists in the controlled vocabulary, or `_unit_name` / `_unit_symbol` otherwise.

**[Description](_description.md)**

`_unit` is an optional companion property accepted by [`_number`](_number.md), [`_number_float`](_number_float.md), [`_number_integer`](_number_integer.md), and [`_string`](_string.md). When present, it declares the unit of measurement by referencing a single term from the `_unit` controlled vocabulary.

The value is an [`_enum`](_enum.md) scalar — the [`_gid`](_gid.md) of the enumeration element that identifies the unit, constrained to the `_unit` enumeration root.

`_unit` is mutually exclusive with [`_unit_name`](_unit_name.md) and [`_unit_symbol`](_unit_symbol.md). When `_unit` is present, neither `_unit_name` nor `_unit_symbol` may appear in the same scalar descriptor.

**[Examples](_examples.md)**

A floating-point body temperature in degrees Celsius:

```json
{
	"_scalar": {
		"_number_float": {
			"_decimals": 1,
			"_unit": "_unit_temperature_C"
		}
	}
}
```

Stored values: `"_unit_length_m"`, `"_unit_temperature_C"`, `"_unit_weight_kg"`.

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
  "_examples" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Unit"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Enumerated value](_enum.md) ([Controlled vocabularies](_enums.md): [Unit](_unit.md))

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_enum" : {
      "_enums" : [
        "_unit"
      ]
    }
  }
}
```

</details>
