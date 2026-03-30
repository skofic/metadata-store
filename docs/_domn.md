# `_domn`

**`_title`**

Domains Section

**`_definition`**

The section of a term that classifies it across one or more categorical dimensions. Each property must be a descriptor defined in the dictionary, and its value is typically an enumeration element drawn from a controlled vocabulary identifying the category to which the term belongs.

**`_description`**

The domains section provides a principled mechanism for categorising a [term](_term.md) according to dimensions such as subject domain, measurement type, statistical class, or intended application context. Each property in this section must be a descriptor defined in the dictionary; its value must conform to that descriptor's type definition and is typically an element of a controlled vocabulary.

This section applies to any term in the dictionary — including core dictionary building blocks — and serves two complementary purposes. First, it classifies the term within meaningful subject or application domains. Second, it records the [roles](_term_type.md) the term plays within the dictionary: whether it functions as a descriptor, an enumeration element, a namespace, an object definition, a typedef, or any combination of these. Storing roles explicitly in `_domn` via the [`_term_type`](_term_type.md) property lets a consumer determine immediately what a term can be used for, without traversing the graph.

The section is optional and its schema is open: any dictionary-defined descriptor may appear as a property. The [`_term_type`](_term_type.md) property is computed and locked — it is populated automatically by the system and cannot be set or modified by users.

**`_examples`**

A country term with domain classification properties recording its geographic region and sub-region:

```json
{
	"_domn": {
		"_term_type": ["_type_term_enum-item"],
		"std_country_region": {"ISO_639_3_eng": "Europe"},
		"std_country_sub-region": {"ISO_639_3_eng": "Southern Europe"}
	}
}
```

A core dictionary term with only its role recorded:

```json
{"_domn": {"_term_type": ["_type_term_descriptor", "_type_term_object"]}}
```

---

**`_code`**

```json
{
  "_aid" : [
    "domn"
  ],
  "_gid" : "_domn",
  "_lid" : "domn",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_object_types" : [
      "_domn"
    ],
    "_scalar_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : false,
  "_computed" : [
    "_term_type"
  ],
  "_locked" : [
    "_term_type"
  ],
  "_recommended" : [
    "_term_type"
  ]
}
```
