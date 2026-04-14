#!/usr/bin/env python3
"""
add_wikidata_uris.py — Patch ISO term JSON files with Wikidata entity URIs.

For each ISO standard, queries the Wikidata SPARQL endpoint using the
appropriate property, builds a {code → wikidata_uri} mapping, then
adds _uri inside the _code section of every matching term.

Also re-indents all patched files with tabs (replacing the 4-space indentation
used by the original import scripts).

Run from anywhere inside the repository:

    python workflows/import/add_wikidata_uris.py

Optional flags:
    --dry-run   Print what would be changed without writing files.
    --only 639  Only process standards whose name contains the given string
                (case-insensitive). May be repeated.

Examples:
    python workflows/import/add_wikidata_uris.py --only 3166-1 --only 4217
    python workflows/import/add_wikidata_uris.py --dry-run
"""

import json
import sys
import time
import urllib.request
import urllib.parse
from pathlib import Path

# ── Repository root ──────────────────────────────────────────────────────────

def find_repo_root() -> Path:
	here = Path(__file__).resolve().parent
	for p in [here] + list(here.parents):
		if (p / ".git").exists():
			return p
	raise RuntimeError("Could not find repository root (.git not found)")

REPO = find_repo_root()
DATA_ISO = REPO / "data" / "ISO"

# ── Wikidata SPARQL ──────────────────────────────────────────────────────────

SPARQL_ENDPOINT = "https://query.wikidata.org/sparql"
USER_AGENT = "metadata-store/1.0 (github.com/milko/metadata-store; add_wikidata_uris.py)"


def query_wikidata(sparql: str) -> dict:
	"""Execute a SPARQL query against Wikidata and return the parsed JSON."""
	params = urllib.parse.urlencode({"query": sparql, "format": "json"})
	url = f"{SPARQL_ENDPOINT}?{params}"
	req = urllib.request.Request(
		url,
		headers={
			"User-Agent": USER_AGENT,
			"Accept": "application/sparql-results+json",
		},
	)
	with urllib.request.urlopen(req, timeout=120) as resp:
		return json.loads(resp.read())


def fetch_mapping(prop: str) -> dict[str, str]:
	"""
	Return {code: wikidata_uri} for all Wikidata items that carry the
	given property.  When multiple items share a code, the one with the
	lowest Q-number wins (most likely to be the canonical entity).
	"""
	sparql = f"""
SELECT ?item ?code WHERE {{
  ?item wdt:{prop} ?code .
}}
"""
	print(f"    Querying Wikidata P{prop.lstrip('P')}...", end=" ", flush=True)
	result = query_wikidata(sparql)

	mapping: dict[str, str] = {}
	for row in result["results"]["bindings"]:
		code = row["code"]["value"]
		uri  = row["item"]["value"]
		# Only keep items with a numeric Q-identifier
		if "/Q" not in uri:
			continue
		# Normalise to https (SPARQL endpoint returns http://)
		uri = uri.replace("http://www.wikidata.org/", "https://www.wikidata.org/", 1)
		if code not in mapping:
			mapping[code] = uri
		else:
			# Prefer the lower Q-number
			try:
				existing_q = int(mapping[code].rsplit("/Q", 1)[1])
				new_q      = int(uri.rsplit("/Q", 1)[1])
				if new_q < existing_q:
					mapping[code] = uri
			except (ValueError, IndexError):
				pass

	print(f"{len(mapping):,} entries")
	return mapping

# ── JSON patching ────────────────────────────────────────────────────────────

def patch_file(
	path: Path,
	mapping: dict[str, str],
	dry_run: bool = False,
	match_prop: str | None = None,
) -> tuple[int, int]:
	"""
	Add _uri to every term in *path* whose lookup key appears in *mapping*.

	By default the lookup key is _code._lid.  When *match_prop* is given
	(e.g. "ISO_3166_alpha3"), the key is taken from _prop[match_prop] instead.

	Writes the file back with tab indentation.
	Returns (matched, total).
	"""
	with open(path, encoding="utf-8") as f:
		terms = json.load(f)

	matched = 0
	for term in terms:
		code = term.get("_code", {})
		if match_prop:
			key = term.get("_prop", {}).get(match_prop)
		else:
			key = code.get("_lid")
		if key and key in mapping and "_uri" not in code:
			code["_uri"] = mapping[key]
			matched += 1

	if not dry_run:
		with open(path, "w", encoding="utf-8") as f:
			json.dump(terms, f, indent="\t", ensure_ascii=False)
			f.write("\n")

	return matched, len(terms)

# ── Standard definitions ─────────────────────────────────────────────────────
#
# prop:  Wikidata property whose value is the same code as the term's _lid.
# file:  Path to the JSON term file to patch.
# name:  Human-readable label (used for --only filtering).
#
STANDARDS = [
	{
		"name": "ISO 3166-1 (countries, alpha-3)",
		"prop": "P298",
		"file": DATA_ISO / "3166" / "iso_3166_1.json",
	},
	{
		"name": "ISO 3166-3 (former countries, alpha-4)",
		# Wikidata P298 stores the alpha-3 code (e.g. "AFI") which is in
		# _prop.ISO_3166_alpha3, not in _lid (which is the alpha-4 code).
		"prop": "P298",
		"file": DATA_ISO / "3166" / "iso_3166_3.json",
		"match_prop": "ISO_3166_alpha3",
	},
	{
		"name": "ISO 3166-2 (country subdivisions)",
		"prop": "P300",
		"file": DATA_ISO / "3166" / "iso_3166_2.json",
	},
	{
		"name": "ISO 639-3 (individual languages)",
		"prop": "P220",
		"file": DATA_ISO / "639" / "iso_639_3.json",
	},
	{
		"name": "ISO 639-5 (language families)",
		"prop": "P1798",
		"file": DATA_ISO / "639" / "iso_639_5.json",
	},
	{
		"name": "ISO 4217 (currencies)",
		"prop": "P498",
		"file": DATA_ISO / "4217" / "iso_4217.json",
	},
	{
		"name": "ISO 15924 (scripts)",
		"prop": "P506",
		"file": DATA_ISO / "15924" / "iso_15924.json",
	},
]

# ── Entry point ──────────────────────────────────────────────────────────────

def main() -> None:
	args = sys.argv[1:]
	dry_run = "--dry-run" in args
	only_filters: list[str] = []
	i = 0
	while i < len(args):
		if args[i] == "--only" and i + 1 < len(args):
			only_filters.append(args[i + 1].lower())
			i += 2
		else:
			i += 1

	label = "DRY RUN — " if dry_run else ""
	print(f"add_wikidata_uris — {label}Adding Wikidata URIs to ISO term files\n")

	total_matched = 0
	total_terms   = 0

	for std in STANDARDS:
		name = std["name"]
		if only_filters and not any(f in name.lower() for f in only_filters):
			continue

		print(f"  {name}:")

		if not std["file"].exists():
			print(f"    SKIP — file not found: {std['file'].relative_to(REPO)}")
			continue

		try:
			mapping = fetch_mapping(std["prop"])
			matched, count = patch_file(
				std["file"], mapping,
				dry_run=dry_run,
				match_prop=std.get("match_prop"),
			)
			rel = std["file"].relative_to(REPO)
			action = "would update" if dry_run else "updated"
			print(f"    {rel}: {action} {matched}/{count} terms")
			total_matched += matched
			total_terms   += count
		except Exception as e:
			print(f"    ERROR: {e}")

		# Be polite to the Wikidata SPARQL endpoint
		time.sleep(2)

	print(f"\nTotal: {total_matched:,} URIs added across {total_terms:,} terms.")
	if dry_run:
		print("(dry run — no files written)")


if __name__ == "__main__":
	main()
