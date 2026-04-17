# Unit physical range
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_range</code></p>

> The physical bounds of the measurement scale for this unit. When present, no value expressed in this unit can legitimately lie outside these bounds, regardless of the quantity being measured.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `range` |
| [Global identifier](_gid.md) | `unit_range` |
| [Official identifiers](_aid.md) | `range` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "range"
  ],
  "_gid" : "unit_range",
  "_lid" : "range",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Unit physical range

**[Definition](_definition.md):** The physical bounds of the measurement scale for this unit. When present, no value expressed in this unit can legitimately lie outside these bounds, regardless of the quantity being measured.

**[Description](_description.md)**

`unit_range` encodes a constraint intrinsic to the unit's measurement scale itself — a bound that no legitimate measurement in this unit can exceed, by the definition of the scale. It is stored in the [`_prop`](_prop.md) section of unit terms, alongside SI conversion parameters.

This differs from [`_range_valid`](_range_valid.md) declared in the [`_data`](_data.md) section of a descriptor, which constrains the values accepted for a specific use case. When a descriptor selects a unit that carries `unit_range`, the validator applies the unit's physical bound as an additional hard constraint. The effective range is the **intersection** of both: `effective_min = max(unit_min, descriptor_min)` and `effective_max = min(unit_max, descriptor_max)`. A descriptor may narrow but never widen the unit's physical constraint.

Only add `unit_range` to a unit term when the *unit definition itself* prohibits certain values — not when the quantity happens to be non-negative in a particular use case (length, mass, and area can all be negative in displacement or anomaly contexts). Current units carrying `unit_range`:

| Unit kind | Constraint | Rationale |
|-----------|-----------|----------|
| Temperature (K) | `_min-inclusive: 0` | Absolute zero is the physical floor of the kelvin scale |
| Temperature (°C) | `_min-inclusive: -273.15` | Equivalent absolute zero in Celsius |
| Temperature (°F) | `_min-inclusive: -459.67` | Equivalent absolute zero in Fahrenheit |
| Pressure (all units) | `_min-inclusive: 0` | Absolute pressure cannot be negative |
| Hydraulic capacitance (all units) | `_min-inclusive: 0` | Capacitance is a non-negative ratio by definition |
| Percent | `_min-inclusive: 0`, `_max-inclusive: 100` | A percentage is bounded to [0, 100] |

**[Examples](_examples.md)**

Kelvin — cannot be below absolute zero:

```json
{
	"_prop": {
		"SI_base": true,
		"SI_factor": 1.0,
		"UCUM_code": "K",
		"unit_range": { "_min-inclusive": 0 }
	}
}
```

Percent — bounded to [0, 100]:

```json
{
	"_prop": {
		"SI_factor": 0.01,
		"UCUM_code": "%",
		"unit_range": { "_min-inclusive": 0, "_max-inclusive": 100 }
	}
}
```

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
    "ISO_639_3_eng" : "Unit physical range"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Type definition](_typedef.md): [Numeric range](_range.md)

<details>
<summary>JSON</summary>

```json
{
  "_typedef" : "_range"
}
```

</details>
