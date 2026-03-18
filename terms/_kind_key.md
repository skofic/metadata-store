# `_kind_key`

**`_title`**

Key Kind

**`_definition`**

Optional qualifier for the `_type_key` data type. When present, this set property constrains which category of term the key may reference. When absent, the key may reference a document in any collection without restriction.

**`_description`**

The `_kind_key` property qualifies the [`_type_key`](_type_key.md) data type by restricting the category of term that the key value may point to. It is **optional** and is a set that may contain one or more of the following enumeration values — when multiple values are present, the key must satisfy at least one of the listed constraints:

- [`_kind_key_term`](_kind_key_term.md): The key may reference any term in the dictionary.
- [`_kind_key_term_enum`](_kind_key_term_enum.md): The key must reference an enumeration type — a term that serves as the root of a controlled vocabulary graph.
- [`_kind_key_term_enum_element`](_kind_key_term_enum_element.md): The key must reference an enumeration element — a term that is a valid choice within a controlled vocabulary, connected to its root via a [`_predicate_enum-of`](_predicate_enum-of.md) edge.
- [`_kind_key_term_object`](_kind_key_term_object.md): The key must reference an object definition term — a term carrying a [`_rule`](_rule.md) section.
- [`_kind_key_term_descriptor`](_kind_key_term_descriptor.md): The key must reference a descriptor — a term carrying a [`_data`](_data.md) section.

When `_kind_key` is absent, the key may reference a document in any collection of the database.

---

**`_code`**

```json
{
  "_aid" : [
    "key"
  ],
  "_gid" : "_kind_key",
  "_lid" : "key",
  "_nid" : "_kind"
}
```

**`_data`**

```json
{
  "_set" : {
    "_set_scalar" : {
      "_kind_enum" : [
        "_kind_key"
      ],
      "_set_type" : "_type_enum"
    }
  }
}
```
