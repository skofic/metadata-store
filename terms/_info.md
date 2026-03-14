# `_info`

**`_title`**

Documentation Section

**`_definition`**

The section of a term that provides human-readable information about what the term represents: its title, definition, full description, usage examples, and supplementary notes and references.

**`_description`**

The documentation section is mandatory in most [terms](_term.md). All its properties are multilingual: each property's value is a *key–value* object where the *key* is the [global identifier](_gid.md) of a language term (e.g. `ISO_639_3_eng` for English) and the *value* is a plain or formatted string.

The [title](_title.md) and [definition](_definition.md) properties are always required. The full [description](_description.md) is strongly recommended for all but the simplest terms. Additional properties — [examples](_examples.md), [notes](_notes.md), [URLs](_url.md), [citation](_citation.md), [provider](_provider.md), and [methods](_methods.md) — are optional and should be included whenever they add value.

Alias terms are the only exception to the documentation section requirement: an alias [term](_term.md) carries only an [identification section](_code.md), delegating all documentation to the canonical term it points to.

---

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_info"
    ],
    "_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_recommended" : [
    "_description",
    "_examples",
    "_notes",
    "_url",
    "_citation",
    "_provider",
    "_methods"
  ],
  "_required" : {
    "_selection-descriptors_all" : [
      "_title",
      "_definition"
    ]
  }
}
```
