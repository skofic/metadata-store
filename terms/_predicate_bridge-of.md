# `_predicate_bridge-of`

**`_title`**

Bridge of

**`_definition`**

The source node is a bridge connecting the destination vocabulary root to elements from another vocabulary. During traversal, the bridge node is skipped and the traversal continues into the source vocabulary's elements using the destination graph's `_path` filter.

**`_description`**

`_predicate_bridge-of` enables a vocabulary to include elements from a separate, pre-existing vocabulary without duplicating edge documents. An edge with this predicate states: [`_from`](_from.md) is a bridge node that, when encountered during traversal of [`_to`](_to.md), causes the traversal to switch into `_from`'s vocabulary and continue there.

**How it works**: elements in the source vocabulary that should appear in the custom vocabulary have the custom vocabulary's root added to their [`_path`](_path.md) set. When traversing the custom vocabulary, the bridge edge is encountered first; the bridge node is skipped; then element edges already sharing the `_path` value are found and returned.

**Alias resolution**: the same mechanism implements aliases. An alias term (e.g. `ISO_639_1_en`) is linked to its canonical graph root with `_predicate_bridge-of`, marking it as a bridge. The canonical term (e.g. `ISO_639_3_eng`) is then linked to the alias term with [`_predicate_enum-of`](_predicate_enum-of.md) within the alias graph. Traversal through the alias graph resolves to the canonical term; looking up the bridge term's `_predicate_enum-of` edges directly yields the canonical term in one step.

Bridge nodes are always skipped during traversal — they are never returned as valid values.

**`_examples`**

Italy included in a custom `MyCountries` vocabulary via a bridge to `ISO_3166_3`:

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

---

**`_code`**

```json
{
	"_nid": "_predicate",
	"_lid": "bridge-of",
	"_gid": "_predicate_bridge-of",
	"_aid": ["bridge-of"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_predicate"]
}
```
