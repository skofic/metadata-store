# Domains section
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_domn</code></p>

> The section of a term that classifies and categorises the term within the dictionary. It is an open object that may carry any combination of classification properties, each defined by a dictionary descriptor. The recommended property is `_term_role`, which records the roles the term plays in the dictionary.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `domn` |
| [Global identifier](_gid.md) | `_domn` |
| [Official identifiers](_aid.md) | `domn` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "domn"
  ],
  "_gid" : "_domn",
  "_lid" : "domn",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Domains section

**[Definition](_definition.md):** The section of a term that classifies and categorises the term within the dictionary. It is an open object that may carry any combination of classification properties, each defined by a dictionary descriptor. The recommended property is `_term_role`, which records the roles the term plays in the dictionary.

**[Description](_description.md)**

The domains section is a flexible classification container. Unlike the fixed sections of a term (`_code`, `_info`, `_data`, `_prop`), `_domn` is an open object — any descriptor defined in the dictionary may appear as a property, allowing the dictionary itself to define what classification dimensions exist.

The primary classification property is [`_term_role`](_term_role.md), a set of enumeration values drawn from the `_term_role` controlled vocabulary. The dictionary loader computes `_term_role` automatically from the term's structure (presence of `_data`, graph membership as enum root or enum item, appearance in edge `_predicate` fields). Users may additionally assign [`_term_role_type`](_term_role_type.md) or [`_term_role_typedef`](_term_role_typedef.md) to indicate design intent that cannot be inferred structurally.

Future classification dimensions — subject domains, maintenance status, data sensitivity, provenance tags — are added simply by defining new descriptor terms and using them as properties of `_domn`. No schema change to the term structure is required.

**[Examples](_examples.md)**

A descriptor term classified as both a descriptor and a data type:

```json
{
	"_domn": {
		"_term_role": [
			"_term_role_descriptor",
			"_term_role_type"
		]
	}
}
```

A term classified as a typedef, with an additional subject-domain tag (hypothetical future descriptor):

```json
{
	"_domn": {
		"_term_role": ["_term_role_typedef"],
		"std_domain": "std_domain_health"
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
    "ISO_639_3_eng" : "Domains section"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Open schema](_open.md)

**[Recommended properties](_recommended.md):** [Term role](_term_role.md)

**[Computed properties](_computed.md):** [Term role](_term_role.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_open" : {
      "_computed" : [
        "_term_role"
      ],
      "_recommended" : [
        "_term_role"
      ]
    }
  }
}
```

</details>
