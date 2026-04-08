# `_pid`

**`_title`**

Provider identifiers

**`_definition`**

The set of identifiers assigned to this term by data providers or metadata curators. Used to match variable names in incoming datasets to known dictionary terms.

**`_description`**

This dictionary is used to apply standards and metadata to external datasets. When a dataset arrives without metadata, its variable names may not match any [local identifier](_lid.md) or [official identifier](_aid.md). The provider identifiers set records the names that specific data providers use for this concept, enabling automated matching during dataset ingestion.

Unlike [official identifiers](_aid.md), provider identifiers are not required to follow any standard — they are simply the names that a particular source happens to use for the same concept. Multiple providers may use different names for the same variable, all of which can be collected here.

**`_examples`**

A dataset from a legacy system uses `I` as its internal country code for Italy (the IOC code). Because `I` is an official identifier it belongs in [`_aid`](_aid.md); internal codes used by specific data providers belong in `_pid`:

```json
{
	"_code": {
		"_nid": "ISO_3166_3",
		"_lid": "ITA",
		"_gid": "ISO_3166_3_ITA",
		"_aid": ["ITA", "IT", "I"],
		"_pid": ["italy_code", "country_IT"]
	}
}
```

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
    "_string" : {

    }
  }
}
```
