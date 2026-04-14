# Field of
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_field-of</code></p>

> The source descriptor is a field of the destination term. Used to define form layouts and data table column sets, independently of schema membership.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_predicate` |
| [Local identifier](_lid.md) | `field-of` |
| [Global identifier](_gid.md) | `_predicate_field-of` |
| [Official identifiers](_aid.md) | `field-of` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_predicate",
  "_lid": "field-of",
  "_gid": "_predicate_field-of",
  "_aid": [
    "field-of"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Field of

**[Definition](_definition.md):** The source descriptor is a field of the destination term. Used to define form layouts and data table column sets, independently of schema membership.

**[Description](_description.md)**

`_predicate_field-of` links a descriptor to a term that represents a form, report, or data table layout. An edge with this predicate states that [`_from`](_from.md) (a descriptor) should appear as a field or column when displaying or entering data for [`_to`](_to.md).

This predicate is distinct from [`_predicate_property-of`](_predicate_property-of.md): [`_predicate_property-of`](_predicate_property-of.md) is about schema validity — which properties are allowed in an object. `_predicate_field-of` is about presentation — which fields appear in a specific form or table, in what order, and with what grouping.

The same descriptor may be a field of multiple layouts and a property of multiple schemas simultaneously, using separate edges for each relationship.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Field of"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>
