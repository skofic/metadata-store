# `_kind`

**`_title`**

Kind

**`_definition`**

Namespace for qualifier and role-indicator sub-terms. As a data-type qualifier, `_kind` sub-terms appear alongside `_type` in a `_scalar` section to further constrain the data type. As a role indicator, the `_kind_term` sub-term records the functional roles a term plays in the dictionary — descriptor, namespace, enumeration root, and so on — making those roles directly queryable without graph traversal.

**`_description`**

This term serves as the namespace for all [`_kind_*`](_kind.md) qualifier and role-indicator sub-terms. It has two distinct uses.

**As a data-type qualifier** — sub-terms such as [`_kind_number`](_kind_number.md), [`_kind_string`](_kind_string.md), [`_kind_key`](_kind_key.md), [`_kind_enum`](_kind_enum.md), and [`_kind_object`](_kind_object.md) appear alongside [`_type`](_type.md) in a [`_scalar`](_scalar.md) section to further constrain the data type. For example, `_type_number` combined with `_kind_number_float` specifies a floating-point number, while `_type_enum` combined with `_kind_enum: ["ISO_639_3"]` constrains the value to a specific controlled vocabulary.

**As a term role indicator** — the sub-term [`_kind_term`](_kind_term.md) is a descriptor used in the [`_domn`](_domn.md) section to record the functional roles a term plays in the dictionary. Because a term can simultaneously act as a descriptor, an enumeration element, a namespace, an object schema definition, and more, `_kind_term` makes these roles explicitly queryable without traversing the graph.

---

**`_code`**

```json
{
  "_aid" : [
    "kind"
  ],
  "_gid" : "_kind",
  "_lid" : "kind",
  "_nid" : ""
}
```
