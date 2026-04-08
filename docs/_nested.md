# `_nested`

**`_title`**

Nested array

**`_definition`**

The data shape property for a recursively nested array whose leaf elements are of a comparable type. The leaf element type is expressed as a property key inside the object, following the same type-as-key convention as `_scalar` and `_set`.

**`_description`**

A *nested array* is an array of arrays, recursing to an arbitrary depth, whose leaf elements are all of the same comparable type. It differs from a recursive [`_array`](_array.md) in that the nesting structure is uniform and the leaf type is declared once — inside the `_nested` object — rather than being specified at each level of recursion.

`_nested` uses `_typedef: "_type_set"` internally, meaning the leaf element type follows set semantics: only comparable types are accepted. Non-comparable types — [`_text`](_text.md), [`_text_HTML`](_text_HTML.md), [`_text_Markdown`](_text_Markdown.md), and [`_text_SVG`](_text_SVG.md) — may not appear as leaf elements. The leaf type is expressed as a property key inside `_nested`, exactly as in [`_scalar`](_scalar.md) and [`_set`](_set.md).

The optional [`_elements`](_elements.md) property constrains the number of elements at each level of the array.

**`_examples`**

A nested array of generic strings:

```json
{
	"_data": {
		"_nested": {
			"_string": {}
		}
	}
}
```

At validation time, a valid value for this descriptor would be an arbitrarily deep nesting of string arrays — for example `[["a", "b"], ["c"]]` or `[[["x"]]]`.

---

**`_code`**

```json
{
  "_aid" : [
    "nested"
  ],
  "_gid" : "_nested",
  "_lid" : "nested",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_typedef" : "_type_set"
}
```
