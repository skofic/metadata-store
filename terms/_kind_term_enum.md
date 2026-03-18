# `_kind_term_enum`

**`_title`**

Enumeration Root

**`_definition`**

An enumeration element indicating that the term is the root of a controlled vocabulary graph — an enumeration type from which valid selectable values are drawn. Other terms connect to it via `_predicate_enum-of` edges to declare themselves as valid choices.

**`_description`**

`_kind_term_enum` is a role value used in the [`_kind_term`](_kind_term.md) property of the [`_domn`](_domn.md) section. It flags the term as an enumeration root — the top node of a controlled vocabulary graph.

An enumeration root defines a value domain: all terms connected to it (directly or transitively) via `_predicate_enum-of` edges are valid choices when a descriptor uses `_type_enum` with `_kind_enum` pointing to this root. The root itself is not a valid selectable value — only its members are.

A term may simultaneously be an enumeration root and a namespace: for example, `ISO_639_3` is both the root of the ISO 639-3 language vocabulary and the namespace under which its elements (such as `ISO_639_3_eng`) reside.

```json
{
	"_domn": {
		"_kind_term": ["_kind_term_enum", "_kind_term_namespace"]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "enum"
  ],
  "_gid" : "_kind_term_enum",
  "_lid" : "enum",
  "_nid" : "_kind_term"
}
```
