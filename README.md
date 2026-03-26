# ScriptorMed Dokumentace

Uživatelská dokumentace pro [ScriptorMed](https://www.scriptormed.com) — AI-asistovaná klinická dokumentace.

Postaveno na [MkDocs Material](https://squidfunk.github.io/mkdocs-material/). Deployováno na [Cloudflare Pages](https://pages.cloudflare.com/).

## Lokální vývoj

```bash
# Nainstalovat závislosti
pip install -r requirements.txt

# Spustit dev server
mkdocs serve

# Otevřít http://127.0.0.1:8000
```

## Build

```bash
mkdocs build
# Výstup v site/
```

## Deploy na Cloudflare Pages

### Nastavení v Cloudflare Dashboard

1. Pages → Create → Connect to Git → vybrat `scriptormed-docs`
2. Build settings:
   - **Build command:** `pip install -r requirements.txt && mkdocs build`
   - **Build output directory:** `site`
   - **Root directory:** `/`
3. Custom domain: `docs.scriptormed.com`

### Automatický deploy

Každý push do `main` větve automaticky spustí build a deploy.

## Struktura

```
scriptormed-docs/
├── mkdocs.yml              # Konfigurace MkDocs
├── requirements.txt        # Python závislosti
├── docs/
│   ├── index.md            # Úvodní stránka
│   ├── faq.md              # Řešení problémů
│   ├── kontakt.md          # Kontakt a podpora
│   ├── desktop/
│   │   ├── index.md        # Desktop přehled
│   │   ├── instalace.md    # Instalace Win/Mac
│   │   ├── prvni-spusteni.md
│   │   ├── nahravani.md    # Nahrávání konzultací
│   │   ├── klinicka-zprava.md
│   │   ├── nastaveni.md    # Nastavení aplikace
│   │   └── aktualizace.md
│   ├── portal/
│   │   ├── index.md        # Portál přehled
│   │   ├── registrace.md
│   │   ├── predplatne.md   # Plány a fakturace
│   │   └── licencni-klice.md
│   └── assets/
│       ├── css/
│       │   └── temvara.css # Brand styling
│       └── images/
│           ├── logo_light.png
│           └── logo_dark.png
└── overrides/
    └── partials/           # MkDocs template overrides
```

## Konvence

- Jazyk: čeština (celá dokumentace)
- Soubory: kebab-case (`prvni-spusteni.md`)
- Obrázky: `docs/assets/images/`
- Admonitions: `tip` (teal), `warning` (žlutá), `info` (modrá), `question` (FAQ)
- Step bloky: custom HTML s třídou `.step` + `.step-number`

## Branding

Barvy a typografie dle Temvara Brand Book v2:
- Navy: `#173B6C`
- Teal: `#1497A3`
- Slate: `#5B6472`
- Font: Plus Jakarta Sans
