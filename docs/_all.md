# Mandatory selection
<p style="color: #888; margin-top: -0.5em;"><code>_all</code></p>

> A cardinality constraint object within `_selectors` that defines a mandatory rule for its candidate group. With no item limits (`_all: {}`), all candidates must be present. `_min-items` and `_max-items` override the default all-required behaviour and specify an exact count range instead.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `all` |
| [Global identifier](_gid.md) | `_all` |
| [Official identifiers](_aid.md) | `all` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "all"
  ],
  "_gid" : "_all",
  "_lid" : "all",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Mandatory selection

**[Definition](_definition.md):** A cardinality constraint object within `_selectors` that defines a mandatory rule for its candidate group. With no item limits (`_all: {}`), all candidates must be present. `_min-items` and `_max-items` override the default all-required behaviour and specify an exact count range instead.

**[Description](_description.md)**

`_all` is one of two selector types within [`_selectors`](_selectors.md). It marks its candidate group as mandatory — the constraint is always evaluated. Its value is an object that may contain [`_min-items`](_min-items.md), [`_max-items`](_max-items.md), or both, or it may be empty.

- **`_all: {}`** — no item limit. All candidates in the group must be present.
- **`_all: {_max-items: N}`** — at most *N* candidates may be present. More than *N* is invalid.
- **`_all: {_min-items: M, _max-items: N}`** — at least *M* and at most *N* candidates must be present. With *M* = *N* = 1, exactly one candidate is required (mutually exclusive selection).

The "mandatory" quality of `_all` means the constraint itself is always enforced — unlike [`_any`](_any.md), which only enforces a minimum when `_min-items` is set.

**[Examples](_examples.md)**

**`_all: {}`** — all candidates must be present:

```json
{
	"_selectors": [{"_all": {}}],
	"_selection": ["_selectors", "_selection"]
}
```

Both `_selectors` and `_selection` must be present. An object missing either property is invalid.

---

**`_all: {_max-items: 1}`** — at most one candidate may be present:

```json
{
	"_selectors": [{"_all": {"_max-items": 1}}],
	"_selection": ["_open", "_closed"]
}
```

`_open` and `_closed` cannot both be present. Zero or one is valid; both together is invalid.

---

**`_all: {_min-items: 2, _max-items: 5}`** — between two and five candidates must be present:

```json
{
	"_selectors": [{"_all": {"_min-items": 2, "_max-items": 5}}],
	"_selection": ["propA", "propB", "propC", "propD", "propE", "propF"]
}
```

At least two and at most five of the six candidate properties must be present. Having one or zero, or having all six, is invalid.

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
    "ISO_639_3_eng" : "Mandatory selection"
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
