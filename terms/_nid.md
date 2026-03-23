# `_nid`

**`_title`**

Namespace identifier

**`_definition`**

The global identifier of the term that defines the namespace of the current term. When present and non-empty, it is prepended to the local identifier to form the global identifier. When absent, the term defines a top-level namespace with no parent.

**`_description`**

*Namespaces* are used to *group* and *organise* [terms](_term.md) under a common *category* or *classification*. The value of this property is the [global identifier](_gid.md) of the term that represents the *namespace* of the current term.

Namespaces also serve to *disambiguate* [local identifiers](_lid.md): a local identifier must be unique only within its namespace, not across the entire dictionary.

Three distinct cases exist depending on the value of this property:

- **Non-empty string**: the term belongs to the named namespace. The namespace term must itself exist in the dictionary.
- **Empty string** (`""`): the term is a *core dictionary building block*. The resulting [global identifier](_gid.md) begins with an underscore, marking it as a structural term.
- **Absent**: the term defines a *top-level namespace* with no parent.

Any term's [global identifier](_gid.md) may serve as a namespace for other terms, allowing namespaces to form chains from general to specific
(for example `ISO` → `ISO_3166` → `ISO_3166_1`).

**`_examples`**

```json
{
	"_nid": "ISO_3166_1",
	"_lid": "ITA",
	"_gid": "ISO_3166_1_ITA",
	"_aid": ["ITA", "IT"],
	"_name": "Italia",
	"_regexp": "[A-Z]{3,3}",
	"_emoji": "🇮🇹"
}
```

This term, with [global identifier](_gid.md) `ISO_3166_1_ITA`, represents the ISO country code for [Italy](`ISO_3166_1_ITA`.md). Its [local identifier](_lid.md) is `ITA`, its namespace is `ISO_3166_1`, and its [`_regexp`](_regexp.md) validates that all local identifiers in this namespace consist of exactly three uppercase letters. The namespace `ISO_3166_1` is itself composed of chained namespaces:

- `ISO`: The *[International Standards Organisation](ISO.md)* root namespace (no parent namespace).
- `ISO_3166`: The namespace for *[codes for the representation of names of countries and their subdivisions](ISO_3166.md)*, with `ISO` as its namespace.
- `ISO_3166_1`: The namespace for *[Part 1: Country codes](ISO_3166_1.md)*, with `ISO_3166` as its namespace.



```json
{
	"_lid": "ISO",
	"_gid": "ISO",
	"_aid": ["ISO"]
}
```

This term has no namespace — it is itself the top-level `ISO` namespace, with no parent.

---

**`_code`**

```json
{
  "_aid" : [
    "nid"
  ],
  "_gid" : "_nid",
  "_lid" : "nid",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_type_scalar" : "_type_key_term"
  }
}
```
