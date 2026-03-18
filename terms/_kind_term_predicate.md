# `_kind_term_predicate`

**`_title`**

Predicate

**`_definition`**

An enumeration element indicating that the term is used as a predicate in an edge document — its `_gid` appears as the value of the `_predicate` property, qualifying the nature of the relationship between the `_from` and `_to` nodes.

**`_description`**

`_kind_term_predicate` is a role value used in the [`_kind_term`](_kind_term.md) property of the [`_domn`](_domn.md) section. It flags the term as a predicate — a term whose `_gid` is used as the `_predicate` field of an edge document to qualify the kind of relationship between two nodes.

All predicates follow a **many-to-one direction**: `_from` is the leaf (child, member, element) and `_to` is the root (parent, container, category). Predicates fall into two categories:

- **Functional predicates** — carry domain meaning and are followed during graph traversal (e.g. `_predicate_enum-of`, `_predicate_property-of`, `_predicate_field-of`, `_predicate_value-of`).
- **Non-functional predicates** — structural aids that modify traversal behaviour and are skipped or handled specially during traversal (e.g. `_predicate_section-of`, `_predicate_bridge-of`).

```json
{
	"_domn": {
		"_kind_term": ["_kind_term_predicate"]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "predicate"
  ],
  "_gid" : "_kind_term_predicate",
  "_lid" : "predicate",
  "_nid" : "_kind_term"
}
```
