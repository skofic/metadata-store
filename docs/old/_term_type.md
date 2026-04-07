# `_term_type`

**`_title`**

Term type

**`_definition`**

The set of functional roles a term plays within the data dictionary. Each element is an enumeration value drawn from the controlled vocabulary rooted at `_type_term`. This property is computed automatically by the system once all terms have been finalised and cannot be set or modified by users.

**`_description`**

Every term in the dictionary can take on one or more functional roles, and `_term_type` records all of them in a single set. The roles are assigned by inspecting the term's structure and its relationships in the graph; they are not written by data curators.

The eight possible roles are:

- [**Alias**](_type_term_alias.md): the term is an alias — it appears as the [`_to`](_to.md) node of a [`_predicate_bridge-of`](_predicate_bridge-of.md) edge, redirecting lookups to a canonical term.
- [**Predicate**](_type_term_predicate.md): the term is used as a value of the [`_predicate`](_predicate.md) field in an [edge document](_edge.md).
- [**Namespace**](_type_term_namespace.md): the term is used as a value of the [`_nid`](_nid.md) field in a [code section](_code.md), serving as a namespace for other terms.
- [**Descriptor**](_type_term_descriptor.md): the term carries a [`_data`](_data.md) section and therefore represents a typed data variable.
- [**Enumeration root**](_type_term_enum-root.md): the term is the root of an enumeration graph — other terms declare membership in its vocabulary via [`_predicate_enum-of`](_predicate_enum-of.md) edges pointing to it.
- [**Enumeration option**](_type_term_enum-item.md): the term is a valid element of at least one enumeration graph — it appears as the `_from` node of a `_predicate_enum-of` edge.
- [**Object definition**](_type_term_object.md): the term carries a [`_rule`](_rule.md) section and therefore defines an object schema.
- [**Type definition**](_type_term_typedef.md): the term has been referenced in another term's [`_data`](_data.md) section via the [`_typedef`](_typedef.md) property as a reusable type definition.

This property lives in the [`_domn`](_domn.md) section and is populated automatically after all terms have been finalised. It is computed and locked: users cannot set or modify it.

**`_examples`**

A term that serves simultaneously as an enumeration root and a namespace:

```json
{"_domn": {"_term_type": ["_type_term_enum-root", "_type_term_namespace"]}}
```

A term that is both a descriptor and an object definition:

```json
{"_domn": {"_term_type": ["_type_term_descriptor", "_type_term_object"]}}
```

---

**`_code`**

```json
{
  "_aid" : [
    "type"
  ],
  "_gid" : "_term_type",
  "_lid" : "type",
  "_nid" : "_term"
}
```

**`_data`**

```json
{
  "_set" : {
    "_comparable" : {
      "_comparable_type" : "_type_enum",
      "_enum_types" : [
        "_type_term"
      ]
    }
  }
}
```
