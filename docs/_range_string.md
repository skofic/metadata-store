# `_range_string`

**`_title`**

String range

---

**`_code`**

```json
{
  "_nid": "_range",
  "_lid": "string",
  "_gid": "_range_string",
  "_aid": [
    "string"
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
              "_range_string_min-exclusive",
              "_range_string_min-inclusive_"
            ],
            [
              "_range_string_max-exclusive",
              "_range_string_max-inclusive"
            ]
          ]
        }
      ]
    }
  }
}
```
