# Immutable properties
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_immutable</code></p>

> A set of descriptor global identifiers listing properties that cannot be modified once their initial value has been set, whether by the user or by the system. Any subsequent write that changes an immutable property's value is rejected.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `immutable` |
| [Global identifier](_gid.md) | `_immutable` |
| [Official identifiers](_aid.md) | `immutable` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "immutable"
  ],
  "_gid" : "_immutable",
  "_lid" : "immutable",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Immutable properties

**[Definition](_definition.md):** A set of descriptor global identifiers listing properties that cannot be modified once their initial value has been set, whether by the user or by the system. Any subsequent write that changes an immutable property's value is rejected.

**[Description](_description.md)**

`_immutable` is a constraint property within [`_open`](_open.md) or [`_closed`](_closed.md). Once a value is written to an immutable property — by the user or by the system via [`_computed`](_computed.md) — it is fixed for the lifetime of the object. Updates that would change the value are rejected.

Immutability is used when changing a property's value would have cascading consequences that the system cannot automatically resolve. The canonical case in this dictionary is [`_lid`](_lid.md): because [`_gid`](_gid.md) is computed from `_nid` and `_lid`, and [`_key`](_key.md) is set to `_gid`, changing `_lid` after insertion would invalidate `_gid` and therefore `_key`. Since `_key` is the primary ArangoDB document identifier, a change would invalidate every edge and cross-reference that uses the old identifier.

A property may appear in both `_computed` and `_immutable`: the system computes the value on first write and that value is then permanently fixed.

**[Examples](_examples.md)**

The [`_code`](_code.md) section marks `_lid` and `_gid` as immutable:

```json
{
	"_data": {
		"_object": {
			"_closed": {
				"_required": [
					{
						"_selectors": [{"_all": {}}],
						"_selection": ["_lid", "_gid"]
					}
				],
				"_recommended": ["_nid", "_aid"],
				"_computed": ["_gid", "_aid"],
				"_immutable": ["_lid", "_gid"]
			}
		}
	}
}
```

`_lid` is immutable because modifying it after insertion would cascade: `_gid` (computed as `_nid + "_" + _lid`) would change, and `_key` (set to `_gid`) would become inconsistent with the stored document identifier — invalidating all edges and cross-references that use the old key. `_gid` is also immutable because it is derived from `_lid` and must remain stable for the same reason.

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
    "ISO_639_3_eng" : "Immutable properties"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Set](_set.md) — [Descriptor term document key](_term_key_descriptor.md)

<details>
<summary>JSON</summary>

```json
{
  "_set" : {
    "_term_key_descriptor" : {

    }
  }
}
```

</details>
