# Global identifier
<p style="color: #888; margin-top: -0.5em;"><code>_gid</code></p>

> The unique identifier of the term across the entire dictionary. Computed as the concatenation of the namespace identifier and the local identifier, separated by an underscore. Copied to the document key before the record is stored.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `gid` |
| [Global identifier](_gid.md) | `_gid` |
| [Official identifiers](_aid.md) | `gid` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "gid"
  ],
  "_gid" : "_gid",
  "_lid" : "gid",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Global identifier

**[Definition](_definition.md):** The unique identifier of the term across the entire dictionary. Computed as the concatenation of the namespace identifier and the local identifier, separated by an underscore. Copied to the document key before the record is stored.

**[Description](_description.md)**

The global identifier uniquely identifies a term across the entire dictionary. It is computed from the [namespace identifier](_nid.md) and the [local identifier](_lid.md) according to the following rules:

| [`_nid`](_nid.md) value | `_gid` formula | Example |
|---|---|---|
| Present and non-empty | [`_nid`](_nid.md) + `_` + [`_lid`](_lid.md) | `ISO_3166_3_ITA` |
| Empty string `""` | `_` + [`_lid`](_lid.md) | [`_code`](_code.md) |
| Absent | [`_lid`](_lid.md) | `ISO` |

Because `_gid` is computed before the document is stored, it is a plain string value — not a reference to an existing document. **The computed value is copied to the ArangoDB document key ([`_key`](_key.md)), making it the primary key within the terms collection and enforcing uniqueness across the dictionary.**

**[Examples](_examples.md)**

`ISO_3166_3_ITA` is the global identifier of the Italy term: namespace `ISO_3166_3` concatenated with local identifier `ITA` via an underscore:

```json
{
	"_code": {
		"_nid": "ISO_3166_3",
		"_lid": "ITA",
		"_gid": "ISO_3166_3_ITA",
		"_aid": ["ITA"]
	}
}
```

[`_code`](_code.md) is the global identifier of a core dictionary term: an empty-string namespace produces a leading underscore:

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
    "ISO_639_3_eng" : "Global identifier"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [String](_string.md) ([Regular expression](_regexp.md): `^[a-zA-Z0-9\-_:.@+,=;$!*'%()]{1,254}$`)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_string" : {
      "_regexp" : "^[a-zA-Z0-9\\-_:.@+,=;$!*'%()]{1,254}$"
    }
  }
}
```

</details>
