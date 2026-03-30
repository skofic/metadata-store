# `_code`

**`_title`**

Identification Section

**`_definition`**

The section of a term that holds its identifiers: the local identifier within a namespace, the optional namespace reference, and the computed global identifier that uniquely identifies the term across the entire dictionary.

**`_description`**

The identification section is mandatory in every [term](_term.md). It provides the identifiers that locate the term within the dictionary's namespace hierarchy.

The [local identifier](_lid.md) (`_lid`) is the only property the curator must always supply. The [namespace](_nid.md) (`_nid`) optionally scopes the term under a parent term, enabling hierarchical organisation from general to specific — for example `ISO` → `ISO_3166` → `ISO_3166_3`. The [global identifier](_gid.md) ([`_gid`](_gid.md)) is computed by concatenating `_nid` and `_lid` with an underscore (`_`) separator and is unique across the entire dictionary; it is copied to the ArangoDB document key before the term is saved.

Terms with an empty-string namespace (`_nid: ""`) are core dictionary building blocks, recognisable by the leading underscore in their `_gid` — for example `_code`, `_info`, `_data`. Terms with no `_nid` property define top-level namespaces — for example `ISO`.

The [all-identifiers](_aid.md) set (`_aid`) is computed automatically from `_lid` if not supplied and grows as aliases are added. The secondary properties [`_pid`](_pid.md), [`_name`](_name.md), [`_symbol`](_symbol.md), [`_regexp`](_regexp.md), and [`_emoji`](_emoji.md) are optional and serve matching and presentational purposes.

**`_examples`**

A country term with several secondary properties:

```json
{
	"_code": {
		"_nid": "ISO_3166_3",
		"_lid": "ITA",
		"_gid": "ISO_3166_3_ITA",
		"_aid": ["ITA", "IT", "I"],
		"_name": "Italia",
		"_emoji": "🇮🇹"
	}
}
```

A core dictionary building block with an empty-string namespace:

```json
{
	"_code": {
		"_nid": "",
		"_lid": "code",
		"_gid": "_code",
		"_aid": ["code"]
	}
}
```

A top-level namespace term with no parent:

```json
{
	"_code": {
		"_lid": "ISO",
		"_gid": "ISO",
		"_aid": ["ISO"]
	}
}
```

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "code",
	"_gid": "_code",
	"_aid": ["code"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_object",
		"_object_types": ["_code"]
	}
}
```

**`_rule`**

```json
{
	"_closed": true,
	"_required": [
		{
			"_selection_rules": [
				{"_selection_type": "_type_selection_mandatory"}
			],
			"_selection_descriptors": ["_lid", "_gid", "_aid"]
		}
	],
	"_recommended": ["_nid", "_pid", "_name", "_symbol", "_regexp", "_emoji"],
	"_computed": ["_gid", "_aid"],
	"_immutable": ["_lid", "_nid", "_gid"]
}
```

**`_domn`**

```json
{}
```
