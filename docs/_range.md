# `_range`

**`_title`**

Numeric range

---

**`_code`**

```json
{
  "_nid": "",
  "_lid": "range",
  "_gid": "_range",
  "_aid": [
    "range"
  ]
}
```

**`_data`**

```json
{
  "_object": {
    "_closed": {
      "_required": [
        {
          "_selectors": [
            {
              "_all": {
                "_min-items": 1,
                "_max-items": 1
              }
            },
            {
              "_any": {
                "_min-items": 1
              }
            }
          ],
          "_selection": [
            [
              "_min-exclusive",
              "_min-inclusive"
            ],
            [
              "_max-exclusive",
              "_max-inclusive"
            ]
          ]
        }
      ]
    }
  }
}
```
