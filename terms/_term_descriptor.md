# `_term_descriptor`

**`_title`**

Descriptor

**`_definition`**

A term that represents a typed data variable. Descriptors carry a data type section that defines the type, shape, and constraints of the value they document.

**`_description`**

A descriptor is a [term](_term.md) whose primary role is to define the type and shape of a data value. The [data type section](_data.md) is mandatory in a *descriptor* and specifies whether the value is a [scalar](_scalar.md), [array](_array.md), [set](_set.md), [tuple](_tuple.md), or [dictionary](_dict.md), along with its precise type, format, units, and valid range.

Descriptors are referenced by object schema terms to define which properties an object may contain, and by enumeration graphs to constrain the type of their elements. The term *descriptor* is synonymous with *data variable* and *variable term*.
