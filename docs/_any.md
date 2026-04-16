# Optional selection
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_any</code></p>

> A cardinality constraint object within `_selectors` that defines an optional rule for its candidate group. With no item limits (`_any: {}`), any number of candidates — including none — may be present. `_min-items` and `_max-items` impose a count range when selection is not entirely open-ended.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `any` |
| [Global identifier](_gid.md) | `_any` |
| [Official identifiers](_aid.md) | `any` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "any"
  ],
  "_gid" : "_any",
  "_lid" : "any",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Optional selection

**[Definition](_definition.md):** A cardinality constraint object within `_selectors` that defines an optional rule for its candidate group. With no item limits (`_any: {}`), any number of candidates — including none — may be present. `_min-items` and `_max-items` impose a count range when selection is not entirely open-ended.

**[Description](_description.md)**

`_any` is one of two selector types within [`_selectors`](_selectors.md). It marks its candidate group as optional — no candidates are required unless [`_min-items`](_min-items.md) is set. Its value is an object that may contain `_min-items`, [`_max-items`](_max-items.md), or both, or it may be empty.

- **`_any: {}`** — no constraint. Any number of candidates — including none — may be present.
- **`_any: {_max-items: N}`** — at most *N* candidates may be present; zero is still valid.
- **`_any: {_min-items: M, _max-items: N}`** — at least *M* and at most *N* candidates must be present.

The "optional" quality of `_any` means having none of the candidates is valid by default. [`_all`](_all.md) requires all candidates when no item limits are given; `_any` requires none.

**[Examples](_examples.md)**

**`_any: {}`** — candidates are fully optional; any number may appear:

```json
{
	"_selectors": [{"_any": {}}],
	"_selection": ["_unit", "_unit_name", "_unit_symbol"]
}
```

Zero, one, two, or all three of the unit properties may be present. No count constraint is enforced.

---

**`_any: {_max-items: 1}`** — at most one candidate may be present; none is also valid:

```json
{
	"_selectors": [{"_any": {"_max-items": 1}}],
	"_selection": ["_open", "_closed"]
}
```

At most one schema form may be present. Zero is valid; both [`_open`](_open.md) and [`_closed`](_closed.md) simultaneously is invalid.

---

**`_any: {_min-items: 2, _max-items: 5}`** — at least two and at most five candidates must be present:

```json
{
	"_selectors": [{"_any": {"_min-items": 2, "_max-items": 5}}],
	"_selection": ["propA", "propB", "propC", "propD", "propE", "propF"]
}
```

At least two and at most five of the six candidates must be present. Having one or zero, or having all six, is invalid.

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
    "ISO_639_3_eng" : "Optional selection"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Type definition](_typedef.md): [Elements count range](_elements.md)

<details>
<summary>JSON</summary>

```json
{
  "_typedef" : "_elements"
}
```

</details>
