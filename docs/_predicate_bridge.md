# Bridge predicates
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_bridge</code></p>

> The sub-vocabulary of predicates used to connect a custom vocabulary to elements from another vocabulary, enabling element reuse without duplicating edge documents.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Relationship predicate](_predicate.md) |
| [Local identifier](_lid.md) | `bridge` |
| [Global identifier](_gid.md) | `_predicate_bridge` |
| [Official identifiers](_aid.md) | `bridge` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "bridge"
  ],
  "_gid" : "_predicate_bridge",
  "_lid" : "bridge",
  "_nid" : "_predicate"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Bridge predicates

**[Definition](_definition.md):** The sub-vocabulary of predicates used to connect a custom vocabulary to elements from another vocabulary, enabling element reuse without duplicating edge documents.

**[Description](_description.md)**

The bridge sub-vocabulary contains one predicate: [`_predicate_bridge-of`](_predicate_bridge-of.md). Bridge edges allow custom vocabularies to share elements from an existing complete vocabulary without creating duplicate edge documents.

This mechanism is also used for **alias resolution**: an alias term carries no content of its own and is linked to its canonical term via bridge and enum-of edges, so that traversal through the alias graph always resolves to the canonical term.

As a sub-enumeration root, `_predicate_bridge` may be used in [`_enums`](_enums.md) to constrain a property to bridge predicates only.

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
    "ISO_639_3_eng" : "Bridge predicates"
  }
}
```

</details>
