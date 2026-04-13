"""Import ISO 4217 (Currency codes) from vendor/iso-codes.

Output:
  data/ISO/4217/iso_4217.json       — term documents
  data/ISO/4217/iso_4217.enum.json  — _predicate_enum-of edges

_lid  = alpha_3 code (e.g. EUR, USD, CHF)
_aid  = [alpha_3, numeric]  (numeric omitted when absent)
_prop = {ISO_4217_alpha3, ISO_4217_numeric}
"""

import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from utils import (
    ISO_CODES, DATA_ISO,
    load_lang_map, load_translations, get_titles,
    build_term, build_enum_edge, write_json,
)

NAMESPACE = "ISO_4217"
OUTPUT_DIR = DATA_ISO / "4217"


def main():
    print("ISO 4217 — Currencies")

    lang_map = load_lang_map()

    with open(ISO_CODES / "data" / "iso_4217.json", encoding="utf-8") as f:
        data = json.load(f)["4217"]

    translations = load_translations(ISO_CODES / "iso_4217", lang_map)
    print(f"  Translation languages: {len(translations)}")

    terms = []
    edges = []

    for entry in data:
        alpha3  = entry["alpha_3"]
        name    = entry["name"]
        numeric = entry.get("numeric", "")

        lid = alpha3
        gid = f"{NAMESPACE}_{lid}"
        aid = [alpha3]
        if numeric:
            aid.append(numeric)

        titles = get_titles(name, translations)

        prop = {"ISO_4217_alpha3": alpha3}
        if numeric:
            prop["ISO_4217_numeric"] = numeric

        terms.append(build_term(NAMESPACE, lid, gid, aid, titles, prop=prop, name=name))
        edges.append(build_enum_edge(gid, NAMESPACE))

    terms.sort(key=lambda t: t["_code"]["_lid"])
    edges.sort(key=lambda e: e["_from"])

    write_json(OUTPUT_DIR / "iso_4217.json",      terms)
    write_json(OUTPUT_DIR / "iso_4217.enum.json", edges)


if __name__ == "__main__":
    main()
