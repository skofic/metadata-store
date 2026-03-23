# `_pid`

**`_title`**

Provider identifiers

**`_definition`**

The set of identifiers assigned to this term by data providers or metadata curators. Used to match unknown variable names in incoming datasets to known dictionary terms.

**`_description`**

This dictionary is used to apply standards and metadata to external datasets. When a dataset arrives without metadata, its variable names may not match any [local identifier](_lid.md) or [official identifier](_aid.md). The *provider identifiers* set records the names that specific data providers use for this term, enabling automated matching during dataset ingestion.

Unlike [official identifiers](_aid.md), provider identifiers are not required to follow any standard — they are simply the names that a particular source happens to use. Multiple providers may use different names for the same concept, all of which can be collected here.

**`_examples`**

```json
{
	"_nid": "ISO_3166_1",
	"_lid": "ITA",
	"_gid": "ISO_3166_1_ITA",
	"_aid": ["ITA", "IT"],
	"_pid": ["I"],
	"_name": "Italia",
	"_regexp": "[A-Z]{3,3}",
	"_emoji": "🇮🇹"
}
```

`ITA` is the [local identifier](_lid.md), `ITA` and `IT` are both [official](_aid.md) ISO country codes, while `I` is the code for Italy that data providers use internally, so it appears in [`_pid`](_pid.md).

---

**`_code`**

```json
{
  "_aid" : [
    "pid"
  ],
  "_gid" : "_pid",
  "_lid" : "pid",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_set" : {
    "_set_scalar" : {
      "_type_scalar_set" : "_type_string"
    }
  }
}
```
