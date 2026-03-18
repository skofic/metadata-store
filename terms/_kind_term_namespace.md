# `_kind_term_namespace`

**`_title`**

Namespace

**`_definition`**

An enumeration element indicating that the term acts as a namespace — other terms reference its `_gid` in their `_nid` field to declare themselves as members of that namespace. A namespace term organises related terms under a common identifier prefix.

**`_description`**

`_kind_term_namespace` is a role value used in the [`_kind_term`](_kind_term.md) property of the [`_domn`](_domn.md) section. It flags the term as a namespace — a term whose `_gid` is used as the `_nid` of other terms, forming a hierarchical naming structure.

Namespaces are not a distinct term type: any term can act as a namespace simply by having other terms reference its `_gid` in their `_nid`. The `_kind_term_namespace` role makes this function explicitly queryable without traversing the graph.

Namespaces may be nested: a namespace term may itself belong to a parent namespace, forming chains such as `ISO` → `ISO_639` → `ISO_639_3`. The top of the chain is either a term with no `_nid` (top-level namespace) or a term with `_nid: ""` (a core dictionary building block).

```json
{
	"_domn": {
		"_kind_term": ["_kind_term_namespace"]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "namespace"
  ],
  "_gid" : "_kind_term_namespace",
  "_lid" : "namespace",
  "_nid" : "_kind_term"
}
```
