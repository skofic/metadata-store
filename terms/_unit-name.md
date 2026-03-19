# `_unit-name`

**`_title`**

Unit Name

**`_definition`**

The multilingual name of the measurement unit, used when the unit is not available as a codified entry in the `_unit` controlled vocabulary. The value is a dictionary keyed by language `_gid` with plain string values — the same structure as `_title` in the `_info` section.

**`_description`**

`_unit-name` is an optional fallback for [`_unit`](_unit.md). When the measurement unit of a descriptor cannot be expressed as a standardised `_unit` code, `_unit-name` provides its human-readable name in one or more languages. It corresponds to what the `_title` field of the unit's `_info` section would contain if the unit were a full dictionary term.

The value is a dictionary keyed by ISO 639-3 language `_gid` (e.g. `ISO_639_3_eng`) with plain UTF-8 string values. At least one language entry should be present.

`_unit` and `_unit-name` are mutually exclusive: when a codified unit exists, use `_unit`; resort to `_unit-name` (and optionally [`_unit-symbol`](_unit-symbol.md)) only when it does not.

```json
{
	"_scalar": {
		"_type": "_type_number",
		"_kind_number": ["_kind_number_float"],
		"_unit-name": {
			"ISO_639_3_eng": "parts per million",
			"ISO_639_3_ita": "parti per milione"
		}
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "unit-name"
  ],
  "_gid" : "_unit-name",
  "_lid" : "unit-name",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_dict" : {
    "_dict_key" : {
      "_kind_enum" : [
        "ISO_639_3"
      ],
      "_type_key" : "_type_enum"
    },
    "_dict_value" : {
      "_scalar" : {
        "_type" : "_type_string"
      }
    }
  }
}
```
