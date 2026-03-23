# `_kind_term`

**`_title`**

Term Kind

**`_definition`**

A set of role-indicator enumeration elements that classify the functional roles a term plays in the dictionary. Each element identifies one role — such as descriptor, namespace, enumeration root, or object definition. A single term may hold multiple roles simultaneously.

**`_description`**

[`_kind_term`](_kind_term.md) is a property of the [_domn](_domn.md) section. Its value is a set of enumeration elements drawn from the [`_kind_term`](_kind_term.md) controlled vocabulary, each identifying one functional role the term plays in the dictionary.

A term may hold several roles at the same time. For example, a term can simultaneously be a **namespace** (other terms use its [`_gid`](_gid.md) as their [`_nid`](_nid.md)), an **enumeration root** (it is the root of a controlled vocabulary graph), and a **descriptor** (it carries a [`_data`](_data.md) section). Recording all roles explicitly in [`_kind_term`](_kind_term.md) allows any of them to be queried directly — without traversing the graph — which is useful for tooling and validation pipelines.

Typical role values include:

- **[`_kind_term_descriptor`](_kind_term_descriptor.md)** — the term carries a [`_data`](_data.md) section and defines the type of a data variable.
- **[`_kind_term_namespace`](_kind_term_namespace.md)** — the term acts as a namespace; other terms reference its [`_gid`](_gid.md) in their [`_nid`](_nid.md).
- **[`_kind_term_enum`](_kind_term_enum.md)** — the term is the root of a controlled vocabulary (enumeration) graph.
- **[`_kind_term_enum_element`](_kind_term_enum_element.md)** — the term is a valid selectable element within a controlled vocabulary.
- **[`_kind_term_object`](_kind_term_object.md)** — the term carries a [`_rule`](_rule.md) section and defines an object schema.
- **[`_kind_term_alias`](_kind_term_alias.md)** — the term is an alias for another term; it carries no [`_info`](_info.md) and delegates to the canonical term.
- **[`_kind_term_predicate`](_kind_term_predicate.md)** — the term is used as a predicate in an edge, qualifying the nature of a relationship between two nodes.

The set of recognised role values is defined as the [`_kind_term`](_kind_term.md) enumeration graph and may be extended as the dictionary evolves.

---

**`_code`**

```json
{
  "_aid" : [
    "term"
  ],
  "_gid" : "_kind_term",
  "_lid" : "term",
  "_nid" : "_kind"
}
```

**`_data`**

```json
{
  "_set" : {
    "_set_scalar" : {
      "_kind_enum" : [
        "_kind_term"
      ],
      "_type_scalar_set" : "_type_enum"
    }
  }
}
```
