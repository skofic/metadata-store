# Nested array
<p style="color: #888; margin-top: -0.5em;"><code>_nested</code></p>

> The data shape property for a recursively nested array whose leaf elements are of a comparable type. The leaf element type is expressed as a property key inside the object, following the same type-as-key convention as `_scalar` and `_set`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `nested` |
| [Global identifier](_gid.md) | `_nested` |
| [Official identifiers](_aid.md) | `nested` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Nested array

**[Definition](_definition.md):** The data shape property for a recursively nested array whose leaf elements are of a comparable type. The leaf element type is expressed as a property key inside the object, following the same type-as-key convention as `_scalar` and `_set`.

**[Description](_description.md)**

A *nested array* is an array of arrays, recursing to an arbitrary depth, whose leaf elements are all of the same comparable type. It differs from a recursive [`_array`](_array.md) in that the nesting structure is uniform and the leaf type is declared once — inside the `_nested` object — rather than being specified at each level of recursion.

`_nested` uses `_typedef: "_type_comparable"` internally, meaning the leaf element type follows set semantics: only comparable types are accepted. Non-comparable types — [`_text`](_text.md), [`_text_HTML`](_text_HTML.md), [`_text_Markdown`](_text_Markdown.md), and [`_text_SVG`](_text_SVG.md) — may not appear as leaf elements. The leaf type is expressed as a property key inside `_nested`, exactly as in [`_scalar`](_scalar.md) and [`_set`](_set.md).

The optional [`_elements`](_elements.md) property constrains the number of elements at each level of the array.

**[Examples](_examples.md)**

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
    "ISO_639_3_eng" : "Nested array"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Type definition](_typedef.md): [Comparable data type](_type_comparable.md)

<details>
<summary>JSON</summary>

```json
{
  "_typedef" : "_type_comparable"
}
```

</details>
