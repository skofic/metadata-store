# `_id`

**`_title`**

Document handle

**`_definition`**

The unique identifier of a document across all collections in the database. It is assigned automatically by the database at insertion time and cannot be modified.

**`_description`**

The *document handle* is the record unique identifier in [ArangoDB](https://www.arangodb.com), the default database for this data dictionary. This value is automatically created when a record is inserted, it cannot be modified or set by users and it has the following format: `<collection name>/<_key value>`.
