# `_methods`

**`_title`**

Methods

**`_definition`**

Description of the measurement conditions, protocols, and procedures followed to obtain the value represented by the descriptor. Used to distinguish variables that appear similar but differ in how they are produced. Expressed as a Markdown or HTML string.

**`_description`**

`_methods` is a property of the [`_info`](_info.md) section. Its value is a multilingual dictionary (a [`_info_string_formatted`](_info_string_formatted.md) typedef) keyed by language [`_gid`](_gid.md)s, with each value expressed as a **Markdown** or **HTML** string.

While [`_description`](_description.md) explains what a descriptor represents and how it is used, `_methods` documents *how the value is obtained* — the measurement conditions, instruments, timing, subject preparation, and procedural steps that define the variable. This distinction matters when two descriptors measure the same underlying phenomenon under different conditions: they are not interchangeable, and `_methods` is the record of why.

Typical content includes subject preparation, measurement timing, instruments or assay protocols, operator instructions, and reference standards followed. This property is relevant primarily for descriptor terms in scientific datasets.

**`_examples`**

```json
{
	"_methods": {
		"ISO_639_3_eng": "Subject stands barefoot on a calibrated digital scale, wearing light indoor clothing. Weight is recorded after an 8-hour overnight fast, in the morning before breakfast. Two readings are taken 30 seconds apart; the average is stored. Scale must be re-zeroed between subjects."
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "methods"
  ],
  "_gid" : "_methods",
  "_lid" : "methods",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_typedef" : "_info_string_formatted"
}
```
