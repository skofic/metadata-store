# `_term_object`

**`_title`**

Object Definition

**`_definition`**

A term that defines the schema of a structured object. Object definition terms carry a structure rules section that specifies which properties are required, recommended, or forbidden within the object they describe.

**`_description`**

An object definition is a [term](_term.md) whose primary role is to constrain the composition of an object. The [structure rules section](_rule.md) is mandatory and specifies which [descriptor](_term_descriptor.md) properties must be present, which are recommended, and which are banned.

Any descriptor can reference an object definition term via the `_kind` property of its `_type_object` data type, making the object definition the schema validator for that value. The dictionary uses object definition terms to define the valid structure of terms, edge documents, and all sections thereof.

---

**`_code`**

```json
{
  "_aid" : [
    "object"
  ],
  "_gid" : "_term_object",
  "_lid" : "object",
  "_nid" : "_term"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_term_object"
    ],
    "_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_computed" : [
    "_key"
  ],
  "_immutable" : [
    "_key"
  ],
  "_recommended" : [
    "_data"
  ],
  "_required" : {
    "_selection-descriptors_all" : [
      "_key",
      "_code",
      "_info",
      "_rule"
    ]
  }
}
```
