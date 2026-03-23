# `_predicate_property-of`

**`_title`**

Property of

**`_definition`**

The source node is a property descriptor of the destination object definition.

**`_description`**

This [predicate](_predicate.md) links a *property descriptor* (source) to the *object definition* it belongs to (destination). It is the basis of the graph-based schema system: by connecting descriptors to object roots with this predicate, and then associating value-conditional rules in [`_path_data`](_path_data.md) via [`_predicate_value-of`](_predicate_value-of.md) edges, the system encodes constraints that depend on which value a property holds within a specific structural context.

**`_examples`**

```json
{
	"_from": "terms/_type_scalar",
	"_predicate": "_predicate_property-of",
	"_to": "terms/_scalar",
	"_path": ["terms/_scalar"],
	"_path_data": {}
}
```

This [edge](_edge.md) declares [`_type_scalar`](_type_scalar.md) as a property of the [`_scalar`](_scalar.md) object definition. The [`_scalar`](_scalar.md) root is the graph context: any [`_predicate_value-of`](_predicate_value-of.md) edges whose [`_path`](_path.md) contains `terms/_scalar` can then attach conditional rules that activate when [`_type_scalar`](_type_scalar.md) holds a specific value.

---

**`_code`**

```json
{
  "_aid" : [
    "property-of"
  ],
  "_gid" : "_predicate_property-of",
  "_lid" : "property-of",
  "_nid" : "_predicate"
}
```
