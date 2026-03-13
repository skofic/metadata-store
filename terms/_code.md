# `_code`

**`_title`**

Identification Section

**`_definition`**

The section of a term that holds its identifiers: the local identifier within a namespace, the optional namespace reference, and the computed global identifier that uniquely identifies the term across the entire dictionary.

**`_description`**

The identification section is mandatory in every [term](_term.md). It provides the identifiers that locate the term within the dictionary's namespace hierarchy.

The [local identifier](_lid.md) is the term's name within its [namespace](_nid.md) and is the only property the user must always supply. The namespace optionally scopes the term under a parent term, enabling hierarchical organisation from general to specific (e.g. `iso` → `iso_3166` → `iso_3166_ITA`). The [global identifier](_gid.md) is computed by concatenating `_nid` and `_lid` with an underscore separator (`_`); it is unique across all terms and is copied to the ArangoDB document key (`_key`) before the term is saved.

Terms with an empty-string namespace (`_nid: ""`) are core dictionary building blocks, recognisable by the leading underscore in their `_gid` (e.g. `_code`, `_info`). Terms with no `_nid` property define top-level namespaces (e.g. `iso`).

---

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_code"
    ],
    "_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_computed" : [
    "_gid"
  ],
  "_immutable" : [
    "_lid",
    "_nid",
    "_gid"
  ],
  "_recommended" : [
    "_nid",
    "_gid",
    "_aid",
    "_pid",
    "_name",
    "_symbol",
    "_emoji"
  ],
  "_required" : {
    "_selection-descriptors_all" : [
      "_lid"
    ]
  }
}
```
