# Ideas and snippets

This document contains ideas and snippets to guide the development of the metafata store. The documents is divided into sections, each representing a specific idea or snippet.

## Dynamic types

It has become evident that we are going to implement dynamic types. The decision has come more from the realisation that it is possible than from a real need for it.

### Advantages

We save a great number of terms: a term such as "closed" or "type" could be reused depending on which property hosts it, or on which value a property has in the same level of the current term.

Re-using terms makes the syntax closer to natural language.

It is possible to change the structure of a property depending on the value of another property: this can be very powerful.

### Disadvantages

Adds lexical ambiguity, so context becomes essential.

### Edge strategy

Let's consider the term `closed`:

```json
{
	"codes": {
		"_lid": "closed",
		"_gid": "closed",
		"_aid": ["closed"]
	},
	"infos": {
		"_title": {
			"ISO_639_3_eng": "Closed"
		}
	},
	"datas": {
		"scalar": {
			"type": "boolean"
		}
	},
	"domns": {}
}
```

By default this variable accepts boolean values.

In this case the default data section of the term is used as a verb. It indicates whether the subject is closed or not.

```json
{
	"door": {
		"closed": true
	}
}
```

However, in this other case, the term is used as a qualifier when it is owned by object. It indicates that the subject is a closed structure.

```json
{
	"object": {
		"closed": {
			"default-value": {
				"is-closed": true
			}
		}
	}
}
```

This edge indicates that when `closed` is hosted by the `object` property, it is an object structure that required the `default-value` property. The original data section of the term is ignored.

```json
{
	"_from": "terms/closed",
	"_predicate": "predicate_property-of",
	"_to": "terms/object",
	"path": [
		"terms/object"
	],
	"path_data": {
		"terms/object": {
			"object": {
				"required": [
					{
						"selectors": [
							{ "all": {} }
						],
						"selection": [
							"default-value"
						]
					}
				]
			}
		}
	}
}
```

So, you have one default data type and a set of virtual data types that can be triggered when the term is placed under a specific property.

Another way to have virtual types is to acrivate a data type or an object structure depending on the value of a property. Take these two examples:

```json
{
  "datas": {
    "scalar": {
      "type": "integer"
    }
  }
}
```

```json
{
  "datas": {
    "scalar": {
      "type": "float",
      "decimals": 2
    }
  }
}
```

Here we define the default `type` term:

```json
{
	"codes": {
		"_lid": "type",
		"_gid": "type",
		"_aid": ["type"]
	},
	"infos": {
		"_title": {
			"ISO_639_3_eng": "Type"
		}
	},
	"datas": {
		"scalar": {
			"type": "enum",
      "enum": "type_scalar"
		}
	},
	"domns": {}
}
```

In the following set of edges we define this behaviour.

```json
[
	{
		"_from": "terms/type",
		"_predicate": "predicate_property-of",
		"_to": "terms/scalar",
		"path": [
			"terms/scalar"
		],
		"path_data": {}
	},
	{
		"_from": "terms/float",
		"_predicate": "predicate_value-of",
		"_to": "terms/type",
		"path": [
			"terms/scalar"
		],
		"path_data": {
			"terms/scalar": {
				"object": {
					"closed": {
						"required": [
							{
								"selectors": [
									{ "all": {} }
								],
								"selection": [
									"type"
								]
							}
						],
						"recommended": [
							{
								"selectors": [
									{ "all": {} }
								],
								"selection": [
									"decimals"
								]
							}
						]
					}
				}
			}
		}
	}
]
```

What happens here:

1. We indicate that when `type` is placed in `scalar`, there will be adjustments.
2.  When `type` takes the `float` value (`float` is an enumeration element), `scalar` becomes a `closed` schema requiring `type` and recommending `decimals`.

What we do here is to replicate a `datas` section in the edge `path_data`.

#### Advantages

Using edges allows us to get in one shot all dynamic types, which fits well with caching.

Edges define very well the context, so in the event we want to use other types of relationships everything is already ready.

#### Disadvantages

Verbose.

Edges are large documents.

Need to do queries: getting the term document is not anymore enough.

## Terms to consider

`context` `consider` `require` `omit` `remove`