"""Import ISO 15924 (Script codes) from vendor/iso-codes.

Output:
  data/ISO/15924/iso_15924.json       — term documents
  data/ISO/15924/iso_15924.enum.json  — _predicate_enum-of edges

_lid  = alpha_4 code (e.g. Latn, Cyrl, Arab)
_aid  = [alpha_4, numeric]
_prop = {ISO_15924_alpha4, ISO_15924_numeric}
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

NAMESPACE = "ISO_15924"
OUTPUT_DIR = DATA_ISO / "15924"


def main():
    print("ISO 15924 — Scripts")

    lang_map = load_lang_map()

    with open(ISO_CODES / "data" / "iso_15924.json", encoding="utf-8") as f:
        data = json.load(f)["15924"]

    translations = load_translations(ISO_CODES / "iso_15924", lang_map)
    print(f"  Translation languages: {len(translations)}")

    terms = []
    edges = []

    for entry in data:
        alpha4  = entry["alpha_4"]
        name    = entry["name"]
        numeric = entry["numeric"]

        lid = alpha4
        gid = f"{NAMESPACE}_{lid}"
        aid = [alpha4, numeric]

        titles = get_titles(name, translations)

        prop = {
            "ISO_15924_alpha4":  alpha4,
            "ISO_15924_numeric": numeric,
        }

        terms.append(build_term(NAMESPACE, lid, gid, aid, titles, prop=prop, name=name))
        edges.append(build_enum_edge(gid, NAMESPACE))

    terms.sort(key=lambda t: t["_code"]["_lid"])
    edges.sort(key=lambda e: e["_from"])

    write_json(OUTPUT_DIR / "iso_15924.json",      terms)
    write_json(OUTPUT_DIR / "iso_15924.enum.json", edges)


if __name__ == "__main__":
    main()
