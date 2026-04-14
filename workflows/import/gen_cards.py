#!/usr/bin/env python3
"""
Generate term cards (Markdown) in docs/ from JSON term files.

Usage:
    python gen_cards.py [--dirs dir1 dir2 ...]

Defaults to the non-ISO standard directories:
    data/standards, data/TLD, data/IOC, data/IDD, data/UN
"""

import argparse
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
DOCS = ROOT / "docs"

# Map of scalar/set type keys to (display label, link target in docs/)
TYPE_LABELS = {
    "_number": ("Floating-point or integer number", "_number.md"),
    "_number_float": ("Floating-point number", "_number_float.md"),
    "_number_integer": ("Integer", "_number_integer.md"),
    "_string": ("Generic string", "_string.md"),
    "_string_URI": ("URI string", "_string_URI.md"),
    "_string_Email": ("Email address", "_string_Email.md"),
    "_string_Hostname": ("Hostname", "_string_Hostname.md"),
    "_string_IPv4": ("IPv4 address", "_string_IPv4.md"),
    "_string_IPv6": ("IPv6 address", "_string_IPv6.md"),
    "_string_YMD": ("YMD date string", "_string_YMD.md"),
    "_string_date": ("Date string", "_string_date.md"),
    "_string_time": ("Time string", "_string_time.md"),
    "_string_date-time": ("Date-time string", "_string_date-time.md"),
    "_string_LaTeX": ("LaTeX string", "_string_LaTeX.md"),
    "_string_HEX": ("Hexadecimal string", "_string_HEX.md"),
    "_string_regexp": ("Regular expression", "_string_regexp.md"),
    "_text": ("Plain text", "_text.md"),
    "_text_HTML": ("HTML text", "_text_HTML.md"),
    "_text_Markdown": ("Markdown text", "_text_Markdown.md"),
    "_text_SVG": ("SVG image", "_text_SVG.md"),
    "_boolean": ("Boolean", "_boolean.md"),
    "_timestamp": ("Timestamp", "_timestamp.md"),
    "_enum": ("Enumerated value", "_enum.md"),
    "_handle": ("Document handle", "_handle.md"),
    "_term_key": ("Term key", "_term_key.md"),
    "_term_key_enum-root": ("Enumeration root key", "_term_key_enum-root.md"),
    "_term_key_enum-item": ("Enumeration element key", "_term_key_enum-item.md"),
    "_term_key_descriptor": ("Descriptor term key", "_term_key_descriptor.md"),
}


def aid_str(aid: list) -> str:
    return ", ".join(f"`{a}`" for a in aid)


def format_range(rng: dict) -> str:
    parts = []
    if "_min-inclusive" in rng:
        parts.append(f"≥ {rng['_min-inclusive']}")
    if "_min-exclusive" in rng:
        parts.append(f"> {rng['_min-exclusive']}")
    if "_max-inclusive" in rng:
        parts.append(f"≤ {rng['_max-inclusive']}")
    if "_max-exclusive" in rng:
        parts.append(f"< {rng['_max-exclusive']}")
    return ", ".join(parts)


def describe_scalar_type(type_key: str, type_val: dict) -> str:
    label, link = TYPE_LABELS.get(type_key, (type_key, f"{type_key}.md"))
    line = f"[{label}]({link})"
    if type_key == "_enum" and "_enums" in type_val:
        enums = type_val["_enums"]
        if isinstance(enums, str):
            enums = [enums]
        vocab = ", ".join(f"`{e}`" for e in enums)
        line += f" from vocabulary {vocab}"
    if "_range_valid" in type_val:
        line += f" — valid range: {format_range(type_val['_range_valid'])}"
    if "_unit_symbol" in type_val:
        line += f" — unit: `{type_val['_unit_symbol']}`"
    if "_unit_name" in type_val:
        # _unit_name is a multilingual dict
        name = type_val["_unit_name"].get("ISO_639_3_eng", "")
        if name:
            line += f" ({name})"
    return line


def describe_data(data: dict) -> tuple[str, str]:
    """Return (shape_summary_line, data_json_pretty)."""
    data_json = json.dumps(data, indent=2, ensure_ascii=False)

    if "_typedef" in data:
        ref = data["_typedef"]
        # Try to find a link for known typedefs
        typedef_links = {
            "_info_strings": ("Multilingual plain text strings", "_info_strings.md"),
            "_info_string": ("Multilingual plain text string", "_info_string.md"),
            "_type_scalar": ("Scalar data type", "_type_scalar.md"),
            "_type_comparable": ("Comparable scalar type", "_type_comparable.md"),
            "_type_key": ("Dictionary key type", "_type_key.md"),
        }
        if ref in typedef_links:
            label, link = typedef_links[ref]
            shape = f"**Shape:** [Type definition](_typedef.md): [{label}]({link})"
        else:
            shape = f"**Shape:** [Type definition](_typedef.md): `{ref}`"
        return shape, data_json

    if "_scalar" in data:
        scalar = data["_scalar"]
        if not scalar:
            shape = "**Shape:** [Scalar](_scalar.md) — any type"
        else:
            type_key = next(iter(scalar))
            type_val = scalar[type_key]
            shape = f"**Shape:** [Scalar](_scalar.md) — {describe_scalar_type(type_key, type_val)}"
        return shape, data_json

    if "_set" in data:
        s = data["_set"]
        if not s:
            shape = "**Shape:** [Set](_set.md) — any comparable type"
        else:
            type_key = next(iter(s))
            type_val = s[type_key]
            shape = f"**Shape:** [Set](_set.md) of {describe_scalar_type(type_key, type_val)}"
        return shape, data_json

    if "_array" in data:
        shape = "**Shape:** [Array](_array.md)"
        return shape, data_json

    if "_dict" in data:
        shape = "**Shape:** [Dictionary](_dict.md)"
        return shape, data_json

    if "_object" in data:
        shape = "**Shape:** [Object](_object.md)"
        return shape, data_json

    if not data:
        shape = "**Shape:** Any"
        return shape, data_json

    shape = "**Shape:** (complex)"
    return shape, data_json


def info_json_abbreviated(info: dict) -> str:
    """Produce abbreviated _info JSON — title shown, long texts as '...'."""
    out = {}
    for key in ("_title", "_definition", "_description", "_examples", "_notes", "_url"):
        if key not in info:
            continue
        val = info[key]
        if key == "_title":
            out[key] = val
        else:
            # abbreviate multilingual dict values
            out[key] = {lang: "..." for lang in val}
    return json.dumps(out, indent=2, ensure_ascii=False)


def render_card(term: dict) -> str:
    code = term.get("_code", {})
    info = term.get("_info", {})
    data = term.get("_data", None)

    gid = code.get("_gid", "")
    lid = code.get("_lid", "")
    nid = code.get("_nid", None)
    aid = code.get("_aid", [lid])

    title = info.get("_title", {}).get("ISO_639_3_eng", gid)
    definition = info.get("_definition", {}).get("ISO_639_3_eng", "")
    description = info.get("_description", {}).get("ISO_639_3_eng", "")
    examples = info.get("_examples", {}).get("ISO_639_3_eng", "")

    lines = []

    # H1
    lines.append(f"# {title}")
    # GID subtitle
    lines.append(f'<p style="color: #888; margin-top: -0.5em;"><code>{gid}</code></p>')
    lines.append("")
    # Definition blockquote
    if definition:
        lines.append(f"> {definition}")
        lines.append("")
    lines.append("---")
    lines.append("")

    # --- Identification section ---
    lines.append("## [Identification section](_code.md)")
    lines.append("")
    lines.append("| Property | Value |")
    lines.append("|---|---|")

    if nid is None:
        nid_display = "(none — top-level namespace)"
    elif nid == "":
        nid_display = "(default)"
    else:
        nid_display = f"`{nid}`"

    lines.append(f"| [Namespace](_nid.md) | {nid_display} |")
    lines.append(f"| [Local identifier](_lid.md) | `{lid}` |")
    lines.append(f"| [Global identifier](_gid.md) | `{gid}` |")
    lines.append(f"| [Official identifiers](_aid.md) | {aid_str(aid)} |")
    lines.append("")

    # Code JSON collapsible
    code_json_obj = {}
    if nid is not None:
        code_json_obj["_nid"] = nid
    code_json_obj["_lid"] = lid
    code_json_obj["_gid"] = gid
    code_json_obj["_aid"] = aid
    for extra in ("_name", "_symbol", "_regexp", "_emoji", "_pid"):
        if extra in code:
            code_json_obj[extra] = code[extra]

    lines.append("<details>")
    lines.append("<summary>JSON</summary>")
    lines.append("")
    lines.append("```json")
    lines.append(json.dumps(code_json_obj, indent=2, ensure_ascii=False))
    lines.append("```")
    lines.append("")
    lines.append("</details>")
    lines.append("")
    lines.append("---")
    lines.append("")

    # --- Information section ---
    lines.append("## [Information section](_info.md)")
    lines.append("")
    lines.append(f"**[Title](_title.md):** {title}")
    lines.append("")
    if definition:
        lines.append(f"**[Definition](_definition.md):** {definition}")
        lines.append("")
    if description:
        lines.append("**[Description](_description.md)**")
        lines.append("")
        lines.append(description)
        lines.append("")
    if examples:
        lines.append("**[Examples](_examples.md)**")
        lines.append("")
        lines.append(examples)
        lines.append("")

    lines.append("<details>")
    lines.append("<summary>JSON</summary>")
    lines.append("")
    lines.append("```json")
    lines.append(info_json_abbreviated(info))
    lines.append("```")
    lines.append("")
    lines.append("</details>")

    # --- Data section ---
    if data is not None:
        lines.append("")
        lines.append("---")
        lines.append("")
        lines.append("## [Data section](_data.md)")
        lines.append("")
        shape, data_json = describe_data(data)
        lines.append(shape)
        lines.append("")
        lines.append("<details>")
        lines.append("<summary>JSON</summary>")
        lines.append("")
        lines.append("```json")
        lines.append(data_json)
        lines.append("```")
        lines.append("")
        lines.append("</details>")

    lines.append("")
    return "\n".join(lines)


def process_file(path: Path, docs_dir: Path) -> list[str]:
    with open(path) as f:
        terms = json.load(f)
    written = []
    for term in terms:
        gid = term.get("_code", {}).get("_gid", "")
        if not gid:
            continue
        card = render_card(term)
        out = docs_dir / f"{gid}.md"
        out.write_text(card, encoding="utf-8")
        written.append(gid)
    return written


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--dirs", nargs="*", help="Directories to scan (relative to repo root)")
    args = parser.parse_args()

    if args.dirs:
        dirs = [ROOT / d for d in args.dirs]
    else:
        dirs = [
            ROOT / "data/standards",
            ROOT / "data/TLD",
            ROOT / "data/IOC",
            ROOT / "data/IDD",
            ROOT / "data/UN",
        ]

    DOCS.mkdir(exist_ok=True)
    total = []
    for d in dirs:
        for json_file in sorted(d.glob("*.json")):
            # skip edge files
            if ".enum." in json_file.name or ".edge." in json_file.name:
                continue
            written = process_file(json_file, DOCS)
            for gid in written:
                print(f"  wrote {gid}.md")
            total.extend(written)

    print(f"\nDone. {len(total)} cards written to docs/")


if __name__ == "__main__":
    main()
