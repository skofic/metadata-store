# `_predicate_section`

**`_title`**

Section predicates

**`_definition`**

The sub-vocabulary of predicates used to group enumeration elements under display-only section headers. Section edges are skipped during validation traversal but used to render collapsible groups during display.

**`_description`**

The section sub-vocabulary contains one predicate: [`_predicate_section-of`](_predicate_section-of.md). Section edges do not carry semantic meaning — they are ignored during validation and element lookup. Their sole purpose is to provide display grouping: when rendering a controlled vocabulary as a tree or a picker, section nodes serve as collapsible group headers.

Note the contrast with hierarchical enumerations where intermediate nodes are also valid selectable values (linked by [`_predicate_enum-of`](_predicate_enum-of.md)): in that pattern, both the group node and its members are valid choices. In a section-based pattern, only the leaf elements are valid choices; the section node is a display artefact.

As a sub-enumeration root, `_predicate_section` may be used in [`_enum_types`](_enum_types.md) to constrain a property to section predicates only.

---

**`_code`**

```json
{
	"_nid": "_predicate",
	"_lid": "section",
	"_gid": "_predicate_section",
	"_aid": ["section"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-root"]
}
```
