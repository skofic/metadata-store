# Type
<p style="color: #888; margin-top: -0.5em;"><code>_type</code></p>

> The namespace root for the dictionary's built-in typedef terms. Groups the three typedef terms that encode the allowed type sets for scalar, set-element, and dictionary-key contexts.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `type` |
| [Global identifier](_gid.md) | `_type` |
| [Official identifiers](_aid.md) | `type` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "type"
  ],
  "_gid" : "_type",
  "_lid" : "type",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Type

**[Definition](_definition.md):** The namespace root for the dictionary's built-in typedef terms. Groups the three typedef terms that encode the allowed type sets for scalar, set-element, and dictionary-key contexts.

**[Description](_description.md)**

`_type` is the namespace under which the three built-in typedef terms are organised: [`_type_scalar`](_type_scalar.md), [`_type_comparable`](_type_comparable.md), and [`_type_key`](_type_key.md). These terms carry the complete allowed-type lists used when validating the type key present in [`_scalar`](_scalar.md), [`_set`](_set.md), [`_nested`](_nested.md), and [`_dict_key`](_dict_key.md) objects.

As a namespace root, `_type` itself carries no data section.

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
  "_title" : {
    "ISO_639_3_eng" : "Type"
  }
}
```

</details>
