# `_kind_term_predicate`

**`_title`**

Predicate

**`_definition`**

An enumeration element indicating that the term is used as a predicate in an edge document — its [`_gid`](_gid.md) appears as the value of the [`_predicate`](_predicate.md) property, qualifying the nature of the relationship between the [`_from`](_from.md) and [`_to`](_to.md) nodes.

**`_description`**

[`_kind_term_predicate`](_kind_term_predicate.md) is a role value used in the [`_kind_term`](_kind_term.md) property of the [`_domn`](_domn.md) section. It flags the term as a predicate — a term whose [`_gid`](_gid.md) is used as the [`_predicate`](_predicate.md) field of an edge document to qualify the kind of relationship between two nodes.

All predicates follow a **many-to-one direction**: [`_from`](_from.md) is the leaf (child, member, element) and [`_to`](_to.md) is the root (parent, container, category). Predicates fall into two categories:

- **Functional predicates** — carry domain meaning and are followed during graph traversal (e.g. [`_predicate_enum-of`](_predicate_enum-of.md), [`_predicate_property-of`](_predicate_property-of.md), [`_predicate_field-of`](_predicate_field-of.md), [`_predicate_value-of`](_predicate_value-of.md)).
- **Non-functional predicates** — structural aids that modify traversal behaviour and are skipped or handled specially during traversal (e.g. [`_predicate_section-of`](_predicate_section-of.md), [`_predicate_bridge-of`](_predicate_bridge-of.md)).

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
