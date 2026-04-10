# `_required`

**`_title`**

Required properties

**`_definition`**

An array of `_selector` objects that define mandatory property presence rules for the enclosing schema. All selectors in the array must be satisfied simultaneously. Properties listed in `_computed` or given a value in `_default-value` satisfy their requirements automatically, since those are resolved first.

**`_description`**

`_required` is a constraint property within [`_open`](_open.md) or [`_closed`](_closed.md). Its value is an array of [`_selector`](_selector.md) objects. Each `_selector` object pairs a set of cardinality rules ([`_selectors`](_selectors.md)) with a pool of candidate properties ([`_selection`](_selection.md)). All `_selector` objects in the array must be satisfied simultaneously — the array is implicitly AND-connected.

Each `_selector` controls how many of its candidate properties must be present. The rules inside `_selectors` use [`_all`](_all.md) (mandatory group) or [`_any`](_any.md) (optional group) to define cardinality.

In a **closed schema**: `_required` defines the mandatory tier of the permitted whitelist. The union of `_required` candidates and [`_recommended`](_recommended.md) is the full set of allowed properties.

In an **open schema**: `_required` defines which properties must be present, without restricting the set of permitted properties.

**`_examples`**

**In a closed schema** — the [`_range`](_range.md) numeric range object. Exactly one of `_min-exclusive` or `_min-inclusive` must be present, and at least one of `_max-exclusive` or `_max-inclusive` must be present:

```json
{
	"_data": {
		"_object": {
			"_closed": {
				"_required": [
					{
						"_selectors": [
							{"_all": {"_min-items": 1, "_max-items": 1}},
							{"_any": {"_min-items": 1}}
						],
						"_selection": [
							["_min-exclusive", "_min-inclusive"],
							["_max-exclusive", "_max-inclusive"]
						]
					}
				]
			}
		}
	}
}
```

Valid: `{"_min-inclusive": 0, "_max-exclusive": 100}`, `{"_min-inclusive": 0, "_max-inclusive": 100, "_max-exclusive": 99.9}` (two max bounds are allowed since `_any: {_min-items: 1}` only requires at least one).
Invalid: `{"_min-exclusive": 0, "_min-inclusive": 0}` — both min bounds are present; exactly one is required.
Invalid: `{"_min-inclusive": 0}` — no max bound is present.

---

**In an open schema** — both `_selectors` and `_selection` must be present:

```json
{
	"_data": {
		"_object": {
			"_open": {
				"_required": [
					{
						"_selectors": [{"_all": {}}],
						"_selection": ["_selectors", "_selection"]
					}
				]
			}
		}
	}
}
```

Both `_selectors` and `_selection` must be present. Any other dictionary property is also permitted.

---

**`_code`**

```json
{
  "_aid" : [
    "required"
  ],
  "_gid" : "_required",
  "_lid" : "required",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_array" : {
    "_typedef" : "_selector"
  }
}
```
