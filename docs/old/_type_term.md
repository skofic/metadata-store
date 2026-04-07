# `_type_term`

**`_title`**

Term type

**`_definition`**

Root of the controlled vocabulary for term type classifications. Each element describes a structural role that a term may play in the dictionary.

**`_description`**

`_type_term` is the enumeration root for term type values. These values are placed in the [`_term_type`](_term_type.md) property of a term's [`_domn`](_domn.md) section to declare the structural role the term plays: alias, predicate, namespace, descriptor, enumeration root, enumeration element, object definition, or type definition. A term may carry multiple `_term_type` values if it plays more than one role simultaneously.

---

**`_code`**

```json
{
  "_aid" : [
    "term"
  ],
  "_gid" : "_type_term",
  "_lid" : "term",
  "_nid" : "_type"
}
```
