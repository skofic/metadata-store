# Section predicates
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_section</code></p>

> The sub-vocabulary of predicates used to group enumeration elements under display-only section headers. Section edges are skipped during validation traversal but used to render collapsible groups during display.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_predicate` |
| [Local identifier](_lid.md) | `section` |
| [Global identifier](_gid.md) | `_predicate_section` |
| [Official identifiers](_aid.md) | `section` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_predicate",
  "_lid": "section",
  "_gid": "_predicate_section",
  "_aid": [
    "section"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Section predicates

**[Definition](_definition.md):** The sub-vocabulary of predicates used to group enumeration elements under display-only section headers. Section edges are skipped during validation traversal but used to render collapsible groups during display.

**[Description](_description.md)**

The section sub-vocabulary contains one predicate: [`_predicate_section-of`](_predicate_section-of.md). Section edges do not carry semantic meaning — they are ignored during validation and element lookup. Their sole purpose is to provide display grouping: when rendering a controlled vocabulary as a tree or a picker, section nodes serve as collapsible group headers.

Note the contrast with hierarchical enumerations where intermediate nodes are also valid selectable values (linked by `_predicate_enum-of`): in that pattern, both the group node and its members are valid choices. In a section-based pattern, only the leaf elements are valid choices; the section node is a display artefact.

As a sub-enumeration root, `_predicate_section` may be used in [`_enum_types`](_enum_types.md) to constrain a property to section predicates only.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Section predicates"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>
