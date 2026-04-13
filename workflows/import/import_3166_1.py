"""Import ISO 3166-1 (Current country codes) from vendor/iso-codes and
vendor/countries (mledoze), augmented with flag emoji.

Output:
  data/ISO/3166/iso_3166_1.json       — term documents
  data/ISO/3166/iso_3166_1.enum.json  — _predicate_enum-of edges

_lid  = alpha_3 code (e.g. ITA, USA, CHN)
_aid  = [alpha_3, alpha_2, numeric]
_prop = {ISO_3166_alpha2, ISO_3166_alpha3, ISO_3166_numeric,
         ISO_3166_official-name (if present),
         ISO_3166_common-name  (if present)}
_emoji = flag emoji (from iso-codes or mledoze)
"""

import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from utils import (
    ISO_CODES, DATA_ISO, COUNTRIES,
    load_lang_map, load_translations, get_titles,
    build_term, build_enum_edge, write_json,
)

NAMESPACE = "ISO_3166_1"
OUTPUT_DIR = DATA_ISO / "3166"


def load_mledoze(lang_map):
    """Load mledoze/countries.json keyed by cca3 (alpha-3).

    Returns {cca3: country_dict} and a {cca3: {lang_gid: name}} translation map.
    """
    with open(COUNTRIES / "countries.json", encoding="utf-8") as f:
        data = json.load(f)

    by_alpha3 = {}
    for c in data:
        key = c.get("cca3")
        if key:
            by_alpha3[key] = c

    return by_alpha3


def main():
    print("ISO 3166-1 — Countries")

    lang_map = load_lang_map()

    with open(ISO_CODES / "data" / "iso_3166-1.json", encoding="utf-8") as f:
        data = json.load(f)["3166-1"]

    translations = load_translations(ISO_CODES / "iso_3166-1", lang_map)
    print(f"  Translation languages (iso-codes .po): {len(translations)}")

    mledoze = load_mledoze(lang_map)

    terms = []
    edges = []

    for entry in data:
        alpha3        = entry["alpha_3"]
        alpha2        = entry["alpha_2"]
        name          = entry["name"]
        numeric       = entry["numeric"]
        common_name   = entry.get("common_name")
        official_name = entry.get("official_name")
        flag          = entry.get("flag", "")

        # Augment from mledoze
        ml = mledoze.get(alpha3, {})
        if not flag:
            flag = ml.get("flag", "")

        lid = alpha3
        gid = f"{NAMESPACE}_{lid}"
        aid = [alpha3, alpha2, numeric]

        titles = get_titles(name, translations, common_name=common_name)

        # Merge mledoze translations (keyed by ISO 639-1 alpha_2)
        for lang_code, trans in ml.get("translations", {}).items():
            lang_gid = lang_map.get(lang_code)
            if lang_gid and lang_gid not in titles:
                t = trans.get("common") or trans.get("official")
                if t:
                    titles[lang_gid] = t

        prop = {
            "ISO_3166_alpha2":  alpha2,
            "ISO_3166_alpha3":  alpha3,
            "ISO_3166_numeric": numeric,
        }
        if official_name:
            prop["ISO_3166_official-name"] = {"ISO_639_3_eng": official_name}
        if common_name:
            prop["ISO_3166_common-name"] = {"ISO_639_3_eng": common_name}

        display = common_name or name
        terms.append(build_term(
            NAMESPACE, lid, gid, aid, titles,
            prop=prop, name=display, emoji=flag or None,
        ))
        edges.append(build_enum_edge(gid, NAMESPACE))

    terms.sort(key=lambda t: t["_code"]["_lid"])
    edges.sort(key=lambda e: e["_from"])

    write_json(OUTPUT_DIR / "iso_3166_1.json",      terms)
    write_json(OUTPUT_DIR / "iso_3166_1.enum.json", edges)


if __name__ == "__main__":
    main()
