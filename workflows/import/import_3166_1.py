"""Import ISO 3166-1 (Current country codes) from vendor/iso-codes and
vendor/countries (mledoze), augmented with flag emoji.

Output:
  data/ISO/3166/iso_3166_1.json       — term documents
  data/ISO/3166/iso_3166_1.enum.json  — _predicate_enum-of edges

_lid        = alpha_3 code (e.g. ITA, USA, CHN)
_aid        = [alpha_3, alpha_2, numeric]
_info._title      = multilingual common name
_info._definition = multilingual official name (when it differs from the common name)
_code._uri        = Wikidata identity URI (preserved from previous run if present)
_prop       = {ISO_3166_alpha2, ISO_3166_alpha3, ISO_3166_numeric,
               + mledoze fields: TLD_codes, IOC_code, UN_GA, currencies,
                 IDD_codes, national-capitals, UN_Macro-region, UN_Sub-region,
                 spoken-languages, latitude_deg, longitude_deg,
                 national-borders, area_km2}
_emoji      = flag emoji (from iso-codes or mledoze)

Note: _name is intentionally omitted from _code — countries have no single
canonical name across languages.

Subregion mapping note: mledoze uses "Central Europe" (AUT, CZE, HUN, POL,
SVK, SVN) and "Southeast Europe" (ALB, BGR, BIH, HRV, UNK, MKD, MNE, ROU,
SRB) which have no equivalent in the UN M.49 standard. These countries will
not have a UN_Sub-region value in _prop.
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
OUTPUT_FILE = OUTPUT_DIR / "iso_3166_1.json"

# ---------------------------------------------------------------------------
# Mapping tables: mledoze values → our GIDs
# ---------------------------------------------------------------------------

UN_GA_MAP = {
    "African Group":                       "UN_GA_African-Group",
    "Asia and the Pacific Group":          "UN_GA_Asia-Pacific-Group",
    "Latin American and Caribbean Group":  "UN_GA_Latin-American-Caribbean-Group",
    "Western European and Others Group":   "UN_GA_Western-European-Others-Group",
    "Eastern European Group":              "UN_GA_Eastern-European-Group",
}

MACRO_REGION_MAP = {
    "Africa":    "UN_M49_Africa",
    "Americas":  "UN_M49_Americas",
    "Asia":      "UN_M49_Asia",
    "Europe":    "UN_M49_Europe",
    "Oceania":   "UN_M49_Oceania",
    "Antarctic": "UN_M49_Antarctic",
}

SUB_REGION_MAP = {
    "Northern Africa":          "UN_M49_Northern-Africa",
    "Eastern Africa":           "UN_M49_Eastern-Africa",
    "Middle Africa":            "UN_M49_Middle-Africa",
    "Southern Africa":          "UN_M49_Southern-Africa",
    "Western Africa":           "UN_M49_Western-Africa",
    "North America":            "UN_M49_Northern-America",   # mledoze name differs
    "Caribbean":                "UN_M49_Caribbean",
    "Central America":          "UN_M49_Central-America",
    "South America":            "UN_M49_South-America",
    "Central Asia":             "UN_M49_Central-Asia",
    "Eastern Asia":             "UN_M49_Eastern-Asia",
    "South-Eastern Asia":       "UN_M49_South-eastern-Asia", # capitalization differs
    "Southern Asia":            "UN_M49_Southern-Asia",
    "Western Asia":             "UN_M49_Western-Asia",
    "Eastern Europe":           "UN_M49_Eastern-Europe",
    "Northern Europe":          "UN_M49_Northern-Europe",
    "Southern Europe":          "UN_M49_Southern-Europe",
    "Western Europe":           "UN_M49_Western-Europe",
    "Australia and New Zealand":"UN_M49_Australia-and-New-Zealand",
    "Melanesia":                "UN_M49_Melanesia",
    "Micronesia":               "UN_M49_Micronesia",
    "Polynesia":                "UN_M49_Polynesia",
    # mledoze-specific, not in UN M.49 — intentionally omitted:
    "Central Europe":           None,
    "Southeast Europe":         None,
}


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def build_idd_codes(idd: dict) -> list[str]:
    """Return a list of international calling code strings from a mledoze idd dict.

    For countries with many suffixes (USA, Canada with hundreds of NANP area
    codes), only the root is stored — the suffixes are domestic area codes,
    not separate international access codes.
    """
    root = idd.get("root", "")
    if not root:
        return []
    suffixes = idd.get("suffixes", [])
    if not suffixes:
        return [root]
    # USA and Canada have hundreds of NANP area-code suffixes — just keep root
    if len(suffixes) > 5:
        return [root]
    return [root + s for s in suffixes]


def load_existing_uris(path: Path) -> dict[str, str]:
    """Load {_gid: _uri} from an existing terms JSON file (to preserve Wikidata URIs)."""
    if not path.exists():
        return {}
    with open(path, encoding="utf-8") as f:
        terms = json.load(f)
    return {
        t["_code"]["_gid"]: t["_code"]["_uri"]
        for t in terms
        if "_uri" in t.get("_code", {})
    }


def load_mledoze():
    """Load vendor/countries/countries.json keyed by cca3 (alpha-3)."""
    with open(COUNTRIES / "countries.json", encoding="utf-8") as f:
        data = json.load(f)
    return {c["cca3"]: c for c in data if c.get("cca3")}


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    print("ISO 3166-1 — Countries")

    lang_map = load_lang_map()

    with open(ISO_CODES / "data" / "iso_3166-1.json", encoding="utf-8") as f:
        data = json.load(f)["3166-1"]

    translations = load_translations(ISO_CODES / "iso_3166-1", lang_map)
    print(f"  Translation languages (iso-codes .po): {len(translations)}")

    mledoze = load_mledoze()
    print(f"  mledoze entries: {len(mledoze)}")

    # Preserve any Wikidata URIs from a previous run
    existing_uris = load_existing_uris(OUTPUT_FILE)
    print(f"  Existing Wikidata URIs to preserve: {len(existing_uris)}")

    terms = []
    edges = []
    skipped_subregions: dict[str, list[str]] = {}  # unmapped value → [cca3, ...]

    for entry in data:
        alpha3        = entry["alpha_3"]
        alpha2        = entry["alpha_2"]
        name          = entry["name"]
        numeric       = entry["numeric"]
        common_name   = entry.get("common_name")
        official_name = entry.get("official_name")
        flag          = entry.get("flag", "")

        ml = mledoze.get(alpha3, {})
        if not flag:
            flag = ml.get("flag", "")

        lid = alpha3
        gid = f"{NAMESPACE}_{lid}"
        aid = [alpha3, alpha2, numeric]

        titles = get_titles(name, translations, common_name=common_name)

        # Merge mledoze translations (keyed by ISO 639-1 two-letter codes)
        for lang_code, trans in ml.get("translations", {}).items():
            lang_gid = lang_map.get(lang_code)
            if lang_gid and lang_gid not in titles:
                t = trans.get("common") or trans.get("official")
                if t:
                    titles[lang_gid] = t

        # Official name → _info._definition (multilingual, only when it differs)
        definition = None
        if official_name:
            definition = get_titles(official_name, translations)

        # --- _prop -----------------------------------------------------------
        prop = {
            "ISO_3166_alpha2":  alpha2,
            "ISO_3166_alpha3":  alpha3,
            "ISO_3166_numeric": numeric,
        }

        # TLD codes
        tld = [t for t in ml.get("tld", []) if t]
        if tld:
            prop["TLD_codes"] = tld

        # IOC code
        cioc = ml.get("cioc", "")
        if cioc:
            prop["IOC_code"] = cioc

        # UN General Assembly regional group
        un_group_raw = ml.get("unRegionalGroup", "")
        un_group_gid = UN_GA_MAP.get(un_group_raw)
        if un_group_gid:
            prop["UN_GA"] = un_group_gid

        # Currencies (ISO 4217 GIDs)
        currencies_raw = ml.get("currencies", {})
        currencies_gids = [f"ISO_4217_{code}" for code in currencies_raw if code]
        if currencies_gids:
            prop["currencies"] = currencies_gids

        # International Direct Dialing codes
        idd_codes = build_idd_codes(ml.get("idd", {}))
        if idd_codes:
            prop["IDD_codes"] = idd_codes

        # National capitals (as _info_strings: list of {lang_gid: name})
        capitals = [c for c in ml.get("capital", []) if c]
        if capitals:
            prop["national-capitals"] = [{"ISO_639_3_eng": c} for c in capitals]

        # UN M.49 macro-region
        region_raw = ml.get("region", "")
        macro_gid = MACRO_REGION_MAP.get(region_raw)
        if macro_gid:
            prop["UN_Macro-region"] = macro_gid

        # UN M.49 sub-region
        subregion_raw = ml.get("subregion", "")
        if subregion_raw:
            sub_gid = SUB_REGION_MAP.get(subregion_raw)
            if sub_gid:
                prop["UN_Sub-region"] = sub_gid
            elif subregion_raw not in SUB_REGION_MAP:
                # Truly unknown value — log it
                skipped_subregions.setdefault(f"UNKNOWN:{subregion_raw}", []).append(alpha3)
            else:
                # Known but intentionally unmapped (Central Europe, Southeast Europe)
                skipped_subregions.setdefault(subregion_raw, []).append(alpha3)

        # Spoken languages (ISO 639-3 GIDs)
        lang_codes = list(ml.get("languages", {}).keys())
        lang_gids = [f"ISO_639_3_{code}" for code in lang_codes if code]
        if lang_gids:
            prop["spoken-languages"] = lang_gids

        # Coordinates
        latlng = ml.get("latlng", [])
        if len(latlng) == 2:
            prop["latitude_deg"]  = float(latlng[0])
            prop["longitude_deg"] = float(latlng[1])

        # National borders (ISO 3166-1 GIDs)
        borders = [f"ISO_3166_1_{b}" for b in ml.get("borders", []) if b]
        if borders:
            prop["national-borders"] = borders

        # Area in km²
        area = ml.get("area")
        if area is not None and area >= 0:
            prop["area_km2"] = float(area)

        # --- Build term ------------------------------------------------------
        term = build_term(
            NAMESPACE, lid, gid, aid, titles,
            prop=prop, emoji=flag or None, definition=definition,
        )

        # Restore Wikidata URI if present from previous run
        if gid in existing_uris:
            term["_code"]["_uri"] = existing_uris[gid]

        terms.append(term)
        edges.append(build_enum_edge(gid, NAMESPACE))

    terms.sort(key=lambda t: t["_code"]["_lid"])
    edges.sort(key=lambda e: e["_from"])

    # Report unmapped subregions
    if skipped_subregions:
        print("\n  ⚠ Subregions with no UN M.49 mapping (UN_Sub-region omitted):")
        for val, countries in sorted(skipped_subregions.items()):
            print(f"    {val!r}: {countries}")

    write_json(OUTPUT_FILE,                        terms)
    write_json(OUTPUT_DIR / "iso_3166_1.enum.json", edges)


if __name__ == "__main__":
    main()
