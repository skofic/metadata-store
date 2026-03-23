# `_selection-descriptors`

**`_title`**

Descriptor Selection

**`_definition`**

Namespace for the six descriptor selection rule terms used inside [`_required`](_required.md). Each sub-term expresses a different cardinality constraint over a set of descriptor [`_gid`](_gid.md)s.

**`_description`**

[`_selection-descriptors`](_selection-descriptors.md) is the namespace for the family of cardinality constraint terms used in the [`_required`](_required.md) object. Each sub-term takes a set (or array of sets) of descriptor [`_gid`](_gid.md)s and imposes a cardinality rule on how many of them must be present in a valid object.

The six variants are:

- [`_selection-descriptors_one`](_selection-descriptors_one.md): exactly one must be present.
- [`_selection-descriptors_one-none`](_selection-descriptors_one-none.md): zero or one may be present.
- [`_selection-descriptors_any`](_selection-descriptors_any.md): one or more must be present.
- [`_selection-descriptors_all`](_selection-descriptors_all.md): all must be present.
- [`_selection-descriptors_one-of-any`](_selection-descriptors_one-of-any.md): an array of groups; from each group exactly one descriptor is the valid form, and at least one group must contribute.
- [`_selection-descriptors_one-of-all`](_selection-descriptors_one-of-all.md): an array of groups; from each group exactly one descriptor is the valid form, and all groups must contribute.

Multiple selection structures may coexist inside a single [`_required`](_required.md) object; all must be satisfied simultaneously (they are ANDed together).

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
