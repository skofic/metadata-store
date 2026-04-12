# `_term_role_predicate`

**`_title`**

Predicate

**`_definition`**

A term role indicating that the term is used as the value of the `_predicate` field in at least one edge document. Set automatically.

**`_description`**

Terms tagged with `_term_role_predicate` are the relationship qualifiers of the dictionary graph. Every edge document has a `_predicate` field whose value is the [`_gid`](_gid.md) of a predicate term.

This role is distinct from the [`_predicate`](_predicate.md) enumeration root. The `_predicate` enumeration is a controlled vocabulary that organises and exposes available predicates to users creating relationships. `_term_role_predicate` simply tags any term that is actually used in an edge's `_predicate` field — which in practice will be the elements of the `_predicate` enumeration, but the role is derived from edge data, not from enumeration membership.

This role is assigned automatically by the loader when it detects that the term's `_gid` appears as a [`_predicate`](_predicate.md) value in at least one edge document.

---

**`_code`**

```json
{
  "_aid" : [
    "predicate"
  ],
  "_gid" : "_term_role_predicate",
  "_lid" : "predicate",
  "_nid" : "_term_role"
}
```
