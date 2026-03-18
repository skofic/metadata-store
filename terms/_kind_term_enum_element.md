# `_kind_term_enum_element`

**`_title`**

Enumeration Element

**`_definition`**

An enumeration element indicating that the term is a valid selectable value within a controlled vocabulary — connected to an enumeration root via a `_predicate_enum-of` edge, directly or transitively through section nodes.

**`_description`**

`_kind_term_enum_element` is a role value used in the [`_kind_term`](_kind_term.md) property of the [`_domn`](_domn.md) section. It flags the term as an enumeration element — a valid choice within one or more controlled vocabulary graphs.

An enumeration element is reachable from an enumeration root by following `_predicate_enum-of` edges (skipping `_predicate_section-of` section nodes during validation traversal). Its `_gid` is a valid value wherever a descriptor declares `_type_enum` with `_kind_enum` pointing to the root of the vocabulary it belongs to.

A term can be an element of multiple controlled vocabularies simultaneously — for example, `ISO_639_3_eng` belongs to both `ISO_639_3` and, via an alias bridge, to `ISO_639_1`. The role `_kind_term_enum_element` does not specify which vocabulary; that information is encoded in the graph edges.

```json
{
	"_domn": {
		"_kind_term": ["_kind_term_enum_element"]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "enum_element"
  ],
  "_gid" : "_kind_term_enum_element",
  "_lid" : "enum_element",
  "_nid" : "_kind_term"
}
```
