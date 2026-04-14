# Relationship source
<p style="color: #888; margin-top: -0.5em;"><code>_from</code></p>

> The ArangoDB document handle of the source node of a directed relationship. In the dictionary's many-to-one convention, `_from` is always the leaf — an element, member, or property — pointing toward its root, container, or schema.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `from` |
| [Global identifier](_gid.md) | `_from` |
| [Official identifiers](_aid.md) | `from` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "from",
  "_gid": "_from",
  "_aid": [
    "from"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Relationship source

**[Definition](_definition.md):** The ArangoDB document handle of the source node of a directed relationship. In the dictionary's many-to-one convention, `_from` is always the leaf — an element, member, or property — pointing toward its root, container, or schema.

**[Description](_description.md)**

`_from` holds the handle of the **leaf** node in a directed edge. Together with [`_to`](_to.md) and [`_predicate`](_predicate.md), it uniquely identifies the relationship. It is part of the triple used to compute the edge [`_key`](_key.md) and is immutable once set.

The value is an ArangoDB document handle in the format `<collection>/<key>` — for example `terms/ISO_3166_3_ITA`. Because all dictionary terms are stored in the `terms` collection, the handle for a term with [`_gid`](_gid.md) value `X` is always `terms/X`.

The many-to-one convention means the interpretation of `_from` depends on the predicate:

- For [`_predicate_enum-of`](_predicate_enum-of.md): `_from` is an enumeration element, `_to` is the vocabulary root.
- For [`_predicate_property-of`](_predicate_property-of.md): `_from` is a descriptor, `_to` is the schema object.
- For [`_predicate_section-of`](_predicate_section-of.md): `_from` is a section heading, `_to` is the graph root.
- For [`_predicate_bridge-of`](_predicate_bridge-of.md): `_from` is a bridge node pointing into a complete graph, `_to` is the custom graph root.

**[Examples](_examples.md)**

The `_from` field of an edge connecting Italy to the ISO 3166-3 enumeration root:

```json
{
	"_from": "terms/ISO_3166_3_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/ISO_3166_3",
	"_path": ["terms/ISO_3166_3"],
	"_path_data": {}
}
```

Here `terms/ISO_3166_3_ITA` is the handle of the leaf node — the Italian country term.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Relationship source"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Document handle](_handle.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar": {
    "_handle": {}
  }
}
```

</details>
