# Notes

General notes.

## Data section examples

A series of examples of data sections.

### _scalar

This term is an object that contains the following structs:

#### _number

A number that can be eiter a float or an integer.

```json
{
	_datas: {
		_scalar: {
			_number: {
				_unit: "xxx",
				_unit_name: "xxx",
				_unit_symbol: "xxx",
				_range_valid: { ... },
				_range_normal: { ... }
			}
		}
	}
}
```

#### _number_float

A floating point number.

```json
{
	_datas: {
		_scalar: {
      _number_float: {
        _decimals: x,
        _unit: "xxx",
        _unit_name: "xxx",
        _unit_symbol: "xxx",
        _range_valid: { ... },
        _range_normal: { ... }
      }
		}
	}
}
```

#### _number_integer

An integer number.

```json
{
	_datas: {
		_scalar: {
      _number_integer: {
        _unit: "xxx",
        _unit_name: "xxx",
        _unit_symbol: "xxx",
        _range_valid: { ... },
        _range_normal: { ... }
      }
		}
	}
}
```

#### _string

A generic string.

```json
{
	_datas: {
		_scalar: {
			_string: {
        _regexp: "xxx",
				_unit: "xxx",
				_unit_name: "xxx",
				_unit_symbol: "xxx",
				_range_valid_string: { ... },
				_range_normal_string: { ... }
			}
		}
	}
}
```

#### _string_URI

A Universal Resource Identifier.

```json
{
	_datas: {
		_scalar: {
			_string_URI: {}
		}
	}
}
```

#### _string_Email

An e-mail address.

```json
{
	_datas: {
		_scalar: {
			_string_Email: {}
		}
	}
}
```

#### _string_Hostname

A host name.

```json
{
	_datas: {
		_scalar: {
			_string_Hostname: {}
		}
	}
}
```

#### _string_IPv4

An IP address version 4.

```json
{
	_datas: {
		_scalar: {
			_string_IPv4: {}
		}
	}
}
```

#### _string_IPv6

An IP address version 6.

```json
{
	_datas: {
		_scalar: {
			_string_IPv6: {}
		}
	}
}
```

#### _string_YMD

A YYYYMMDD date.

```json
{
	_datas: {
		_scalar: {
      _string_YMD: {
        _range_valid_string: { ... },
        _range_normal_string: { ... }
      }
		}
	}
}
```

#### _string_date

A date.

```json
{
	_datas: {
		_scalar: {
      _string_date: {
        _range_valid_string: { ... },
        _range_normal_string: { ... }
      }
		}
	}
}
```

#### _string_time

A time.

```json
{
	_datas: {
		_scalar: {
      _string_time: {
        _range_valid_string: { ... },
        _range_normal_string: { ... }
      }
		}
	}
}
```

#### _string_date-time

A date and time.

```json
{
	_datas: {
		_scalar: {
      _string_date-time: {
        _range_valid_string: { ... },
        _range_normal_string: { ... }
      }
		}
	}
}
```

#### _string_LaTeX

A LaTeX string.

```json
{
	_datas: {
		_string_LaTeX: {}
	}
}
```

#### _string_HEX

A hexadecimal string.

```json
{
	_datas: {
		_scalar: {
      _string_HEX: {
        _regex: { ... },
        _range_valid_string: { ... },
        _range_normal_string: { ... }
      }
		}
	}
}
```

#### _string_regexp

A regular expression.

```json
{
	_datas: {
		_scalar: {
			_string_regexp: {}
		}
	}
}
```

#### _string_key

A document key.

```json
{
	_datas: {
		_scalar: {
			_string_key: {}
		}
	}
}
```

#### _string_key_term

A term document key.

```json
{
	_datas: {
		_scalar: {
			_string_key_term: {}
		}
	}
}
```

#### _string_key_term_enum-root

An enumeration root term key.

```json
{
	_datas: {
		_scalar: {
			_string_key_term_enum-root: {}
		}
	}
}
```

#### _string_key_term_enum-item

An enumeration element term key

```json
{
	_datas: {
		_scalar: {
			_string_key_term_enum-item: {}
		}
	}
}
```

#### _string_key_term_descriptor

A descriptor term document key.

```json
{
	_datas: {
		_scalar: {
			_string_key_term_descriptor: {}
		}
	}
}
```

#### _string_key_term_predicate

A predicate term document key.

```json
{
	_datas: {
		_scalar: {
			_string_key_term_predicate: {}
		}
	}
}
```

#### _text

A generic text.

```json
{
	_datas: {
		_scalar: {
			_text: {}
		}
	}
}
```

#### _text_HTML

An HTML text.

```json
{
	_datas: {
		_scalar: {
			_text_HTML: {}
		}
	}
}
```

#### _text_Markdown

A Markdown text.

```json
{
	_datas: {
		_scalar: {
			_text_Markdown: {}
		}
	}
}
```

#### _text_SVG

An SVG text.

```json
{
	_datas: {
		_scalar: {
			_text_SVG: {}
		}
	}
}
```

#### _timestamp

A timestamp.

```json
{
	_datas: {
		_scalar: {
			_timestamp: {
        _range_valid: { ... },
        _range_normal: { ... }
      }
		}
	}
}
```

#### _boolean

A boolean.

```json
{
	_datas: {
		_scalar: {
			_boolean: {}
		}
	}
}
```

#### _handle

A document handle.

```json
{
	_datas: {
		_scalar: {
			_handle: {}
		}
	}
}
```

#### _enum

An enumerated value.

```json
{
	_datas: {
		_scalar: {
			_enum: {}
		}
	}
}
```

### _object

This term is an object that contains the following structs:

An object that can contain any property, also not in the dictionary.

```json
{
	_datas: {
		_object: {}
	}
}
```

An object that can contain any property defined in the dictionary.

```json
{
	_datas: {
		_object: {
      _open: {}
    }
	}
}
```

An object that can only contain dictionary properties defined here.

```json
{
	_datas: {
		_object: {
      _closed: { ... }
    }
	}
}
```

### _dict

This term is a key/value dictionary.

A dictionary with generic string keys and a Markdown text as value.

```json
{
	_datas: {
		_dict: {
      _dict_key: {
        _string: {
          _regexp: "^[0-9]{4,4}[A-Z]{3,3}$",
          _range_valid_string: { ... },
          _range_normal_string: { ... }
        }
      },
      _dict_value: {
        _text_Markdown: {}
      }
    }
	}
}
```

### _tuple

This term is a tuple.

A tuple with a string and a number.

```json
{
	_datas: {
		_tuple: [
      {
        _scalar: {
          _string: {}
        }
      },
      {
        _scalar: {
          _number: {}
        }
      }
    ]
	}
}
```

### _array

This term is an array.

An array of floats.

```json
{
	_datas: {
		_array: {
      _array: {
        _scalar: {
          _number: {
            _number_float: {}
          }
        }
      }
    }
	}
}
```

### _set

This term is a set, an array of unique elements.

A set of term keys.

```json
{
	_datas: {
		_set: {
      _string: {
        _string_key_term: {}
      }
    }
	}
}
```

### _nested

This term is a nested array.

A nested array of term keys.

```json
{
	_datas: {
		_nested: {
      _scalar: {
        _string: {
          _string_key_term: {}
        }
      }
    }
	}
}
```

### _typedef

This term uses the data type of the referenced term.

This term is a _title.

```json
{
	_datas: {
		_typedef: "_title"
	}
}
```

