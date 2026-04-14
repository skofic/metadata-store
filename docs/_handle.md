# Document handle
<p style="color: #888; margin-top: -0.5em;"><code>_handle</code></p>

> The scalar data type for ArangoDB document handles — strings in the form `<collection>/<_key>` identifying a specific document in a specific collection.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `handle` |
| [Global identifier](_gid.md) | `_handle` |
| [Official identifiers](_aid.md) | `handle` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "handle",
  "_gid": "_handle",
  "_aid": [
    "handle"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Document handle

**[Definition](_definition.md):** The scalar data type for ArangoDB document handles — strings in the form `<collection>/<_key>` identifying a specific document in a specific collection.

**[Description](_description.md)**

`_handle` declares that the value is an ArangoDB document handle (document ID): a string combining the collection name and the document key separated by a forward slash (e.g. `terms/_code`). Used in edge document [`_from`](_from.md) and [`_to`](_to.md) fields and in graph [`_path`](_path.md) sets. No companion properties apply. Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_handle": {}
	}
}
```

Stored values: `"terms/_string_date"`, `"terms/ISO_3166_3_ITA"`, `"edges/00ab12cd"`.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Document handle"
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

**Shape:** [Object](_object.md)

<details>
<summary>JSON</summary>

```json
{
  "_object": {
    "_closed": {}
  }
}
```

</details>
