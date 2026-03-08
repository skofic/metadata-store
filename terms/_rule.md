# `_rule`

**`_title`**

Structure Rules Section

**`_definition`**

The section of a term that defines the structural constraints governing an object: which properties are required, recommended, or forbidden, which are managed by the system, and what default values apply at insertion time.

**`_description`**

The structure rules section is present in [object definition terms](_term_object.md). It constrains how a compliant object must be composed.

Required properties are specified using selection structures that express precise cardinality constraints: [exactly one of a set](_selection-descriptors_one.md), [any of a set](_selection-descriptors_any.md), [all of a set](_selection-descriptors_all.md), and so on. [Recommended](_recommended.md) properties form the whitelist used when the schema operates in closed mode — in closed mode only the listed properties are permitted; in open mode they are advisory. [Banned](_banned.md) properties are unconditionally excluded and take precedence over all other rules, including any conditional rules expressed in the graph layer.

Conditional constraints — rules that activate only when a specific property holds a specific value — are expressed in the graph layer using the `_predicate_value-of` predicate, not in this section. The structure rules section handles only unconditional constraints.
