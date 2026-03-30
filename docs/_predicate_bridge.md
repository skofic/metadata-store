# `_predicate_bridge`

**`_title`**

Bridge predicates

**`_definition`**

The sub-vocabulary of predicates used to connect a custom vocabulary to elements from another vocabulary, enabling element reuse without duplicating edge documents.

**`_description`**

The bridge sub-vocabulary contains one predicate: [`_predicate_bridge-of`](_predicate_bridge-of.md). Bridge edges allow custom vocabularies to share elements from an existing complete vocabulary without creating duplicate edge documents.

This mechanism is also used for **alias resolution**: an alias term carries no content of its own and is linked to its canonical term via bridge and enum-of edges, so that traversal through the alias graph always resolves to the canonical term.

As a sub-enumeration root, `_predicate_bridge` may be used in [`_enum_types`](_enum_types.md) to constrain a property to bridge predicates only.

---

**`_code`**

```json
{
  "_aid" : [
    "bridge"
  ],
  "_gid" : "_predicate_bridge",
  "_lid" : "bridge",
  "_nid" : "_predicate"
}
```
