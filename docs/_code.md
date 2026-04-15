# Identification section
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_code</code></p>

> The section of a term that holds its identifiers: the local identifier within a namespace, the optional namespace reference, and the computed global identifier that uniquely identifies the term across the entire dictionary.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `code` |
| [Global identifier](_gid.md) | `_code` |
| [Official identifiers](_aid.md) | `code` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "code"
  ],
  "_gid" : "_code",
  "_lid" : "code",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Identification section

**[Definition](_definition.md):** The section of a term that holds its identifiers: the local identifier within a namespace, the optional namespace reference, and the computed global identifier that uniquely identifies the term across the entire dictionary.

**[Description](_description.md)**

The identification section is mandatory in every [term](_term.md). It provides the identifiers that locate the term within the dictionary's namespace hierarchy.

The [local identifier](_lid.md) ([`_lid`](_lid.md)) is the only property the curator must always supply. The [namespace](_nid.md) ([`_nid`](_nid.md)) optionally scopes the term under a parent term, enabling hierarchical organisation from general to specific — for example `ISO` → `ISO_3166` → `ISO_3166_3`. The [global identifier](_gid.md) ([`_gid`](_gid.md)) is computed by concatenating `_nid` and `_lid` with an underscore (`_`) separator and is unique across the entire dictionary; it is copied to the ArangoDB document key before the term is saved.

Terms with an empty-string namespace (`_nid: ""`) are core dictionary building blocks, recognisable by the leading underscore in their `_gid` — for example `_code`, `_info`, `_data`. Terms with no `_nid` property define top-level namespaces — for example `ISO`.

The [all-identifiers](_aid.md) set (`_aid`) is computed automatically from `_lid` if not supplied and grows as aliases are added. The secondary properties [`_uri`](_uri.md), [`_pid`](_pid.md), [`_name`](_name.md), [`_symbol`](_symbol.md), and [`_emoji`](_emoji.md) are optional and serve identification and presentational purposes. [`_uri`](_uri.md) records a persistent external URI that links the term to the same concept in an authority file or knowledge graph such as Wikidata or GeoNames — an identity link, not a documentation reference. [`_regexp`](_regexp.md) is also optional; when present on an enumeration root or section node it constrains the [`_lid`](_lid.md) format of the term's direct enumeration element children in the graph.

**[Examples](_examples.md)**

A country term with several secondary properties:

```json
{
	"_code": {
		"_nid": "ISO_3166_3",
		"_lid": "ITA",
		"_gid": "ISO_3166_3_ITA",
		"_aid": ["ITA", "IT", "I"],
		"_name": "Italia",
		"_emoji": "🇮🇹"
	}
}
```

A core dictionary building block with an empty-string namespace:

```json
{
	"_code": {
		"_nid": "",
		"_lid": "code",
		"_gid": "_code",
		"_aid": ["code"]
	}
}
```

A top-level namespace term with no parent:

```json
{
	"_code": {
		"_lid": "ISO",
		"_gid": "ISO",
		"_aid": ["ISO"]
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
    "ISO_639_3_eng" : "Identification section"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

**[Required properties](_required.md)**

[Mandatory selection](_all.md)
[Local identifier](_lid.md) · [Global identifier](_gid.md) · [Official identifiers](_aid.md)

**[Recommended properties](_recommended.md):** [Namespace](_nid.md) · [Uniform Resource Identifier](_uri.md) · [Provider identifiers](_pid.md) · [Name](_name.md) · [Symbol](_symbol.md) · [Unicode symbol for display](_symbol_print.md) · [Regular expression](_regexp.md) · [Emoji](_emoji.md)

**[Computed properties](_computed.md):** [Global identifier](_gid.md) · [Official identifiers](_aid.md)

**[Immutable properties](_immutable.md):** [Namespace](_nid.md) · [Local identifier](_lid.md) · [Global identifier](_gid.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {
      "_computed" : [
        "_gid",
        "_aid"
      ],
      "_immutable" : [
        "_nid",
        "_lid",
        "_gid"
      ],
      "_recommended" : [
        "_nid",
        "_uri",
        "_pid",
        "_name",
        "_symbol",
        "_symbol_print",
        "_regexp",
        "_emoji"
      ],
      "_required" : [
        {
          "_selection" : [
            "_lid",
            "_gid",
            "_aid"
          ],
          "_selectors" : [
            {
              "_all" : {

              }
            }
          ]
        }
      ]
    }
  }
}
```

</details>
