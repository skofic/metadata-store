# `_selection-descriptors`

**`_title`**

Descriptor Selection

**`_definition`**

Namespace for the five descriptor selection rule terms used inside `_required`. Each sub-term expresses a different cardinality constraint over a set of descriptor `_gid`s.

**`_description`**

`_selection-descriptors` is the namespace for the family of cardinality constraint terms used in the [`_required`](_required.md) object. Each sub-term takes a set (or array of sets) of descriptor `_gid`s and imposes a cardinality rule on how many of them must be present in a valid object.

The five variants are:

- [`_selection-descriptors_one`](_selection-descriptors_one.md): exactly one must be present.
- [`_selection-descriptors_one-none`](_selection-descriptors_one-none.md): zero or one may be present.
- [`_selection-descriptors_any`](_selection-descriptors_any.md): one or more must be present.
- [`_selection-descriptors_all`](_selection-descriptors_all.md): all must be present.
- [`_selection-descriptors_one-none-of`](_selection-descriptors_one-none-of.md): an array of groups; from each group, zero or one may be present.

Multiple selection structures may coexist inside a single `_required` object; all must be satisfied simultaneously (they are ANDed together).

---

**`_code`**

```json
{
  "_aid" : [
    "selection-descriptors"
  ],
  "_gid" : "_selection-descriptors",
  "_lid" : "selection-descriptors",
  "_nid" : ""
}
```
