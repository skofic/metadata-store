# `_predicate_field-of`

**`_title`**

Field of

**`_definition`**

The source descriptor is a field of the destination term. Used to define form layouts and data table column sets, independently of schema membership.

**`_description`**

`_predicate_field-of` links a descriptor to a term that represents a form, report, or data table layout. An edge with this predicate states that [`_from`](_from.md) (a descriptor) should appear as a field or column when displaying or entering data for [`_to`](_to.md).

This predicate is distinct from [`_predicate_property-of`](_predicate_property-of.md): [`_predicate_property-of`](_predicate_property-of.md) is about schema validity — which properties are allowed in an object. `_predicate_field-of` is about presentation — which fields appear in a specific form or table, in what order, and with what grouping.

The same descriptor may be a field of multiple layouts and a property of multiple schemas simultaneously, using separate edges for each relationship.

---

**`_code`**

```json
{
  "_aid" : [
    "field-of"
  ],
  "_gid" : "_predicate_field-of",
  "_lid" : "field-of",
  "_nid" : "_predicate"
}
```
