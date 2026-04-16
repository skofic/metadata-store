# Regular expression
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_regexp</code></p>

> A regular expression pattern. In the identification section, when placed on an enumeration root or section node, it constrains the local identifier format of enumeration elements whose closest graph ancestor carrying this property is the current term. In the data section it constrains the value of string scalars that accept it as a companion property.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `regexp` |
| [Global identifier](_gid.md) | `_regexp` |
| [Official identifiers](_aid.md) | `regexp` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "regexp"
  ],
  "_gid" : "_regexp",
  "_lid" : "regexp",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Regular expression

**[Definition](_definition.md):** A regular expression pattern. In the identification section, when placed on an enumeration root or section node, it constrains the local identifier format of enumeration elements whose closest graph ancestor carrying this property is the current term. In the data section it constrains the value of string scalars that accept it as a companion property.

**[Description](_description.md)**

This property stores a regular expression and is used in two distinct contexts:

**In the [identification section](_code.md)**: when present on a term that acts as an enumeration root or as a section node within an enumeration graph, `_regexp` constrains the [`_lid`](_lid.md) of its direct enumeration element children — that is, any term connected to it by a [`_predicate_enum-of`](_predicate_enum-of.md) edge. The constraint is resolved by the **closest-ancestor rule**: walking up the graph from a candidate element, the first ancestor (root or section) that carries `_regexp` provides the applicable pattern. If no ancestor carries `_regexp`, no pattern constraint applies.

Note that this constraint is graph-positional, not namespace-based: an element's [`_nid`](_nid.md) does not need to match the constraining term's [`_gid`](_gid.md). What matters is the element's position in the enumeration graph, not which namespace its identifier belongs to.

**In the [data section](_data.md)**: when present inside a [`_scalar`](_scalar.md) object, `_regexp` constrains the format of the string value the descriptor accepts. It is a companion property of [`_string`](_string.md) (generic UTF-8 strings) and [`_string_HEX`](_string_HEX.md) (hexadecimal strings). Format-specific string types such as [`_string_date`](_string_date.md) or [`_string_URI`](_string_URI.md) are self-defining and do not accept a `_regexp` companion.

The value stored in this property is itself a regular expression string.

**[Examples](_examples.md)**

An enumeration root enforcing that all element [`_lid`](_lid.md) values are exactly three uppercase letters (ISO 3166-3 alpha-3 codes):

```json
{
	"_code": {
		"_nid": "ISO",
		"_lid": "3166_3",
		"_gid": "ISO_3166_3",
		"_aid": ["3166_3"],
		"_regexp": "^[A-Z]{3}$"
	}
}
```

A section node within the [`ISO_3166`](ISO_3166.md) graph that overrides the root pattern for its own children — here two-letter alpha-2 codes only:

```json
{
	"_code": {
		"_nid": "ISO_3166",
		"_lid": "alpha-2",
		"_gid": "ISO_3166_alpha-2",
		"_aid": ["alpha-2"],
		"_regexp": "^[A-Z]{2}$"
	}
}
```

Elements connected to `ISO_3166_alpha-2` via [`_predicate_enum-of`](_predicate_enum-of.md) must have a two-letter `_lid`; the root's three-letter pattern does not apply because `ISO_3166_alpha-2` is the closer ancestor.

A descriptor whose value must be a valid hex colour code (data section use):

```json
{
	"_data": {
		"_scalar": {
			"_string": {
				"_regexp": "^#[0-9A-Fa-f]{6}$"
			}
		}
	}
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
    "ISO_639_3_eng" : "Regular expression"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Regular expression string](_string_regexp.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_string_regexp" : {

    }
  }
}
```

</details>
