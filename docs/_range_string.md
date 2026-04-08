# `_range_string`

**`_title`**

String range

**`_definition`**



**`_description`**



**`_examples`**

---

**`_code`**

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_range_string",
  "_lid" : "string",
  "_nid" : "_range"
}
```

**`_data`**

```json
{
  "_object" : {
    "_closed" : {
      "_required" : [
        {
          "_selection" : [
            [
              "_range_string_min-exclusive",
              "_range_string_min-inclusive_"
            ],
            [
              "_range_string_max-exclusive",
              "_range_string_max-inclusive"
            ]
          ],
          "_selectors" : [
            {
              "_all" : {
                "_max-items" : 1,
                "_min-items" : 1
              }
            },
            {
              "_any" : {
                "_min-items" : 1
              }
            }
          ]
        }
      ]
    }
  }
}
```
