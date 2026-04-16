# Conversion predicates
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_conversion</code></p>

> The sub-vocabulary of predicates used to encode bidirectional linear conversion relationships between unit terms of the same quantity kind.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Relationship predicate](_predicate.md) |
| [Local identifier](_lid.md) | `conversion` |
| [Global identifier](_gid.md) | `_predicate_conversion` |
| [Official identifiers](_aid.md) | `conversion` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "conversion"
  ],
  "_gid" : "_predicate_conversion",
  "_lid" : "conversion",
  "_nid" : "_predicate"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Conversion predicates

**[Definition](_definition.md):** The sub-vocabulary of predicates used to encode bidirectional linear conversion relationships between unit terms of the same quantity kind.

**[Description](_description.md)**

The conversion sub-vocabulary contains one predicate: [`_predicate_converts-to`](_predicate_converts-to.md). Unlike all other predicates, conversion predicates encode **bidirectional** relationships: a single edge stores conversion formulas for both directions in its [`_path_data`](_path_data.md) section, keyed by the target unit handle.

As a sub-enumeration root, `_predicate_conversion` may be used in [`_enums`](_enums.md) constraints to restrict a property to conversion predicates only.

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
    "ISO_639_3_eng" : "Conversion predicates"
  }
}
```

</details>
