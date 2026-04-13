"""Import ISO 639 language codes (parts 1, 3, 5) from vendor/iso-codes.

Output files (one pair per namespace):
  data/ISO/639/iso_639_1.json / iso_639_1.enum.json  — 2-letter alias terms
  data/ISO/639/iso_639_3.json / iso_639_3.enum.json  — comprehensive languages
  data/ISO/639/iso_639_5.json / iso_639_5.enum.json  — language families

Part 1  (_lid = alpha_2, e.g. en, fr, de)
  Alias terms only — each ISO 639-1 element is an alias of its ISO 639-3 counterpart.
  Term has only a _code section; content is resolved through the ISO 639-3 term.
  Graph edges for ISO_639_1:
    ISO_639_3_xxx  enum-of    ISO_639_1_xx   (_path: ISO_639_1)
    ISO_639_1_xx   bridge-of  ISO_639_1      (_path: ISO_639_1)
    ISO_639_3      bridge-of  ISO_639_1      (_path: ISO_639_1)   [one per run]

Part 3  (_lid = alpha_3, e.g. eng, fra, deu)
  Full terms with _info and _prop.
  Languages attach to their section node within the ISO_639_3 graph:
    scope=I + type=L → ISO_639_type_L   (section-of ISO_639_scope_I)
    scope=I + type=A → ISO_639_type_A
    scope=I + type=C → ISO_639_type_C
    scope=I + type=E → ISO_639_type_E
    scope=I + type=H → ISO_639_type_H
    scope=I + type=S → ISO_639_scope_I  (Special — no dedicated type section)
    scope=M          → ISO_639_scope_M
    scope=S          → ISO_639_scope_S
  Graph root for all Part 3 enum-of edges is ISO_639_3.

Part 5  (_lid = alpha_3, e.g. aav, ber, cel)

_prop keys used:
  ISO_639_scope       — scope code (I/M/S), parts 1 and 3
  ISO_639_type        — type code (A/C/E/H/L/S), parts 1 and 3
  ISO_639_alpha2      — 2-letter code when present
  ISO_639_alpha3      — 3-letter terminological code
  ISO_639_bibliographic — 3-letter bibliographic code when different from alpha_3
  ISO_639_common      — common name as _info_string, when different from name
  ISO_639_inverted    — inverted name as _info_string, when present
"""

import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from utils import (
    ISO_CODES, DATA_ISO,
    load_lang_map, load_translations, get_titles,
    build_term, build_edge, build_enum_edge, write_json,
)

OUTPUT_DIR = DATA_ISO / "639"

# ---------------------------------------------------------------------------
# Section routing for ISO 639-3 graph
# ---------------------------------------------------------------------------

# Maps (scope, type) → section GID within the ISO_639_3 graph.
# type_S (Special individual languages) has no dedicated section: route to scope_I.
_SECTION: dict[tuple[str, str], str] = {
    ("I", "A"): "ISO_639_type_A",
    ("I", "C"): "ISO_639_type_C",
    ("I", "E"): "ISO_639_type_E",
    ("I", "H"): "ISO_639_type_H",
    ("I", "L"): "ISO_639_type_L",
}

def _section_gid(scope: str, lang_type: str) -> str:
    """Return the GID of the section node for a language's (scope, type) pair."""
    key = (scope, lang_type)
    if key in _SECTION:
        return _SECTION[key]
    if scope == "I":
        return "ISO_639_scope_I"
    if scope == "M":
        return "ISO_639_scope_M"
    if scope == "S":
        return "ISO_639_scope_S"
    return "ISO_639_3"  # ultimate fallback


# ---------------------------------------------------------------------------
# Part 3 — comprehensive languages
# ---------------------------------------------------------------------------

def import_639_3(data, translations):
    terms = []
    edges = []

    for entry in data:
        alpha3        = entry["alpha_3"]
        name          = entry["name"]
        common_name   = entry.get("common_name")
        inverted_name = entry.get("inverted_name")
        scope         = entry.get("scope", "")
        lang_type     = entry.get("type", "")
        alpha2        = entry.get("alpha_2")
        bibliographic = entry.get("bibliographic")

        lid = alpha3
        gid = f"ISO_639_3_{lid}"
        aid = [alpha3]
        if alpha2:
            aid.append(alpha2)

        titles = get_titles(name, translations, common_name=common_name)

        prop = {
            "ISO_639_alpha3": alpha3,
            "ISO_639_scope":  scope,
            "ISO_639_type":   lang_type,
        }
        if alpha2:
            prop["ISO_639_alpha2"] = alpha2
        if bibliographic and bibliographic != alpha3:
            prop["ISO_639_bibliographic"] = bibliographic
        if common_name:
            prop["ISO_639_common"] = {"ISO_639_3_eng": common_name}
        if inverted_name:
            prop["ISO_639_inverted"] = {"ISO_639_3_eng": inverted_name}

        display = common_name or name
        terms.append(build_term("ISO_639_3", lid, gid, aid, titles, prop=prop, name=display))

        # Enum-of edge: language → section node, graph root = ISO_639_3
        section = _section_gid(scope, lang_type)
        edges.append(build_edge(gid, "_predicate_enum-of", section, ["ISO_639_3"]))

    return terms, edges


# ---------------------------------------------------------------------------
# Part 1 — 2-letter major languages (alias terms)
# ---------------------------------------------------------------------------

def import_639_1(data):
    """Build ISO 639-1 alias terms and the corresponding graph edges.

    Each ISO 639-1 element is an alias of its ISO 639-3 counterpart:
      - Term document: only _code section (no _info, no _prop)
      - ISO_639_3_xxx  enum-of    ISO_639_1_xx   (path: ISO_639_1)
      - ISO_639_1_xx   bridge-of  ISO_639_1      (path: ISO_639_1)

    One global bridge edge is added once:
      - ISO_639_3      bridge-of  ISO_639_1      (path: ISO_639_1)
    """
    terms = []
    edges = []

    # Global bridge: ISO_639_3 namespace bridges into ISO_639_1 graph
    edges.append(build_edge("ISO_639_3", "_predicate_bridge-of", "ISO_639_1", ["ISO_639_1"]))

    for entry in data:
        if "alpha_2" not in entry:
            continue

        alpha2 = entry["alpha_2"]
        alpha3 = entry["alpha_3"]

        lid     = alpha2
        gid     = f"ISO_639_1_{lid}"
        lang3_gid = f"ISO_639_3_{alpha3}"

        # Alias term — _code section only
        term = {
            "_code": {
                "_nid": "ISO_639_1",
                "_lid": lid,
                "_gid": gid,
                "_aid": [lid, alpha3],
            }
        }
        terms.append(term)

        # ISO_639_3_xxx enum-of ISO_639_1_xx (path: ISO_639_1)
        edges.append(build_edge(lang3_gid, "_predicate_enum-of", gid, ["ISO_639_1"]))

        # ISO_639_1_xx bridge-of ISO_639_1 (path: ISO_639_1)
        edges.append(build_edge(gid, "_predicate_bridge-of", "ISO_639_1", ["ISO_639_1"]))

    return terms, edges


# ---------------------------------------------------------------------------
# Part 5 — language families and groups
# ---------------------------------------------------------------------------

def import_639_5(lang_map):
    with open(ISO_CODES / "data" / "iso_639-5.json", encoding="utf-8") as f:
        data = json.load(f)["639-5"]

    translations = load_translations(ISO_CODES / "iso_639-5", lang_map)

    terms = []
    edges = []

    for entry in data:
        alpha3 = entry["alpha_3"]
        name   = entry["name"]

        lid = alpha3
        gid = f"ISO_639_5_{lid}"
        aid = [alpha3]

        titles = get_titles(name, translations)
        prop   = {"ISO_639_alpha3": alpha3}

        terms.append(build_term("ISO_639_5", lid, gid, aid, titles, prop=prop, name=name))
        edges.append(build_enum_edge(gid, "ISO_639_5"))

    return terms, edges


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    print("ISO 639 — Languages")

    lang_map = load_lang_map()

    with open(ISO_CODES / "data" / "iso_639-3.json", encoding="utf-8") as f:
        data_3 = json.load(f)["639-3"]

    translations = load_translations(ISO_CODES / "iso_639-3", lang_map)
    print(f"  Translation languages (639-3 .po): {len(translations)}")

    terms_3, edges_3 = import_639_3(data_3, translations)
    terms_1, edges_1 = import_639_1(data_3)
    terms_5, edges_5 = import_639_5(lang_map)

    for lst in [terms_3, terms_5]:
        lst.sort(key=lambda t: t["_code"]["_lid"])
    terms_1.sort(key=lambda t: t["_code"]["_lid"])

    for lst in [edges_3, edges_5]:
        lst.sort(key=lambda e: e["_from"])
    # ISO 639-1 edges: sort by _from but keep global bridge first
    bridge_edges = [e for e in edges_1 if e["_predicate"] == "_predicate_bridge-of" and e["_from"] == "terms/ISO_639_3"]
    other_edges_1 = [e for e in edges_1 if not (e["_predicate"] == "_predicate_bridge-of" and e["_from"] == "terms/ISO_639_3")]
    other_edges_1.sort(key=lambda e: e["_from"])
    edges_1 = bridge_edges + other_edges_1

    print(f"  Part 1: {len(terms_1)} alias terms  |  Part 3: {len(terms_3)} terms  |  Part 5: {len(terms_5)} terms")

    write_json(OUTPUT_DIR / "iso_639_1.json",      terms_1)
    write_json(OUTPUT_DIR / "iso_639_1.enum.json", edges_1)
    write_json(OUTPUT_DIR / "iso_639_3.json",      terms_3)
    write_json(OUTPUT_DIR / "iso_639_3.enum.json", edges_3)
    write_json(OUTPUT_DIR / "iso_639_5.json",      terms_5)
    write_json(OUTPUT_DIR / "iso_639_5.enum.json", edges_5)


if __name__ == "__main__":
    main()
