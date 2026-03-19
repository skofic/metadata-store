# `_required`

**`_title`**

Required Properties

**`_definition`**

An object containing one or more descriptor selection structures that express which properties must be present in an object for it to be considered valid. All selection structures present must be satisfied simultaneously — they are ANDed together, not ORed.

**`_description`**

`_required` is a property of the [`_rule`](_rule.md) section. It contains one or more [descriptor selection](_selection-descriptors.md) structures, each expressing a cardinality constraint over a group of descriptor `_gid`s. When multiple structures are present, all of them must be satisfied simultaneously.

The five available selection structures are:

- [`_selection-descriptors_one`](_selection-descriptors_one.md): exactly one of the listed descriptors must be present; the rest must be absent.
- [`_selection-descriptors_one-none`](_selection-descriptors_one-none.md): zero or one of the listed descriptors may be present.
- [`_selection-descriptors_any`](_selection-descriptors_any.md): one or more of the listed descriptors must be present.
- [`_selection-descriptors_all`](_selection-descriptors_all.md): all listed descriptors must be present.
- [`_selection-descriptors_one-none-of`](_selection-descriptors_one-none-of.md): an array of groups; from each group, zero or one descriptor may be present.

`_required` is checked **after** [`_default-value`](_default-value.md) and [`_computed`](_computed.md) are applied, so a property with a default or computed value will always satisfy a requirement for it.

```json
{
	"_rule": {
		"_required": {
			"_selection-descriptors_all": ["_lid"],
			"_selection-descriptors_one": ["_type_boolean", "_type_number", "_type_string"]
		}
	}
}
```

`_lid` must always be present; exactly one of the three type descriptors must be present.

---

**`_code`**

```json
{
  "_aid" : [
    "required"
  ],
  "_gid" : "_required",
  "_lid" : "required",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_required"
    ],
    "_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_recommended" : [
    "_selection-descriptors_one",
    "_selection-descriptors_one-none",
    "_selection-descriptors_any",
    "_selection-descriptors_all",
    "_selection-descriptors_one-none-of"
  ],
  "_required" : {
    "_selection-descriptors_any" : [
      "_selection-descriptors_one",
      "_selection-descriptors_one-none",
      "_selection-descriptors_any",
      "_selection-descriptors_all",
      "_selection-descriptors_one-none-of"
    ]
  }
}
```
