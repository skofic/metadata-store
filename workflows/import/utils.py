"""Shared utilities for ISO term import scripts."""

import json
import re
from pathlib import Path

# Repository root paths
REPO_ROOT = Path(__file__).parent.parent.parent
VENDOR = REPO_ROOT / "vendor"
DATA_ISO = REPO_ROOT / "data" / "ISO"
ISO_CODES = VENDOR / "iso-codes"
COUNTRIES = VENDOR / "countries"
FLAG_ICONS = VENDOR / "flag-icons"


# ---------------------------------------------------------------------------
# Language mapping
# ---------------------------------------------------------------------------

def load_lang_map():
    """Build {alpha_2: ISO_639_3_xxx} mapping from iso_639-3.json."""
    with open(ISO_CODES / "data" / "iso_639-3.json", encoding="utf-8") as f:
        data = json.load(f)
    return {
        e["alpha_2"]: f"ISO_639_3_{e['alpha_3']}"
        for e in data["639-3"]
        if "alpha_2" in e
    }


def po_lang_to_gid(lang_code, lang_map):
    """Map a .po filename language code to an ISO_639_3_xxx GID.

    Strips country suffixes (zh_CN → zh) and script variants (sr@latin → sr)
    before looking up in the alpha_2 → alpha_3 map.
    Returns None if no mapping is found.
    """
    # Drop script variant (e.g. sr@latin → sr)
    lang_code = lang_code.split("@")[0]
    # Drop country suffix (e.g. zh_CN → zh, pt_BR → pt)
    base = lang_code.split("_")[0]
    return lang_map.get(base)


# ---------------------------------------------------------------------------
# PO file parsing
# ---------------------------------------------------------------------------

def _po_unescape(s):
    """Remove surrounding quotes and unescape a PO string fragment."""
    s = s.strip()
    if s.startswith('"'):
        s = s[1:]
    if s.endswith('"'):
        s = s[:-1]
    s = s.replace('\\"', '"').replace("\\n", "\n").replace("\\t", "\t")
    return s


def parse_po(path):
    """Parse a .po file and return {msgid: msgstr} for non-empty translations."""
    result = {}
    msgid = None
    msgstr = None
    in_msgid = False
    in_msgstr = False

    with open(path, encoding="utf-8") as f:
        lines = f.readlines()

    for line in lines:
        line = line.rstrip("\n")

        if line.startswith('msgid "'):
            msgid = _po_unescape(line[6:])
            in_msgid = True
            in_msgstr = False
            msgstr = None

        elif line.startswith('msgstr "'):
            msgstr = _po_unescape(line[7:])
            in_msgstr = True
            in_msgid = False

        elif line.startswith('"'):
            if in_msgid:
                msgid += _po_unescape(line)
            elif in_msgstr:
                msgstr += _po_unescape(line)

        else:
            # Blank line or comment — flush current entry
            if msgid and msgstr:
                result[msgid] = msgstr
            if not line.strip() or line.startswith("#"):
                if not line.strip():
                    msgid = None
                    msgstr = None
                    in_msgid = False
                    in_msgstr = False

    # Flush last entry
    if msgid and msgstr:
        result[msgid] = msgstr

    # Remove header (empty msgid)
    result.pop("", None)
    return result


def load_translations(po_dir, lang_map):
    """Load all .po files from po_dir and return {lang_gid: {msgid: msgstr}}.

    Skips files whose language code cannot be mapped to an ISO_639_3 GID.
    """
    result = {}
    po_dir = Path(po_dir)
    if not po_dir.exists():
        return result

    for po_file in sorted(po_dir.glob("*.po")):
        lang_code = po_file.stem
        lang_gid = po_lang_to_gid(lang_code, lang_map)
        if not lang_gid:
            continue
        translations = parse_po(po_file)
        if translations:
            # Merge: first file wins for a given language (avoids zh_CN / zh_TW collision)
            if lang_gid not in result:
                result[lang_gid] = translations

    return result


# ---------------------------------------------------------------------------
# Title building
# ---------------------------------------------------------------------------

def get_titles(eng_name, translations, common_name=None):
    """Build the _info._title multilingual dict for a term.

    Uses common_name as the canonical English display name when provided.
    Searches translations by both eng_name and common_name as msgid.
    """
    display = common_name or eng_name
    titles = {"ISO_639_3_eng": display}

    for lang_gid, msgdict in translations.items():
        t = msgdict.get(eng_name)
        if t is None and common_name:
            t = msgdict.get(common_name)
        if t:
            titles[lang_gid] = t

    return titles


# ---------------------------------------------------------------------------
# Term and edge builders
# ---------------------------------------------------------------------------

def build_term(nid, lid, gid, aid, titles, prop=None, name=None, emoji=None):
    """Build a term document in the standard format."""
    code = {
        "_nid": nid,
        "_lid": lid,
        "_gid": gid,
        "_aid": list(dict.fromkeys(aid)),   # deduplicate, preserve order
    }
    if name:
        code["_name"] = name
    if emoji:
        code["_emoji"] = emoji

    term = {
        "_code": code,
        "_info": {"_title": titles},
    }
    if prop:
        term["_prop"] = prop

    return term


def build_enum_edge(from_gid, to_gid):
    """Build a _predicate_enum-of edge document."""
    return {
        "_from": f"terms/{from_gid}",
        "_predicate": "_predicate_enum-of",
        "_to": f"terms/{to_gid}",
        "_path": [f"terms/{to_gid}"],
        "_path_data": {},
    }


def build_edge(from_gid, predicate, to_gid, path_gids=None):
    """Build an edge document with an explicit predicate and path.

    path_gids: list of GIDs for _path; defaults to [to_gid].
    """
    if path_gids is None:
        path_gids = [to_gid]
    return {
        "_from": f"terms/{from_gid}",
        "_predicate": predicate,
        "_to": f"terms/{to_gid}",
        "_path": [f"terms/{g}" for g in path_gids],
        "_path_data": {},
    }


# ---------------------------------------------------------------------------
# JSON output
# ---------------------------------------------------------------------------

def write_json(path, data):
    """Write data as a pretty-printed JSON array with a trailing newline."""
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=4, ensure_ascii=False)
        f.write("\n")
    print(f"  → {path.relative_to(REPO_ROOT)}  ({len(data)} entries)")
