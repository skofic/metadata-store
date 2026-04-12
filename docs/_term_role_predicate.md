# Predicate
<p style="color: #888; margin-top: -0.5em;"><code>_term_role_predicate</code></p>

> A term role indicating that the term is used as the value of the `_predicate` field in at least one edge document. Set automatically.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Term role](_term_role.md) |
| [Local identifier](_lid.md) | `predicate` |
| [Global identifier](_gid.md) | `_term_role_predicate` |
| [Official identifiers](_aid.md) | `predicate` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Predicate

**[Definition](_definition.md):** A term role indicating that the term is used as the value of the `_predicate` field in at least one edge document. Set automatically.

**[Description](_description.md)**

Terms tagged with `_term_role_predicate` are the relationship qualifiers of the dictionary graph. Every edge document has a `_predicate` field whose value is the [`_gid`](_gid.md) of a predicate term.

This role is distinct from the [`_predicate`](_predicate.md) enumeration root. The `_predicate` enumeration is a controlled vocabulary that organises and exposes available predicates to users creating relationships. `_term_role_predicate` simply tags any term that is actually used in an edge's `_predicate` field — which in practice will be the elements of the `_predicate` enumeration, but the role is derived from edge data, not from enumeration membership.

This role is assigned automatically by the loader when it detects that the term's `_gid` appears as a [`_predicate`](_predicate.md) value in at least one edge document.

<details>
<summary>JSON</summary>

```json
{
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Predicate"
  }
}
```

</details>
