# `_kind_term_alias`

**`_title`**

Alias

**`_definition`**

An enumeration element indicating that the term is an alias — an alternative identifier for a canonical term. An alias carries only a [`_code`](_code.md) section and no [`_info`](_info.md); the dictionary resolves it to the canonical term it points to.

**`_description`**

[`_kind_term_alias`](_kind_term_alias.md) is a role value used in the [`_kind_term`](_kind_term.md) property of the [`_domn`](_domn.md) section. It flags the term as an alias — a term that provides an alternative identifier for another, canonical term without duplicating its content.

An alias term carries only its [`_code`](_code.md) section (and optionally [`_domn`](_domn.md)). It has no [`_info`](_info.md), [`_data`](_data.md), or [`_rule`](_rule.md) sections. In the graph, an alias is implemented using [`_predicate_bridge-of`](_predicate_bridge-of.md) and [`_predicate_enum-of`](_predicate_enum-of.md) edges: the alias node acts as a bridge that is skipped during traversal, with the canonical term returned as the resolved value.

A typical use case is alternate coding standards: `ISO_639_1_en` (ISO 639-1) and `ISO_639_3_eng` (ISO 639-3) both represent English. `ISO_639_1_en` is the alias; `ISO_639_3_eng` is the canonical term.

```json
{
	"_domn": {
		"_kind_term": ["_kind_term_alias"]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "alias"
  ],
  "_gid" : "_kind_term_alias",
  "_lid" : "alias",
  "_nid" : "_kind_term"
}
```
