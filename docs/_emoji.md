# Emoji
<p style="color: #888; margin-top: -0.5em;"><code>_emoji</code></p>

> A single emoji character or sequence used as a visual icon for the term. Stored as a plain UTF-8 string.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `emoji` |
| [Global identifier](_gid.md) | `_emoji` |
| [Official identifiers](_aid.md) | `emoji` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "emoji",
  "_gid": "_emoji",
  "_aid": [
    "emoji"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Emoji

**[Definition](_definition.md):** A single emoji character or sequence used as a visual icon for the term. Stored as a plain UTF-8 string.

**[Description](_description.md)**

The emoji provides an instantly recognisable visual identifier for the term. It is stored as a plain UTF-8 string containing a single emoji character or standard emoji sequence — including flag sequences, keycap sequences, and ZWJ sequences.

This property is optional. It is most useful for terms whose concept has a widely recognised emoji equivalent — for example, national flag emoji for ISO 3166 country terms, or domain icons for other controlled vocabulary elements.

Emoji are displayed alongside the term's textual label wherever it is rendered in the user interface, providing an at-a-glance visual cue.

**[Examples](_examples.md)**

```json
{
	"_code": {
		"_nid": "ISO_3166_3",
		"_lid": "ITA",
		"_gid": "ISO_3166_3_ITA",
		"_aid": ["ITA"],
		"_emoji": "🇮🇹"
	}
}
```

Other examples:

- 🇫🇷 — French flag, on the ISO 3166 term for France
- 🇺🇳 — United Nations flag, on a supranational organisation term

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Emoji"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Generic string](_string.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar": {
    "_string": {}
  }
}
```

</details>
