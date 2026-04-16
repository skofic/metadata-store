# Bridge of
<p><a href="_term_role_predicate.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Predicate</a> <a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_bridge-of</code></p>

> The source node is a bridge connecting the destination vocabulary root to elements from another vocabulary. During traversal, the bridge node is skipped and the traversal continues into the source vocabulary's elements using the destination graph's `_path` filter.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Relationship predicate](_predicate.md) |
| [Local identifier](_lid.md) | `bridge-of` |
| [Global identifier](_gid.md) | `_predicate_bridge-of` |
| [Official identifiers](_aid.md) | `bridge-of` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "bridge-of"
  ],
  "_gid" : "_predicate_bridge-of",
  "_lid" : "bridge-of",
  "_nid" : "_predicate"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Bridge of

**[Definition](_definition.md):** The source node is a bridge connecting the destination vocabulary root to elements from another vocabulary. During traversal, the bridge node is skipped and the traversal continues into the source vocabulary's elements using the destination graph's `_path` filter.

**[Description](_description.md)**

`_predicate_bridge-of` enables a vocabulary to include elements from a separate, pre-existing vocabulary without duplicating edge documents. An edge with this predicate states: [`_from`](_from.md) is a bridge node that, when encountered during traversal of [`_to`](_to.md), causes the traversal to switch into `_from`'s vocabulary and continue there.

**How it works**: elements in the source vocabulary that should appear in the custom vocabulary have the custom vocabulary's root added to their [`_path`](_path.md) set. When traversing the custom vocabulary, the bridge edge is encountered first; the bridge node is skipped; then element edges already sharing the `_path` value are found and returned.

**Alias resolution**: the same mechanism implements aliases. An alias term (e.g. [`ISO_639_1_en`](ISO_639_1_en.md)) is linked to its canonical graph root with `_predicate_bridge-of`, marking it as a bridge. The canonical term (e.g. [`ISO_639_3_eng`](ISO_639_3_eng.md)) is then linked to the alias term with [`_predicate_enum-of`](_predicate_enum-of.md) within the alias graph. Traversal through the alias graph resolves to the canonical term; looking up the bridge term's `_predicate_enum-of` edges directly yields the canonical term in one step.

Bridge nodes are always skipped during traversal — they are never returned as valid values.

**[Examples](_examples.md)**

Italy included in a custom `MyCountries` vocabulary via a bridge to [`ISO_3166_3`](ISO_3166_3.md):

```json
{
	"_from": "terms/ISO_3166_3_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/ISO_3166_3",
	"_path": ["terms/ISO_3166_3", "terms/MyCountries"],
	"_path_data": {}
},
{
	"_from": "terms/ISO_3166_3",
	"_predicate": "_predicate_bridge-of",
	"_to": "terms/MyCountries",
	"_path": ["terms/MyCountries"],
	"_path_data": {}
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
    "ISO_639_3_eng" : "Bridge of"
  }
}
```

</details>
