# `_unit-name`

**`_title`**

Unit name

**`_definition`**

A multilingual free-text unit name, used when no codified `_unit` is available. Mutually exclusive with `_unit`.

**`_description`**

`_unit-name` is the free-text alternative to [`_unit`](_unit.md) for cases where the measurement unit is not represented in any unit enumeration vocabulary. Its value is a multilingual string — a dictionary keyed by ISO 639-3 language [`_gid`](_gid.md)s and whose values are plain strings.

`_unit-name` and [`_unit-symbol`](_unit-symbol.md) may be used together when `_unit` is absent. `_unit-name` is mutually exclusive with `_unit`.

**`_examples`**

A unit name for a custom measurement:

```json
{
	"_unit-name": {"ISO_639_3_eng": "parts per million", "ISO_639_3_ita": "parti per milione"}
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
  "_typedef" : "_info_string"
}
```
