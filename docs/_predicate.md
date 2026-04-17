# Relationship predicate
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a> <a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_enum-source.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration source</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_predicate</code></p>

> The edge property that identifies the type of a directed relationship between two nodes in a dictionary graph. Its value must be one of the enumeration elements in the `_predicate` controlled vocabulary.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `predicate` |
| [Global identifier](_gid.md) | `_predicate` |
| [Official identifiers](_aid.md) | `predicate` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "predicate"
  ],
  "_gid" : "_predicate",
  "_lid" : "predicate",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Relationship predicate

**[Definition](_definition.md):** The edge property that identifies the type of a directed relationship between two nodes in a dictionary graph. Its value must be one of the enumeration elements in the `_predicate` controlled vocabulary.

**[Description](_description.md)**

`_predicate` qualifies the nature of a directed relationship. Every edge document must carry a `_predicate` value drawn from one of four predicate groups:

- **Functional** ([`_predicate_functional`](_predicate_functional.md)): semantically meaningful predicates followed during graph traversal — [`_predicate_enum-of`](_predicate_enum-of.md), [`_predicate_property-of`](_predicate_property-of.md), [`_predicate_field-of`](_predicate_field-of.md), and [`_predicate_value-of`](_predicate_value-of.md).
- **Structural** ([`_predicate_structural`](_predicate_structural.md)): inter-variable dependency predicates for dataset validation — [`_predicate_required-by`](_predicate_required-by.md), [`_predicate_banned-by`](_predicate_banned-by.md), and [`_predicate_recommended-by`](_predicate_recommended-by.md).
- **Section** ([`_predicate_section`](_predicate_section.md)): display grouping predicates — [`_predicate_section-of`](_predicate_section-of.md).
- **Bridge** ([`_predicate_bridge`](_predicate_bridge.md)): element-sharing and alias predicates — [`_predicate_bridge-of`](_predicate_bridge-of.md).

All predicates follow the **many-to-one direction**: [`_from`](_from.md) is always the leaf (child, member, element) and [`_to`](_to.md) is always the root (parent, container, category).

**[Examples](_examples.md)**

An edge using [`_predicate_enum-of`](_predicate_enum-of.md) to declare Italy as a member of the ISO 3166-3 vocabulary:

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
    "ISO_639_3_eng" : "Relationship predicate"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Enumerated value](_enum.md) ([Controlled vocabularies](_enums.md): [Relationship predicate](_predicate.md))

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_enum" : {
      "_enums" : [
        "_predicate"
      ]
    }
  }
}
```

</details>
