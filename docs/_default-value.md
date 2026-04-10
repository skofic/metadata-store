# `_default-value`

**`_title`**

Default values

**`_definition`**

A dictionary mapping descriptor global identifiers to default values. Each mapped value is applied to the corresponding property when that property is absent from the object, before `_required` is checked. Default values must be compatible with the data type of their descriptor.

**`_description`**

`_default-value` is a constraint property within [`_open`](_open.md) or [`_closed`](_closed.md). Its value is a dictionary whose keys are descriptor global identifiers and whose values are the defaults to supply when the corresponding property is absent.

Defaults are applied before [`_required`](_required.md) is checked, so a property that is both listed in `_default-value` and required will always satisfy the requirement — the default supplies the value if the user did not. A mismatch between the default value and the descriptor's declared type is a configuration error and should be caught during dictionary validation.

Default values apply only when the property is entirely absent. If a user provides the property explicitly — even with a null or empty value — the default is not applied.

**`_examples`**

A schema that defaults `chr_status` to `"active"` and `chr_confidence` to `1.0`:

```json
{
	"_data": {
		"_object": {
			"_closed": {
				"_required": [
					{
						"_selectors": [{"_all": {}}],
						"_selection": ["chr_status"]
					}
				],
				"_recommended": ["chr_confidence", "chr_date"],
				"_default-value": {
					"chr_status": "active",
					"chr_confidence": 1.0
				}
			}
		}
	}
}
```

`chr_status` is required. If a user submits a document without it, the system supplies `"active"` before checking requirements — so the requirement is always satisfied. `chr_confidence`, if absent, is initialised to `1.0`. `chr_date` has no default and simply remains absent when not provided by the user.

---

**`_code`**

```json
{
  "_aid" : [
    "default-value"
  ],
  "_gid" : "_default-value",
  "_lid" : "default-value",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_dict" : {
    "_dict_key" : {
      "_term_key_descriptor" : {

      }
    },
    "_dict_value" : {

    }
  }
}
```
