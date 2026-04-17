# Tags
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a> <a href="_term_role_enum-source.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration source</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_tag</code></p>

> A set of free-form keyword labels associated with the term, used for search, filtering, and cross-cutting grouping. Each element is drawn from the `_tag` controlled vocabulary, which is user-defined and initially empty.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `tag` |
| [Global identifier](_gid.md) | `_tag` |
| [Official identifiers](_aid.md) | `tag` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "tag"
  ],
  "_gid" : "_tag",
  "_lid" : "tag",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Tags

**[Definition](_definition.md):** A set of free-form keyword labels associated with the term, used for search, filtering, and cross-cutting grouping. Each element is drawn from the `_tag` controlled vocabulary, which is user-defined and initially empty.

**[Description](_description.md)**

Tags are the most open-ended classifier in the [`_domn`](_domn.md) section. Where [`_domain`](_domain.md) groups by scientific field and [`_category`](_category.md) groups by functional role, tags attach any keyword that aids discovery or grouping — dataset names, measurement protocols, data source identifiers, project-specific flags, or thematic keywords.

Examples of vocabulary elements that might be added: `_tag_FORGENIUS-WP2`, `_tag_CHELSA`, `_tag_time-series`, `_tag_FS-tree`, `_tag_plot-level`. Tags tend to be more granular and project-specific than domains or categories, and the vocabulary grows freely as new labelling needs arise.

The `_tag` enumeration root is currently empty — no tag terms are pre-defined. New tags are added by creating enumeration elements under the `_tag` root (via [`_predicate_enum-of`](_predicate_enum-of.md) edges).

**[Examples](_examples.md)**

A remote-sensing variable tagged with its data source and temporal resolution (hypothetical future vocabulary):

```json
{
	"_domn": {
		"_tag": ["_tag_CHELSA", "_tag_monthly", "_tag_gridded"]
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
    "ISO_639_3_eng" : "Tags"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Set](_set.md) — [Enumerated value](_enum.md) ([Controlled vocabularies](_enums.md): [Tags](_tag.md))

<details>
<summary>JSON</summary>

```json
{
  "_set" : {
    "_enum" : {
      "_enums" : [
        "_tag"
      ]
    }
  }
}
```

</details>
