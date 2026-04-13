"""Import ISO 3166-2 (Country subdivision codes) from vendor/iso-codes.

Output:
  data/ISO/3166/iso_3166_2_type.json       — 109 subdivision type terms
  data/ISO/3166/iso_3166_2_type.enum.json  — enum-of edges (types → ISO_3166_2_type)
  data/ISO/3166/iso_3166_2.json            — 5046 subdivision terms
  data/ISO/3166/iso_3166_2.enum.json       — Graph 2 edges (ISO_3166_2 root)
  data/ISO/3166/iso_3166_2.hier.json       — Graph 1 edges (ISO_3166 root)

Term structure for subdivision types:
  _nid = "ISO_3166_2_type"
  _lid = slug of English type name (e.g. "province", "administrative-region")
  _gid = "ISO_3166_2_type_province"

Term structure for subdivision terms:
  _nid = "ISO_3166_2"
  _lid = full subdivision code (e.g. "IT-65", "AD-02")
  _gid = "ISO_3166_2_IT-65"
  _aid = [code]
  _prop = {ISO_3166_alpha2: country_alpha2, ISO_3166_alpha3: country_alpha3}
  _domn = {ISO_3166_2_type: "ISO_3166_2_type_province"}

Graph 1 (ISO_3166 root) — hierarchical, type-as-predicate:
  subdivision → (type GID as predicate) → parent_subdivision or country (ISO_3166_1_XXX)
  _path: ["terms/ISO_3166"]

Graph 2 (ISO_3166_2 root) — enumeration with section grouping:
  country  section-of  ISO_3166_2                   _path: ["terms/ISO_3166_2"]
  top-level subdivision  enum-of  country            _path: ["terms/ISO_3166_2"]
  sub-subdivision        enum-of  parent_subdivision _path: ["terms/ISO_3166_2"]
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

NAMESPACE      = "ISO_3166_2"
TYPE_NAMESPACE = "ISO_3166_2_type"
OUTPUT_DIR     = DATA_ISO / "3166"


def _slug(name: str) -> str:
    """Convert type name to slug: lowercase, spaces to hyphens."""
    return name.lower().replace(" ", "-")


def _type_gid(name: str) -> str:
    return f"{TYPE_NAMESPACE}_{_slug(name)}"


def load_country_map() -> dict[str, str]:
    """Return {alpha_2: alpha_3} mapping from iso_3166-1.json."""
    with open(ISO_CODES / "data" / "iso_3166-1.json", encoding="utf-8") as f:
        data = json.load(f)["3166-1"]
    return {e["alpha_2"]: e["alpha_3"] for e in data}


# ---------------------------------------------------------------------------
# Subdivision type terms
# ---------------------------------------------------------------------------

def import_types(data: list[dict]) -> tuple[list, list]:
    """Generate one type term per unique subdivision type in the source data."""
    # Collect unique type names preserving first-seen order (sorted for determinism)
    seen: dict[str, str] = {}  # slug → original name
    for entry in data:
        name = entry["type"]
        slug = _slug(name)
        if slug not in seen:
            seen[slug] = name

    terms = []
    edges = []

    for slug, name in sorted(seen.items()):
        lid = slug
        gid = f"{TYPE_NAMESPACE}_{lid}"
        aid = [lid]

        titles = {"ISO_639_3_eng": name}

        term = {
            "_code": {
                "_nid": TYPE_NAMESPACE,
                "_lid": lid,
                "_gid": gid,
                "_aid": aid,
                "_name": name,
            },
            "_info": {"_title": titles},
        }
        terms.append(term)
        edges.append(build_enum_edge(gid, TYPE_NAMESPACE))

    return terms, edges


# ---------------------------------------------------------------------------
# Subdivision terms and graph edges
# ---------------------------------------------------------------------------

def import_subdivisions(
    data: list[dict],
    translations: dict,
    alpha2_to_alpha3: dict[str, str],
) -> tuple[list, list, list]:
    """
    Returns:
      terms       — list of subdivision term documents
      enum_edges  — Graph 2 (ISO_3166_2 root) edges
      hier_edges  — Graph 1 (ISO_3166 root) edges
    """
    terms      = []
    enum_edges = []
    hier_edges = []

    # Track which country alpha-3 codes appear (for section-of edges)
    country_alpha3_seen: set[str] = set()

    for entry in data:
        code   = entry["code"]          # e.g. "IT-65"
        name   = entry["name"]
        typ    = entry["type"]          # e.g. "Region"
        parent = entry.get("parent")    # e.g. "AZ-NX" or None

        alpha2 = code.split("-")[0]     # country alpha-2
        alpha3 = alpha2_to_alpha3.get(alpha2, "")

        lid = code
        gid = f"{NAMESPACE}_{lid}"
        aid = [lid]

        titles = get_titles(name, translations)

        prop = {}
        if alpha2:
            prop["ISO_3166_alpha2"] = alpha2
        if alpha3:
            prop["ISO_3166_alpha3"] = alpha3

        domn = {
            TYPE_NAMESPACE: _type_gid(typ),
        }

        term = {
            "_code": {
                "_nid": NAMESPACE,
                "_lid": lid,
                "_gid": gid,
                "_aid": aid,
                "_name": name,
            },
            "_info": {"_title": titles},
            "_prop": prop,
            "_domn": domn,
        }
        terms.append(term)

        country_alpha3_seen.add(alpha3)

        # --- Graph 1 (ISO_3166 root): type-as-predicate hierarchy ---
        type_pred = _type_gid(typ)   # e.g. "ISO_3166_2_type_region"
        if parent:
            hier_to = f"{NAMESPACE}_{parent}"
        else:
            hier_to = f"ISO_3166_1_{alpha3}"

        hier_edges.append(build_edge(gid, type_pred, hier_to, ["ISO_3166"]))

        # --- Graph 2 (ISO_3166_2 root): enum-of hierarchy ---
        if parent:
            enum_to = f"{NAMESPACE}_{parent}"
        else:
            enum_to = f"ISO_3166_1_{alpha3}"

        enum_edges.append(build_edge(gid, "_predicate_enum-of", enum_to, ["ISO_3166_2"]))

    # Add country section-of edges for Graph 2 (one per unique country)
    for alpha3 in sorted(country_alpha3_seen):
        country_gid = f"ISO_3166_1_{alpha3}"
        enum_edges.append(build_edge(country_gid, "_predicate_section-of", NAMESPACE, [NAMESPACE]))

    return terms, enum_edges, hier_edges


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    print("ISO 3166-2 — Country subdivisions")

    lang_map = load_lang_map()
    alpha2_to_alpha3 = load_country_map()

    with open(ISO_CODES / "data" / "iso_3166-2.json", encoding="utf-8") as f:
        data = json.load(f)["3166-2"]

    translations = load_translations(ISO_CODES / "iso_3166-2", lang_map)
    print(f"  Translation languages: {len(translations)}")

    type_terms, type_edges = import_types(data)
    print(f"  Subdivision types: {len(type_terms)}")

    terms, enum_edges, hier_edges = import_subdivisions(data, translations, alpha2_to_alpha3)
    print(f"  Subdivisions: {len(terms)}")

    terms.sort(key=lambda t: t["_code"]["_lid"])
    enum_edges.sort(key=lambda e: (e["_from"], e["_to"]))
    hier_edges.sort(key=lambda e: (e["_from"], e["_to"]))

    write_json(OUTPUT_DIR / "iso_3166_2_type.json",      type_terms)
    write_json(OUTPUT_DIR / "iso_3166_2_type.enum.json", type_edges)
    write_json(OUTPUT_DIR / "iso_3166_2.json",           terms)
    write_json(OUTPUT_DIR / "iso_3166_2.enum.json",      enum_edges)
    write_json(OUTPUT_DIR / "iso_3166_2.hier.json",      hier_edges)


if __name__ == "__main__":
    main()
