# Functional category
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a> <a href="_term_role_enum-source.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration source</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_category</code></p>

> A set of functional or organisational categories classifying the term by its role within the dictionary or data model. Each element is drawn from the `_category` controlled vocabulary, which is user-defined and initially empty.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `category` |
| [Global identifier](_gid.md) | `_category` |
| [Official identifiers](_aid.md) | `category` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "category"
  ],
  "_gid" : "_category",
  "_lid" : "category",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Functional category

**[Definition](_definition.md):** A set of functional or organisational categories classifying the term by its role within the dictionary or data model. Each element is drawn from the `_category` controlled vocabulary, which is user-defined and initially empty.

**[Description](_description.md)**

Functional categories answer the question *what kind of thing is this term within the system?* Where [`_domain`](_domain.md) classifies by scientific field, `_category` classifies by the nature and role of the data: whether a variable is measured in the field or derived by a model, whether a term is a core building block or experimental, whether a value comes from remote sensing or a laboratory instrument.

Examples of vocabulary elements that might be added: `_category_field-measurement`, `_category_remote-sensing`, `_category_modelled`, `_category_core`, `_category_experimental`, `_category_derived`. A term may carry multiple categories.

The `_category` enumeration root is currently empty — no category terms are pre-defined. New category terms are added by creating enumeration elements under the `_category` root (via [`_predicate_enum-of`](_predicate_enum-of.md) edges).

**[Examples](_examples.md)**

A field-measurement variable classified under both its data collection method and its processing status (hypothetical future vocabulary):

```json
{
	"_domn": {
		"_category": ["_category_field-measurement", "_category_validated"]
	}
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
    "ISO_639_3_eng" : "Functional category"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Set](_set.md) — [Enumerated value](_enum.md) ([Controlled vocabularies](_enums.md): [Functional category](_category.md))

<details>
<summary>JSON</summary>

```json
{
  "_set" : {
    "_enum" : {
      "_enums" : [
        "_category"
      ]
    }
  }
}
```

</details>
