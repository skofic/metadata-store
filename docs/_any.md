# `_any`

**`_title`**

Optional selection

**`_definition`**

A cardinality constraint object within `_selectors` that defines an optional rule for its candidate group. With no item limits (`_any: {}`), any number of candidates — including none — may be present. `_min-items` and `_max-items` impose a count range when selection is not entirely open-ended.

**`_description`**

`_any` is one of two selector types within [`_selectors`](_selectors.md). It marks its candidate group as optional — no candidates are required unless `_min-items` is set. Its value is an object that may contain [`_min-items`](_min-items.md), [`_max-items`](_max-items.md), or both, or it may be empty.

- **`_any: {}`** — no constraint. Any number of candidates — including none — may be present.
- **`_any: {_max-items: N}`** — at most *N* candidates may be present; zero is still valid.
- **`_any: {_min-items: M, _max-items: N}`** — at least *M* and at most *N* candidates must be present.

The "optional" quality of `_any` means having none of the candidates is valid by default. [`_all`](_all.md) requires all candidates when no item limits are given; `_any` requires none.

**`_examples`**

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

At most one schema form may be present. Zero is valid; both `_open` and `_closed` simultaneously is invalid.

---

**`_any: {_min-items: 2, _max-items: 5}`** — at least two and at most five candidates must be present:

```json
{
	"_selectors": [{"_any": {"_min-items": 2, "_max-items": 5}}],
	"_selection": ["propA", "propB", "propC", "propD", "propE", "propF"]
}
```

At least two and at most five of the six candidates must be present. Having one or zero, or having all six, is invalid.

---

**`_code`**

```json
{
  "_gid": "_any",
  "_lid": "any",
  "_nid": "",
  "_aid": ["any"]
}
```

**`_data`**

```json
{
  "_typedef": "_elements"
}
```
