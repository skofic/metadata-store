# `_type_term_alias`

**`_title`**

Alias

**`_definition`**

The term type indicating that the term is an alias for another canonical term. Alias terms carry only a `_code` section; content is resolved through the aliased term.

**`_description`**

A term marked `_type_term_alias` acts as an alternative identifier for a canonical term. It carries no [`_info`](_info.md), [`_data`](_data.md), or [`_rule`](_rule.md) sections of its own. When the dictionary resolves a reference to an alias, it follows the [`_predicate_bridge-of`](_predicate_bridge-of.md) edge to the canonical term and returns that term's content.

---

**`_code`**

```json
{
	"_nid": "_type_term",
	"_lid": "alias",
	"_gid": "_type_term_alias",
	"_aid": ["alias"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-item"]
}
```
