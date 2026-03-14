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
(for example `iso` → `iso_3166` → `iso_3166_1`).

**`_examples`**


```json
{
	"_nid": "iso_3166_1",
	"_lid": "ITA",
	"_gid": "iso_3166_1_ITA",
	"_aid": ["ITA", "IT"],
	"_name": "Italia",
	"_regexp": "[A-Z]{3,3}"
}
```

This term, with [global identifier](_gid.md) `iso_3166_1_ITA`, represents the ISO country code for [Italy](`iso_3166_1_ITA`.md). Its [local identifier](_lid.md) is `ITA`, its namespace is `iso_3166_1`, and its `_regexp` validates that all local identifiers in this namespace consist of exactly three uppercase letters. The namespace `iso_3166_1` is itself composed of chained namespaces:

- `iso`: The *[International Standards Organisation](iso.md)* root namespace (no parent namespace).
- `iso_3166`: The namespace for *[codes for the representation of names of countries and their subdivisions](iso_3166.md)*, with `iso` as its namespace.
- `iso_3166_1`: The namespace for *[Part 1: Country codes](iso_3166_1.md)*, with `iso_3166` as its namespace.



```json
{
	"_lid": "iso",
	"_gid": "iso",
	"_aid": ["iso"]
}
```

This term has no namespace — it is itself the top-level `iso` namespace, with no parent.

---

**`_data`**

```json
{
  "_scalar" : {
    "_kind_key" : [
      "_kind_key_term"
    ],
    "_type" : "_type_key"
  }
}
```
