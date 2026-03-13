# `_emoji`

**`_title`**

Emoji

**`_definition`**

A single emoji character or sequence used as a visual icon for the term. Stored as a plain UTF-8 string.

**`_description`**

The *emoji* provides an instantly recognisable visual identifier for the term. It is stored as a plain UTF-8 string containing a single emoji character or standard emoji sequence (including flag sequences, keycap sequences, and ZWJ sequences).

This property is optional. It is most useful for terms whose concept has a widely recognised emoji equivalent — for example, national flag emoji for ISO 3166 country terms (🇮🇹 for Italy, 🇫🇷 for France), or domain icons for other controlled vocabulary elements.

Emoji are displayed alongside the term's textual label wherever it is rendered in the user interface, providing an at-a-glance visual cue.

**`_examples`**

- 🇮🇹 — Italian flag, used on the ISO 3166 term for Italy
- 🇫🇷 — French flag, used on the ISO 3166 term for France
- 🇺🇳 — United Nations flag, used on a supranational organisation term

---

**`_data`**

```json
{
  "_scalar" : {
    "_type" : "_type_string"
  }
}
```
