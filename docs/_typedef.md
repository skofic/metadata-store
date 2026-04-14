# Type definition
<p style="color: #888; margin-top: -0.5em;"><code>_typedef</code></p>

> A reference to an existing typedef term by its global identifier. Delegates the shape definition to the referenced typedef term, making it mutually exclusive with all inline shape properties.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `typedef` |
| [Global identifier](_gid.md) | `_typedef` |
| [Official identifiers](_aid.md) | `typedef` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "typedef",
  "_gid": "_typedef",
  "_aid": [
    "typedef"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Type definition

**[Definition](_definition.md):** A reference to an existing typedef term by its global identifier. Delegates the shape definition to the referenced typedef term, making it mutually exclusive with all inline shape properties.

**[Description](_description.md)**

`_typedef` allows a descriptor to inherit its data shape from a named typedef term rather than defining it inline. The value is the [`_gid`](_gid.md) of the typedef term to delegate to. The referenced term must carry `_term_role_typedef` in its `_domn._term_role` and must define its own shape inline — chaining (a typedef referencing another typedef) is not permitted.

When the validator encounters `_typedef`, it performs a single lookup: finds the typedef term, reads its `_data` section, and applies that shape as if it were written inline. This mechanism is used to share complex, reusable shapes across many descriptors without duplication.

The three built-in typedef terms are [`_type_scalar`](_type_scalar.md), [`_type_comparable`](_type_comparable.md), and [`_type_key`](_type_key.md), which encode the full allowed-type lists for scalar, set-element, and dictionary-key contexts respectively. `_typedef` is mutually exclusive with all seven inline shape properties.

**[Examples](_examples.md)**

Delegating to the built-in scalar type list:

```json
{
	"_data": {
		"_typedef": "_type_scalar"
	}
}
```

This is how the [`_scalar`](_scalar.md) shape property itself is defined: it delegates to `_type_scalar`, which encodes the complete list of allowed scalar types.

Delegating to the set-compatible type list:

```json
{
	"_data": {
		"_typedef": "_type_comparable"
	}
}
```

This is how [`_nested`](_nested.md) is defined: it reuses `_type_comparable` to enforce comparable leaf types.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Type definition"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Descriptor term key](_term_key_descriptor.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar": {
    "_term_key_descriptor": {}
  }
}
```

</details>
