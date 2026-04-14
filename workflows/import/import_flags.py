"""Import country flag SVGs from vendor/flag-icons into data/blob.json and
patch country-flag_landscape / country-flag_square handles into
data/ISO/3166/iso_3166_1.json.

Blob document structure:
    {
        "_key":             MD5("flag/_text_SVG/<kind>/<alpha2>"),
        "_blob_item":       "flag",
        "_blob_type":       "_text_SVG",
        "_blob_kind":       "_media_landscape" | "_media_square",
        "_blob_identifier": "<alpha2_lowercase>",
        "_blob_content":    "<svg>…</svg>"
    }

Country term _prop additions:
    "country-flag_landscape": "blob/<key_4x3>",
    "country-flag_square":    "blob/<key_1x1>"

The _key is derived as:
    LOWER(MD5(item + "/" + type + "/" + kind + "/" + identifier))
using the stored field values for consistent, deterministic key generation.

Only flags that correspond to an ISO 3166-1 country term are processed.
"""

import hashlib
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from utils import REPO_ROOT, DATA_ISO, FLAG_ICONS, write_json

BLOB_FILE   = REPO_ROOT / "data" / "blob.json"
TERMS_FILE  = DATA_ISO / "3166" / "iso_3166_1.json"
FLAGS_4x3   = FLAG_ICONS / "flags" / "4x3"
FLAGS_1x1   = FLAG_ICONS / "flags" / "1x1"

BLOB_COLLECTION = "blob"
ITEM       = "flag"
TYPE       = "_text_SVG"
KIND_4x3   = "_media_landscape"
KIND_1x1   = "_media_square"


def blob_key(item: str, blob_type: str, kind: str, identifier: str) -> str:
    """Compute the blob document _key as MD5 of the four composite fields."""
    raw = f"{item}/{blob_type}/{kind}/{identifier}"
    return hashlib.md5(raw.encode()).hexdigest()


def blob_handle(key: str) -> str:
    return f"{BLOB_COLLECTION}/{key}"


def read_svg(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def main():
    print("Flag import — vendor/flag-icons → data/blob.json")

    # Load existing country terms
    with open(TERMS_FILE, encoding="utf-8") as f:
        terms = json.load(f)

    # Build alpha-2 (lowercase) → term index map
    alpha2_to_idx = {}
    for i, term in enumerate(terms):
        a2 = term.get("_prop", {}).get("ISO_3166_alpha2", "")
        if a2:
            alpha2_to_idx[a2.lower()] = i

    print(f"  Country terms loaded: {len(terms)}")
    print(f"  Alpha-2 index entries: {len(alpha2_to_idx)}")

    # Load existing blobs (preserve any non-flag blobs from previous runs)
    existing_blobs: list[dict] = []
    if BLOB_FILE.exists():
        with open(BLOB_FILE, encoding="utf-8") as f:
            existing_blobs = json.load(f)
        print(f"  Existing blobs loaded: {len(existing_blobs)}")

    # Index existing blobs by _key for deduplication
    blob_index: dict[str, dict] = {b["_key"]: b for b in existing_blobs}

    matched = 0
    skipped = 0

    for alpha2_lower, idx in sorted(alpha2_to_idx.items()):
        svg_4x3 = FLAGS_4x3 / f"{alpha2_lower}.svg"
        svg_1x1 = FLAGS_1x1 / f"{alpha2_lower}.svg"

        if not svg_4x3.exists() or not svg_1x1.exists():
            print(f"  ⚠ Missing flag file(s) for {alpha2_lower!r} — skipping")
            skipped += 1
            continue

        key_4x3 = blob_key(ITEM, TYPE, KIND_4x3, alpha2_lower)
        key_1x1 = blob_key(ITEM, TYPE, KIND_1x1, alpha2_lower)

        blob_index[key_4x3] = {
            "_key":             key_4x3,
            "_blob_item":       ITEM,
            "_blob_type":       TYPE,
            "_blob_kind":       KIND_4x3,
            "_blob_identifier": alpha2_lower,
            "_blob_content":    read_svg(svg_4x3),
        }
        blob_index[key_1x1] = {
            "_key":             key_1x1,
            "_blob_item":       ITEM,
            "_blob_type":       TYPE,
            "_blob_kind":       KIND_1x1,
            "_blob_identifier": alpha2_lower,
            "_blob_content":    read_svg(svg_1x1),
        }

        # Patch handles into country term _prop
        terms[idx].setdefault("_prop", {})
        terms[idx]["_prop"]["country-flag_landscape"] = blob_handle(key_4x3)
        terms[idx]["_prop"]["country-flag_square"]    = blob_handle(key_1x1)

        matched += 1

    print(f"  Flags matched and processed: {matched}")
    if skipped:
        print(f"  Flags skipped (missing file): {skipped}")

    # Write outputs
    blobs_sorted = sorted(blob_index.values(), key=lambda b: (b["_blob_kind"], b["_blob_identifier"]))
    write_json(BLOB_FILE, blobs_sorted)
    write_json(TERMS_FILE, terms)


if __name__ == "__main__":
    main()
