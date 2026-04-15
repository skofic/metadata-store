# Provider identifiers
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_pid</code></p>

> The set of identifiers assigned to this term by data providers or metadata curators. Used to match variable names in incoming datasets to known dictionary terms.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `pid` |
| [Global identifier](_gid.md) | `_pid` |
| [Official identifiers](_aid.md) | `pid` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "pid"
  ],
  "_gid" : "_pid",
  "_lid" : "pid",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Provider identifiers

**[Definition](_definition.md):** The set of identifiers assigned to this term by data providers or metadata curators. Used to match variable names in incoming datasets to known dictionary terms.

**[Description](_description.md)**

This dictionary is used to apply standards and metadata to external datasets. When a dataset arrives without metadata, its variable names may not match any [local identifier](_lid.md) or [official identifier](_aid.md). The provider identifiers set records the names that specific data providers use for this concept, enabling automated matching during dataset ingestion.

Unlike [official identifiers](_aid.md), provider identifiers are not required to follow any standard — they are simply the names that a particular source happens to use for the same concept. Multiple providers may use different names for the same variable, all of which can be collected here.

**[Examples](_examples.md)**

A dataset from a legacy system uses `I` as its internal country code for Italy (the IOC code). Because `I` is an official identifier it belongs in [`_aid`](_aid.md); internal codes used by specific data providers belong in `_pid`:

```json
{
	"_code": {
		"_nid": "ISO_3166_3",
		"_lid": "ITA",
		"_gid": "ISO_3166_3_ITA",
		"_aid": ["ITA", "IT", "I"],
		"_pid": ["italy_code", "country_IT"]
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
    "ISO_639_3_eng" : "Provider identifiers"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Set](_set.md) — [String](_string.md)

<details>
<summary>JSON</summary>

```json
{
  "_set" : {
    "_string" : {

    }
  }
}
```

</details>
