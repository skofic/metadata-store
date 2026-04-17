# Subject domain
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a> <a href="_term_role_enum-source.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration source</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_domain</code></p>

> A set of subject-area or discipline labels classifying the term by the scientific or application domain it belongs to. Each element is drawn from the `_domain` controlled vocabulary, which is user-defined and initially empty.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `domain` |
| [Global identifier](_gid.md) | `_domain` |
| [Official identifiers](_aid.md) | `domain` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "domain"
  ],
  "_gid" : "_domain",
  "_lid" : "domain",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Subject domain

**[Definition](_definition.md):** A set of subject-area or discipline labels classifying the term by the scientific or application domain it belongs to. Each element is drawn from the `_domain` controlled vocabulary, which is user-defined and initially empty.

**[Description](_description.md)**

Subject domains answer the question *what scientific field does this term belong to?* Examples of vocabulary elements that might be added later: `_domain_forestry`, `_domain_climatology`, `_domain_genomics`, `_domain_hydrology`. A term may belong to multiple domains simultaneously.

The `_domain` enumeration root is currently empty — no domain terms are pre-defined. New domain terms are added by creating enumeration elements under the `_domain` root (via [`_predicate_enum-of`](_predicate_enum-of.md) edges) as the dictionary grows to serve specific use cases.

Subject domain differs from [`_category`](_category.md), which describes the term's functional role within the dictionary (measured vs. modelled, core vs. experimental), and from [`_tag`](_tag.md), which carries free-form keyword labels.

**[Examples](_examples.md)**

A term classified as belonging to both the forestry and remote-sensing domains (using hypothetical future vocabulary elements):

```json
{
	"_domn": {
		"_domain": ["_domain_forestry", "_domain_remote-sensing"]
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
    "ISO_639_3_eng" : "Subject domain"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Set](_set.md) — [Enumerated value](_enum.md) ([Controlled vocabularies](_enums.md): [Subject domain](_domain.md))

<details>
<summary>JSON</summary>

```json
{
  "_set" : {
    "_enum" : {
      "_enums" : [
        "_domain"
      ]
    }
  }
}
```

</details>
