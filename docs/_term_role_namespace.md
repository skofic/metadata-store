# Namespace
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_term_role_namespace</code></p>

> A term role indicating that the term's `_gid` is used as the `_nid` value of at least one other term, making it a naming scope for those terms. Set automatically by the loader.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Term role](_term_role.md) |
| [Local identifier](_lid.md) | `namespace` |
| [Global identifier](_gid.md) | `_term_role_namespace` |
| [Official identifiers](_aid.md) | `namespace` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "namespace"
  ],
  "_gid" : "_term_role_namespace",
  "_lid" : "namespace",
  "_nid" : "_term_role"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Namespace

**[Definition](_definition.md):** A term role indicating that the term's `_gid` is used as the `_nid` value of at least one other term, making it a naming scope for those terms. Set automatically by the loader.

**[Description](_description.md)**

Terms tagged with `_term_role_namespace` act as naming containers in the dictionary's identifier hierarchy. When the loader encounters a term whose [`_nid`](_nid.md) field references a `_gid`, it assigns this role to the referenced term, marking it as the namespace parent of those subordinate terms.

A namespace is a naming scope — it governs the [`_gid`](_gid.md) computation rule (`_nid + "_" + _lid`) and groups related terms under a shared prefix. It does not constrain valid values the way an enumeration root does. A term may carry both `_term_role_namespace` and [`_term_role_enum-root`](_term_role_enum-root.md) simultaneously: for example, `ISO_3166_1` is both the root of the ISO 3166-1 country code vocabulary and the namespace under which individual country terms (`ISO_3166_1_ITA`, `ISO_3166_1_FRA`, …) are identified.

This role is assigned automatically. No user action is required. It can be queried to discover all namespace terms in the dictionary, to build namespace browsers, or to validate that every `_nid` value references a term that exists and carries this role.

<details>
<summary>JSON</summary>

```json
{
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Namespace"
  }
}
```

</details>
