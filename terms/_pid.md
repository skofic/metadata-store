# `_pid`

**`_title`**

Provider identifiers

**`_definition`**

The set of identifiers assigned to this term by data providers or metadata curators. Used to match unknown variable names in incoming datasets to known dictionary terms.

**`_description`**

This dictionary is used to apply standards and metadata to external datasets. When a dataset arrives without metadata, its variable names may not match any [local identifier](_lid.md) or [official identifier](_aid.md). The *provider identifiers* set records the names that specific data providers use for this term, enabling automated matching during dataset ingestion.

Unlike [official identifiers](_aid.md), provider identifiers are not required to follow any standard — they are simply the names that a particular source happens to use. Multiple providers may use different names for the same concept, all of which can be collected here.

---

**`_data`**

```json
{
  "_set" : {
    "_set_scalar" : {
      "_set_type" : "_type_string"
    }
  }
}
```
