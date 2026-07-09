#!/usr/bin/env bash
# Sestaví samostatný dokumentační web docs.plenia.cz z jednoho zdroje pravdy.
#
# Obsah Plenia stránek žije POUZE v docs/portal/plenia/ (single source of truth,
# builduje se i do docs.scriptormed.com). Tento skript je zkopíruje do docs-plenia/
# (generovaný, gitignored), přepíše odkazy vedoucí mimo Plenia sekci a spustí
# mkdocs build s mkdocs-plenia.yml.
#
# Lokálně:            MKDOCS=.venv/bin/mkdocs bash build-plenia.sh
# Cloudflare Pages:   build command "bash build-plenia.sh", output "site-plenia"
set -euo pipefail
cd "$(dirname "$0")"

MKDOCS="${MKDOCS:-mkdocs}"
SRC="docs/portal/plenia"
DST="docs-plenia"

rm -rf "$DST"
mkdir -p "$DST/assets/css" "$DST/assets/images"

# 1) Plenia stránky (jediný zdroj obsahu)
cp "$SRC"/*.md "$DST/"

# 2) Stránky specifické pro plenia web (kontakt apod.)
cp plenia-src/*.md "$DST/"

# 3) Sdílené assets (brand CSS, loga)
cp docs/assets/css/temvara.css "$DST/assets/css/"
cp docs/assets/images/favicon.png "$DST/assets/images/" 2>/dev/null || true

# 4) Odkazy vedoucí ven z Plenia sekce -> lokální cíle na plochém webu
for f in "$DST"/*.md; do
  sed -i.bak 's|\.\./\.\./kontakt\.md|kontakt.md|g' "$f"
  rm -f "$f.bak"
done

"$MKDOCS" build -f mkdocs-plenia.yml --strict
echo "OK: site-plenia/ sestaven."
