# TASKS: Docs portál — úpravy pro FR-017 (in-app help deep linky)

> **Repo:** `scriptormed-docs`
> **Závislost:** FR-017 (desktop in-app help — TASKS-desktop-FR017-in-app-help.md)
> **Účel:** Sladit docs strukturu s deep linky z desktop tooltipů

---

## Analýza: Co existuje vs co desktop potřebuje

### Nesoulady (5 kategorií)

#### 1. URL cesta neexistuje

| helpContent.js čeká | Reálná docs cesta | Problém |
|---------------------|--------------------|---------|
| `/desktop/zprava/` | `/desktop/klinicka-zprava/` | Jiný filename |
| `/desktop/historie/` | NEEXISTUJE | Žádný soubor |
| `/desktop/reseni-problemu/` | `/faq/` | Jiná cesta (root vs desktop/) |
| `/portal/billing/` | `/portal/predplatne/` | Jiný filename |

#### 2. Anchor ID neexistuje

| helpContent.js čeká | Reálný heading v docs | Auto-slug |
|---------------------|-----------------------|-----------|
| `nahravani/#oznaceni-pacienta` | Žádný heading | — |
| `nahravani/#jak-nahravat` | `## Postup nahrávání` | `#postup-nahravani` |
| `nahravani/#kontrola-mikrofonu` | Žádný heading | — |
| `historie/#stavy-konzultaci` | `nahravani.md: ## Stavy zpracování` | `#stavy-zpracovani` |
| `nastaveni/#licencni-klic` | `## Informace o licenci` | `#informace-o-licenci` |
| `nastaveni/#ukladani-dat` | Žádný heading | — |
| `nastaveni/#test-pripojeni` | Žádný heading | — |
| `billing/#cerpani` | `predplatne.md: ## Jak funguje čerpání` | `#jak-funguje-cerpani` |
| `billing/#tarify` | `predplatne.md: ## Plány` | `#plany` |

#### 3. Anchor ID odpovídá ✅

| helpContent.js čeká | Reálný heading | Auto-slug |
|---------------------|----------------|-----------|
| `nastaveni/#pripojeni-k-serveru` | `## Připojení k serveru` | `#pripojeni-k-serveru` ✅ |
| `zprava/#uprava-zpravy` | `klinicka-zprava.md: ## Úprava zprávy` | `#uprava-zpravy` ✅ (ale špatná URL cesta) |
| `/faq/` | `faq.md` existuje | ✅ |

---

## Řešení: dvoustranná synchronizace

Úpravy na **obou stranách** — docs i helpContent.js. Princip:
- Docs je autoritativní zdroj (je publikovaný, může mít SEO linky)
- helpContent.js se přizpůsobí reálným URL
- Docs přidá explicitní anchor ID `{#xxx}` pro čistší deep linky tam, kde to dává smysl
- Docs doplní chybějící obsah (nové sekce, ne nové stránky)

---

## ČÁST A: Úpravy v `scriptormed-docs`

### A1. Přidat explicitní anchor aliasy

Docs už používá `attr_list` extension (viz mkdocs.yml). Přidat `{#id}` 
k headingům, na které odkazují tooltipy. Tím získáme stabilní anchor ID
nezávislé na přesném znění nadpisu.

#### `docs/desktop/nahravani.md`

Přidat 3 nové sekce/anchor aliasy:

```markdown
## Postup nahrávání { #jak-nahravat }

(existující obsah zůstává)
```

Přidat novou podsekci po "Postup nahrávání" (nebo do ní):

```markdown
### Označení pacienta { #oznaceni-pacienta }

Před zahájením nahrávání můžete zadat **označení pacienta** — libovolný
text pro vaši orientaci v historii konzultací (např. iniciály, číslo
karty nebo krátká poznámka).

!!! info "Soukromí"
    Označení pacienta slouží pouze pro vaši lokální orientaci.
    **Neposílá se na server**, neobjevuje se v klinické zprávě
    a nezanechává žádnou stopu mimo váš počítač.
```

Přidat novou podsekci do "Tipy pro kvalitní nahrávku" nebo jako samostatnou sekci:

```markdown
### Kontrola mikrofonu { #kontrola-mikrofonu }

Během nahrávání se v aplikaci zobrazuje **ukazatel úrovně zvuku**
(level meter):

- **Zelená** — signál je v pořádku, systém snímá řeč.
- **Šedá / žádný pohyb** — mikrofon nesnímá zvuk.

Pokud ukazatel nereaguje:

1. Zkontrolujte, zda je mikrofon připojen (USB / Bluetooth).
2. V **Nastavení** ověřte vybraný mikrofon.
3. Zkuste tlačítko **Test mikrofonu** v Nastavení.
4. V systémovém nastavení Windows ověřte oprávnění k mikrofonu.

Více viz [Řešení problémů — Mikrofon](../faq.md#mikrofon).
```

Přidat anchor alias na existující sekci "Stavy zpracování":

```markdown
## Stavy zpracování { #stavy-konzultaci }

(existující obsah zůstává — popisuje stavy: zpracovává se, dokončeno, chyba)
```

**Shrnutí změn v nahravani.md:**

| Změna | Typ |
|-------|-----|
| `## Postup nahrávání` → `## Postup nahrávání { #jak-nahravat }` | Anchor alias |
| Nová podsekce `### Označení pacienta { #oznaceni-pacienta }` | Nový obsah |
| Nová podsekce `### Kontrola mikrofonu { #kontrola-mikrofonu }` | Nový obsah |
| `## Stavy zpracování` → `## Stavy zpracování { #stavy-konzultaci }` | Anchor alias |

---

#### `docs/desktop/klinicka-zprava.md`

Přidat anchor alias pro AI sekci:

```markdown
## Část 2 — Návrhy umělé inteligence { #ai-navrhy }

(existující obsah zůstává)
```

`## Úprava zprávy` → auto-slug je `#uprava-zpravy` — to sedí, ale pro jistotu
přidat explicitní:

```markdown
## Úprava zprávy { #uprava-zpravy }
```

**Shrnutí změn v klinicka-zprava.md:**

| Změna | Typ |
|-------|-----|
| `## Část 2 — Návrhy umělé inteligence` → `+ { #ai-navrhy }` | Anchor alias |
| `## Úprava zprávy` → `+ { #uprava-zpravy }` | Explicitní anchor (pojistka) |

---

#### `docs/desktop/nastaveni.md`

Přidat anchor alias + nové sekce:

```markdown
## Připojení k serveru { #pripojeni-k-serveru }

(existující obsah — auto-slug už sedí, ale přidat explicitní pro jistotu)
```

```markdown
## Informace o licenci { #licencni-klic }

(existující obsah zůstává — anchor alias "licencni-klic" pro tooltip)
```

Přidat novou podsekci:

```markdown
### Test připojení { #test-pripojeni }

Tlačítko **Test připojení** ověří:

1. Dostupnost serveru ScriptorMed.
2. Platnost vašeho licenčního klíče.
3. Přiřazení klíče k tomuto zařízení.

Pokud test selže, zkontrolujte:

- Internetové připojení.
- Správnost API adresy (výchozí hodnota je přednastavena).
- Platnost licenčního klíče (obdrželi jste ho e-mailem při registraci).

Více viz [Řešení problémů — Připojení](../faq.md#pripojeni-a-prihlaseni).
```

Přidat novou podsekci:

```markdown
### Ukládání dat { #ukladani-dat }

ScriptorMed ukládá audio nahrávky lokálně na váš počítač. Nastavení
**Uchovávat lokální data** určuje, po kolika dnech se lokální audio
soubory automaticky smažou.

!!! info "Zprávy na serveru zůstávají"
    Automatické mazání se týká pouze lokálních audio souborů.
    Vygenerované klinické zprávy zůstávají bezpečně uložené
    na serveru a jsou přístupné z historie konzultací.

Aktuální využití disku vidíte v sekci **Využití disku** v nastavení.
```

**Shrnutí změn v nastaveni.md:**

| Změna | Typ |
|-------|-----|
| `## Připojení k serveru` → `+ { #pripojeni-k-serveru }` | Explicitní anchor |
| `## Informace o licenci` → `+ { #licencni-klic }` | Anchor alias |
| Nová podsekce `### Test připojení { #test-pripojeni }` | Nový obsah |
| Nová podsekce `### Ukládání dat { #ukladani-dat }` | Nový obsah |

---

#### `docs/portal/predplatne.md`

Přidat anchor aliasy:

```markdown
## Jak funguje čerpání { #cerpani }

(existující obsah zůstává)
```

```markdown
## Plány { #tarify }

(existující obsah zůstává — tabulka plánů)
```

**Shrnutí změn v predplatne.md:**

| Změna | Typ |
|-------|-----|
| `## Jak funguje čerpání` → `+ { #cerpani }` | Anchor alias |
| `## Plány` → `+ { #tarify }` | Anchor alias |

---

### A2. ŽÁDNÉ nové soubory nebo změny v nav

Docs struktura je dobrá — neměnit nav ani nepřidávat soubory.
Místo toho se přizpůsobí helpContent.js (viz Část B).

---

## ČÁST B: Úpravy v `helpContent.js` (desktop repo)

Aktualizovat URL v helpContent.js aby odpovídaly reálné docs struktuře.

### Mapování: PŘEDTÍM → POTOM

```javascript
// ═══════════════════════════════════════════
// OPRAVY URL — přizpůsobit reálné docs struktuře
// ═══════════════════════════════════════════

const DOCS_BASE = 'https://docs.scriptormed.com';

// RecordPage
'record.patientLabel': {
  // PŘED: `${DOCS_BASE}/desktop/nahravani/#oznaceni-pacienta`
  // PO:   beze změny — docs přidá anchor { #oznaceni-pacienta }
  docsUrl: `${DOCS_BASE}/desktop/nahravani/#oznaceni-pacienta`,  // ✅ OK po docs úpravě
},
'record.recordButton': {
  // PŘED: `${DOCS_BASE}/desktop/nahravani/#jak-nahravat`
  // PO:   beze změny — docs přidá anchor alias na "Postup nahrávání"
  docsUrl: `${DOCS_BASE}/desktop/nahravani/#jak-nahravat`,  // ✅ OK po docs úpravě
},
'record.levelMeter': {
  // PŘED: `${DOCS_BASE}/desktop/nahravani/#kontrola-mikrofonu`
  // PO:   beze změny — docs přidá novou sekci
  docsUrl: `${DOCS_BASE}/desktop/nahravani/#kontrola-mikrofonu`,  // ✅ OK po docs úpravě
},

// HistoryPage
'history.statusBadge': {
  // PŘED: `${DOCS_BASE}/desktop/historie/#stavy-konzultaci`
  // PO:   ⚠️ ZMĚNA URL — historie neexistuje, stavy jsou v nahravani.md
  docsUrl: `${DOCS_BASE}/desktop/nahravani/#stavy-konzultaci`,  // ← OPRAVIT
},
'history.list': {
  // PŘED: `${DOCS_BASE}/desktop/historie/`
  // PO:   ⚠️ ZMĚNA URL — historie neexistuje, odkázat na nahravani
  docsUrl: `${DOCS_BASE}/desktop/nahravani/#stavy-konzultaci`,  // ← OPRAVIT
},

// SoapDetailPage
'detail.noteText': {
  // PŘED: `${DOCS_BASE}/desktop/zprava/#uprava-zpravy`
  // PO:   ⚠️ ZMĚNA URL — soubor je klinicka-zprava.md
  docsUrl: `${DOCS_BASE}/desktop/klinicka-zprava/#uprava-zpravy`,  // ← OPRAVIT
},
'detail.llmSection': {
  // PŘED: `${DOCS_BASE}/desktop/zprava/#ai-navrhy`
  // PO:   ⚠️ ZMĚNA URL
  docsUrl: `${DOCS_BASE}/desktop/klinicka-zprava/#ai-navrhy`,  // ← OPRAVIT
},

// SettingsPage — většina OK
'settings.apiUrl': {
  docsUrl: `${DOCS_BASE}/desktop/nastaveni/#pripojeni-k-serveru`,  // ✅ OK
},
'settings.apiKey': {
  docsUrl: `${DOCS_BASE}/desktop/nastaveni/#licencni-klic`,  // ✅ OK po docs úpravě
},
'settings.keepDays': {
  docsUrl: `${DOCS_BASE}/desktop/nastaveni/#ukladani-dat`,  // ✅ OK po docs úpravě
},
'settings.testConnection': {
  docsUrl: `${DOCS_BASE}/desktop/nastaveni/#test-pripojeni`,  // ✅ OK po docs úpravě
},

// BillingStatusBar
'billing.remainingConsultations': {
  // PŘED: `${DOCS_BASE}/portal/billing/#cerpani`
  // PO:   ⚠️ ZMĚNA URL — soubor je predplatne.md
  docsUrl: `${DOCS_BASE}/portal/predplatne/#cerpani`,  // ← OPRAVIT
},
'billing.planName': {
  // PŘED: `${DOCS_BASE}/portal/billing/#tarify`
  // PO:   ⚠️ ZMĚNA URL
  docsUrl: `${DOCS_BASE}/portal/predplatne/#tarify`,  // ← OPRAVIT
},

// DOCS_URLS objekt — kompletní opravy
export const DOCS_URLS = {
  home:             `${DOCS_BASE}`,
  desktop:          `${DOCS_BASE}/desktop/`,
  recording:        `${DOCS_BASE}/desktop/nahravani/`,
  report:           `${DOCS_BASE}/desktop/klinicka-zprava/`,   // ← OPRAVIT (bylo zprava)
  settings:         `${DOCS_BASE}/desktop/nastaveni/`,
  history:          `${DOCS_BASE}/desktop/nahravani/#stavy-konzultaci`, // ← OPRAVIT (není vlastní stránka)
  troubleshooting:  `${DOCS_BASE}/faq/`,                       // ← OPRAVIT (bylo desktop/reseni-problemu)
  portal:           `${DOCS_BASE}/portal/`,
  billing:          `${DOCS_BASE}/portal/predplatne/`,          // ← OPRAVIT (bylo portal/billing)
  faq:              `${DOCS_BASE}/faq/`,                        // ✅ OK
};
```

---

## ČÁST C: Ověření po implementaci

### C1. Build a lokální náhled docs

```bash
cd ~/Projects/scriptormed/scriptormed-docs

# Install dependencies (pokud ještě ne)
pip install mkdocs-material mkdocs-minify-plugin

# Lokální náhled
mkdocs serve

# Otevřít http://127.0.0.1:8000 a ověřit:
```

### C2. Checklist anchor ID

Otevřít v prohlížeči a ověřit že každý anchor existuje:

```
http://127.0.0.1:8000/desktop/nahravani/#jak-nahravat          → scrollne na "Postup nahrávání"
http://127.0.0.1:8000/desktop/nahravani/#oznaceni-pacienta     → scrollne na "Označení pacienta"
http://127.0.0.1:8000/desktop/nahravani/#kontrola-mikrofonu    → scrollne na "Kontrola mikrofonu"
http://127.0.0.1:8000/desktop/nahravani/#stavy-konzultaci      → scrollne na "Stavy zpracování"
http://127.0.0.1:8000/desktop/klinicka-zprava/#uprava-zpravy   → scrollne na "Úprava zprávy"
http://127.0.0.1:8000/desktop/klinicka-zprava/#ai-navrhy       → scrollne na "Návrhy AI"
http://127.0.0.1:8000/desktop/nastaveni/#pripojeni-k-serveru   → scrollne na "Připojení k serveru"
http://127.0.0.1:8000/desktop/nastaveni/#licencni-klic         → scrollne na "Informace o licenci"
http://127.0.0.1:8000/desktop/nastaveni/#ukladani-dat          → scrollne na "Ukládání dat"
http://127.0.0.1:8000/desktop/nastaveni/#test-pripojeni        → scrollne na "Test připojení"
http://127.0.0.1:8000/portal/predplatne/#cerpani               → scrollne na "Jak funguje čerpání"
http://127.0.0.1:8000/portal/predplatne/#tarify                → scrollne na "Plány"
http://127.0.0.1:8000/faq/                                     → FAQ stránka
```

### C3. Automatický test (volitelné)

```bash
# Po buildu ověřit anchor ID v HTML výstupu:
mkdocs build

# Zkontrolovat že anchor ID existují v HTML:
for anchor in jak-nahravat oznaceni-pacienta kontrola-mikrofonu stavy-konzultaci; do
  grep -l "id=\"$anchor\"" site/desktop/nahravani/index.html && echo "✅ $anchor" || echo "❌ $anchor CHYBÍ"
done

for anchor in uprava-zpravy ai-navrhy; do
  grep -l "id=\"$anchor\"" site/desktop/klinicka-zprava/index.html && echo "✅ $anchor" || echo "❌ $anchor CHYBÍ"
done

for anchor in pripojeni-k-serveru licencni-klic ukladani-dat test-pripojeni; do
  grep -l "id=\"$anchor\"" site/desktop/nastaveni/index.html && echo "✅ $anchor" || echo "❌ $anchor CHYBÍ"
done

for anchor in cerpani tarify; do
  grep -l "id=\"$anchor\"" site/portal/predplatne/index.html && echo "✅ $anchor" || echo "❌ $anchor CHYBÍ"
done
```

---

## Pořadí implementace

```
1. DOCS REPO — přidat anchor aliasy + nové sekce (Část A)
   ↓ commit: "docs: add anchor IDs and sections for desktop in-app help (FR-017)"
   ↓ push → Cloudflare Pages auto-deploy
   ↓
2. Ověřit živé anchory na docs.scriptormed.com (Část C)
   ↓
3. DESKTOP REPO — implementovat FR-017 s opravenými URL (Část B + TASKS-desktop-FR017)
   ↓ helpContent.js URL odpovídají reálným docs cestám
   ↓
4. End-to-end test: desktop tooltip → klik docs link → prohlížeč otevře správnou sekci
```

**Docs repo jde PRVNÍ** — desktop agent potřebuje funkční URL k testování.

---

## Shrnutí změn v docs repo

| Soubor | Anchor aliasy (existující heading) | Nové sekce |
|--------|------------------------------------|------------|
| `desktop/nahravani.md` | `{ #jak-nahravat }`, `{ #stavy-konzultaci }` | Označení pacienta, Kontrola mikrofonu |
| `desktop/klinicka-zprava.md` | `{ #ai-navrhy }`, `{ #uprava-zpravy }` | — |
| `desktop/nastaveni.md` | `{ #pripojeni-k-serveru }`, `{ #licencni-klic }` | Test připojení, Ukládání dat |
| `portal/predplatne.md` | `{ #cerpani }`, `{ #tarify }` | — |

**Celkem:** 8 anchor aliasů na existující headingy + 4 nové obsahové sekce.
Žádné nové soubory, žádné změny v nav.
