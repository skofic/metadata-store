# `_kind`

**`_title`**

Kind

**`_definition`**

Namespace for qualifier sub-terms and role-indicator sub-terms used in the data dictionary. As data-type qualifiers, [`_kind_enum`](_kind_enum.md) and [`_kind_object`](_kind_object.md) appear alongside [`_type_scalar`](_type_scalar.md) in a [`_scalar`](_scalar.md) section to further constrain the data type. As a role indicator, the [`_kind_term`](_kind_term.md) sub-term records the functional roles a term plays in the dictionary, making those roles directly queryable without graph traversal.

**`_description`**

This term serves as the namespace root for all [`_kind_*`](_kind.md) sub-terms. It has two distinct uses.

**As a data-type qualifier** — only two `_kind_*` properties are used as companions in a [`_scalar`](_scalar.md) section:

- [`_kind_enum`](_kind_enum.md): optional companion to [`_type_enum`](_type_enum.md). Restricts the controlled vocabularies from which the enumeration value may be drawn.
- [`_kind_object`](_kind_object.md): optional companion to [`_type_object`](_type_object.md). Restricts the object schema the value must conform to.

All other type specificity — float vs. integer numbers, Markdown vs. HTML strings, term keys vs. enum-root keys — is expressed directly in the [`_type_scalar`](_type_scalar.md) value (e.g. [`_type_number_float`](_type_number_float.md), [`_type_string_Markdown`](_type_string_Markdown.md), [`_type_key_term_enum`](_type_key_term_enum.md)), without any additional `_kind_*` companion.

**As a term role indicator** — the sub-term [`_kind_term`](_kind_term.md) is a descriptor used in the [`_domn`](_domn.md) section to record the functional roles a term plays in the dictionary. Because a term can simultaneously act as a descriptor, an enumeration element, a namespace, an object schema definition, and more, [`_kind_term`](_kind_term.md) makes these roles explicitly queryable without traversing the graph.

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
