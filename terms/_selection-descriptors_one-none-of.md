# `_selection-descriptors_one-none-of`

**`_title`**

One of any in list

**`_definition`**

The selection should include one or no element from each of the list of sets

**`_description`**

This descriptor contains a *list* of *sets*: the rule determines that *one element*, or *no elements* should be selected from *each* of the *child sets*.

The *descriptors* in the *child sets* are represented by their [global identifiers](_gid.md).

**`_examples`**

```json
{
	"_selection-descriptors_one-none-of": [
		["minimum_inclusive", "minimum_exclusive"],
		["maximum_inclusive", "maximum_exclusive"]
	]
}
```

This example implements a selection for a range:

- In the *child sets* selection you choose *one* or *none* from each, that is: `minimum_inclusive` or `minimum_exclusive` or *none* from the *first* set and `maximum_inclusive` or `maximum_exclusive` or *none* fron the `second` set.
- The final selection of elements must include *at least one choice*.

So the possible results could be:

- `["minimum_inclusive"]`
- `["minimum_exclusive"]`
- `["maximum_inclusive"]`
- `["maximum_exclusive"]`
- `["minimum_inclusive", "maximum_inclusive"]`
- `["minimum_inclusive", "maximum_exclusive"]`
- `["minimum_exclusive", "maximum_inclusive"]`
- `["minimum_exclusive", "maximum_exclusive"]`

---

**`_code`**

```json
{
  "_aid" : [
    "one-none-of"
  ],
  "_gid" : "_selection-descriptors_one-none-of",
  "_lid" : "one-none-of",
  "_nid" : "_selection-descriptors"
}
```

**`_data`**

```json
{
  "_array" : {
    "_set" : {
      "_set_scalar" : {
        "_kind" : [
          "_any-descriptor"
        ],
        "_set_type" : "_type_string_key"
      }
    }
  },
  "_class" : "_class_reference"
}
```
