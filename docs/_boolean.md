# Boolean
<p><a href="_term_role_type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_boolean</code></p>

> The scalar data type for native boolean values. The stored value is `true` or `false`; no companion properties are applicable.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `boolean` |
| [Global identifier](_gid.md) | `_boolean` |
| [Official identifiers](_aid.md) | `boolean` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "boolean"
  ],
  "_gid" : "_boolean",
  "_lid" : "boolean",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Boolean

**[Definition](_definition.md):** The scalar data type for native boolean values. The stored value is `true` or `false`; no companion properties are applicable.

**[Description](_description.md)**

`_boolean` represents a native boolean. No companion properties — range, unit, or regexp — apply to boolean values. Comparable; may appear in sets but not as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_boolean": {}
	}
}
```

Stored values: `true`, `false`.

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
  "_examples" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Boolean"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {

    }
  }
}
```

</details>
