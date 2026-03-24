# `_to`

**`_title`**

Relationship target

**`_definition`**

Reference to the node that represents the destination in a directed graph edge.

**`_description`**

The value is the [document handle](_id.md) of the destination node of a directed graph relationship. In [ArangoDB](https://www.arangodb.com), `_to` is a required field on all edge documents.

---

**`_code`**

```json
{
  "_aid" : [
    "to"
  ],
  "_gid" : "_to",
  "_lid" : "to",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_type_scalar" : "_type_handle"
  }
}
```
