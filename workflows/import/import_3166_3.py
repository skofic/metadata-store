"""Import ISO 3166-3 (Former country codes) from vendor/iso-codes.

Output:
  data/ISO/3166/iso_3166_3.json       — term documents
  data/ISO/3166/iso_3166_3.enum.json  — _predicate_enum-of edges

_lid  = alpha_4 code (e.g. YUCS, CSHH, DDDE)
_aid  = [alpha_4, alpha_2, alpha_3, numeric]  (numeric omitted when absent)
_prop = {ISO_3166_alpha2, ISO_3166_alpha3, ISO_3166_3_alpha4,
         ISO_3166_numeric (if present),
         ISO_3166_3_withdrawal (if present)}
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

NAMESPACE = "ISO_3166_3"
OUTPUT_DIR = DATA_ISO / "3166"


def main():
    print("ISO 3166-3 — Former countries")

    lang_map = load_lang_map()

    with open(ISO_CODES / "data" / "iso_3166-3.json", encoding="utf-8") as f:
        data = json.load(f)["3166-3"]

    # iso_3166-3 has its own translation directory
    translations = load_translations(ISO_CODES / "iso_3166-3", lang_map)
    print(f"  Translation languages: {len(translations)}")

    terms = []
    edges = []

    for entry in data:
        alpha4     = entry["alpha_4"]
        alpha3     = entry["alpha_3"]
        alpha2     = entry["alpha_2"]
        name       = entry["name"]
        numeric    = entry.get("numeric", "")
        withdrawal = entry.get("withdrawal_date", "")

        lid = alpha4
        gid = f"{NAMESPACE}_{lid}"
        aid = [alpha4, alpha2, alpha3]
        if numeric:
            aid.append(numeric)

        titles = get_titles(name, translations)

        prop = {
            "ISO_3166_alpha2":    alpha2,
            "ISO_3166_alpha3":    alpha3,
            "ISO_3166_3_alpha4":  alpha4,
        }
        if numeric:
            prop["ISO_3166_numeric"] = numeric
        if withdrawal:
            prop["ISO_3166_3_withdrawal"] = withdrawal

        terms.append(build_term(NAMESPACE, lid, gid, aid, titles, prop=prop, name=name))
        edges.append(build_enum_edge(gid, NAMESPACE))

    terms.sort(key=lambda t: t["_code"]["_lid"])
    edges.sort(key=lambda e: e["_from"])

    write_json(OUTPUT_DIR / "iso_3166_3.json",      terms)
    write_json(OUTPUT_DIR / "iso_3166_3.enum.json", edges)


if __name__ == "__main__":
    main()
