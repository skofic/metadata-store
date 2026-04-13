# Enumeration of
<p><a href="_term_role_predicate.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Predicate</a> <a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_enum-of</code></p>

> The source node is a valid enumeration element of the destination node's controlled vocabulary. Used to declare membership in an enumeration, making the source a selectable value within that vocabulary.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Relationship predicate](_predicate.md) |
| [Local identifier](_lid.md) | `enum-of` |
| [Global identifier](_gid.md) | `_predicate_enum-of` |
| [Official identifiers](_aid.md) | `enum-of` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "enum-of"
  ],
  "_gid" : "_predicate_enum-of",
  "_lid" : "enum-of",
  "_nid" : "_predicate"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Enumeration of

**[Definition](_definition.md):** The source node is a valid enumeration element of the destination node's controlled vocabulary. Used to declare membership in an enumeration, making the source a selectable value within that vocabulary.

**[Description](_description.md)**

`_predicate_enum-of` is the primary relationship for building controlled vocabularies. An edge with this predicate states that [`_from`](_from.md) is a valid, selectable value within the vocabulary rooted at (or containing) [`_to`](_to.md).

During **validation traversal**, only `_predicate_enum-of` edges are followed — section and bridge edges are skipped. The traversal starts from the vocabulary root and collects all reachable elements via these edges.

During **display**, the same edges are followed but section nodes are rendered as collapsible group headers. Elements may be nested at any depth within section nodes.

Enumerations can be hierarchical: if `_to` is itself an element of a larger vocabulary (rather than the root), then `_from` is a member of a sub-group within that vocabulary. Both `_to` and `_from` are valid selectable values in this case.

The [`_path`](_path.md) set on an edge determines which vocabularies the edge participates in, enabling element sharing across multiple vocabularies without duplicating edge documents.

**[Examples](_examples.md)**

Italy is a valid element of the ISO 3166-3 country vocabulary:

```json
{
	"_from": "terms/ISO_3166_3_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/ISO_3166_3",
	"_path": ["terms/ISO_3166_3"],
	"_path_data": {}
}
```

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
  "_examples" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Enumeration of"
  }
}
```

</details>
