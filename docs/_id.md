# `_id`

**`_title`**

Document handle

**`_definition`**

The unique identifier of a document across all collections in the database. Assigned automatically by the database at insertion time and cannot be modified.

**`_description`**

The document handle is the database-wide unique identifier assigned to every record by ArangoDB at insertion time. It has the form `<collection name>/<_key>` — for example, `terms/_term` or `edges/a3f9c2`. It is system-managed: users cannot set or modify it.

The handle is used as the value of [source](_from.md) (`_from`) and [destination](_to.md) (`_to`) in [edge documents](_edge.md), where it identifies the nodes at each end of a relationship.

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "id",
	"_gid": "_id",
	"_aid": ["id"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_handle"
	}
}
```

**`_domn`**

```json
{}
```
