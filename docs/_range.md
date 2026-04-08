# `_range`

**`_title`**

Numeric range

**`_definition`**



**`_description`**



**`_examples`**

---

**`_code`**

```json
{
  "_aid" : [
    "range"
  ],
  "_gid" : "_range",
  "_lid" : "range",
  "_nid" : ""
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
              "_min-exclusive",
              "_min-inclusive"
            ],
            [
              "_max-exclusive",
              "_max-inclusive"
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
