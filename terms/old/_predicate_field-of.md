# `_predicate_field-of`

**`_title`**

Field of

**`_definition`**

The source node is a field or column of the destination form or table definition.

**`_description`**

This [predicate](_predicate.md) is used to build *form* and *table* graphs for user interface purposes. It is more general than [property-of](_predicate_property-of.md): it expresses simple membership in a form or table layout without implying any schema enforcement or value-conditional logic. The destination node is the form or table root; the source node is a field or column within it.

**`_examples`**

```json
{
	"_from": "terms/chr_name",
	"_predicate": "_predicate_field-of",
	"_to": "terms/user_form",
	"_path": ["terms/user_form"],
	"_path_data": {}
}
```

This [edge](_edge.md) declares `chr_name` as a field of the `user_form` display layout.

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
