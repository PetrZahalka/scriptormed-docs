# FR-017: Synchronizace docs ↔ helpContent.js — OVĚŘENO Z LIVE DOCS

> Ověřeno přes Chrome na docs.scriptormed.com dne 2026-03-27
> Toto nahrazuje předchozí TASKS-docs-FR017-deep-links.md

---

## Skutečné anchor ID (z Chrome DevTools)

### `/desktop/nahravani/`
| Heading | Skutečné ID |
|---------|-------------|
| Postup nahrávání | `#postup-nahravani` |
| Odeslání nahrávky | `#odeslani-nahravky` |
| Stavy zpracování | `#stavy-zpracovani` |
| Tipy pro kvalitní nahrávku | `#tipy-pro-kvalitni-nahravku` |
| Často kladené otázky | `#casto-kladene-otazky` |

**Chybí:** žádný heading pro "Označení pacienta" ani "Kontrola mikrofonu"
(text o označení existuje v bodě 1 pod "Postup nahrávání", ale nemá vlastní heading)

### `/desktop/klinicka-zprava/`
| Heading | Skutečné ID |
|---------|-------------|
| Část 2 — Návrhy umělé inteligence | `#cast-2-navrhy-umele-inteligence` |
| Úprava zprávy | `#uprava-zpravy` |
| Kopírování do NIS | `#kopirovani-do-nis` |

### `/desktop/nastaveni/`
| Heading | Skutečné ID |
|---------|-------------|
| Připojení k serveru | `#pripojeni-k-serveru` |
| Přizpůsobení výstupu | `#prizpusobeni-vystupu` (explicitní attr_list) |
| Informace o licenci | `#informace-o-licenci` |
| Uvolnění licence | `#uvolneni-licence` (explicitní attr_list) |
| Diagnostický report | `#diagnosticky-report` |

**Chybí:** žádný heading pro "Test připojení" ani "Ukládání dat"

---

## ČÁST A: Úpravy v docs repo (scriptormed-docs)

### Princip
Přidáváme explicitní anchor aliasy `{ #id }` tam, kde tooltip potřebuje
jiné ID než auto-slug. Přidáváme nové podsekce tam, kde obsah chybí.

### A1. `docs/desktop/nahravani.md`

**Změna 1 — Anchor alias na "Postup nahrávání":**
```markdown
## Postup nahrávání { #jak-nahravat }
```
(Tím bude fungovat i `#postup-nahravani` i `#jak-nahravat`)

**Změna 2 — Nový heading pro "Označení pacienta":**
Obsah o označení už existuje v bodě 1 — přidat vlastní heading.
Vložit PŘED krok 1 jako samostatnou podsekci, nebo krok 1 vyčlenit:

```markdown
### Označení pacienta { #oznaceni-pacienta }

Do pole v horní části okna zadejte identifikátor pacienta 
(např. iniciály, číslo karty).

!!! info "Soukromí"
    Označení slouží pouze k vašemu rozlišení konzultací.
    **Neposílá se na server** a neobjevuje se v klinické zprávě.
```

**Změna 3 — Nový heading "Kontrola mikrofonu":**
Vložit za "Tipy pro kvalitní nahrávku" (nebo jako podsekci):

```markdown
### Kontrola mikrofonu { #kontrola-mikrofonu }

Během nahrávání se zobrazuje ukazatel úrovně zvuku (level meter):

- **Zelená** — signál je v pořádku, systém snímá řeč.
- **Šedá / žádný pohyb** — mikrofon nesnímá zvuk.

Pokud ukazatel nereaguje:

1. Zkontrolujte připojení mikrofonu (USB / Bluetooth).
2. V **Nastavení** ověřte vybraný mikrofon.
3. V systémovém nastavení Windows ověřte oprávnění.

Více viz [Řešení problémů — Mikrofon](../faq.md#mikrofon).
```

**Změna 4 — Anchor alias na "Stavy zpracování":**
```markdown
## Stavy zpracování { #stavy-konzultaci }
```
(Pojmenování `stavy-konzultaci` odpovídá kontextu z desktopu — 
tooltip říká "Stav konzultace: ...")

---

### A2. `docs/desktop/klinicka-zprava.md`

**Změna 1 — Anchor alias na AI sekci:**
```markdown
## Část 2 — Návrhy umělé inteligence { #ai-navrhy }
```
(Auto-slug `#cast-2-navrhy-umele-inteligence` je příliš dlouhý pro tooltip URL)

**Změna 2 — Explicitní anchor na "Úprava zprávy" (pojistka):**
```markdown
## Úprava zprávy { #uprava-zpravy }
```
(Auto-slug už sedí, ale explicitní ID je pojistka proti budoucím změnám nadpisu)

---

### A3. `docs/desktop/nastaveni.md`

**Změna 1 — Anchor alias na "Informace o licenci":**
```markdown
## Informace o licenci { #licencni-klic }
```
(Tooltip říká "Váš licenční klíč" — anchor `#licencni-klic` je intuitivnější
pro deep link než `#informace-o-licenci`)

**Změna 2 — Nová podsekce "Test připojení":**
Vložit do sekce "Připojení k serveru" nebo za ni:

```markdown
### Test připojení { #test-pripojeni }

Tlačítko **Test připojení** ověří:

1. Dostupnost serveru ScriptorMed.
2. Platnost vašeho licenčního klíče.
3. Přiřazení klíče k tomuto zařízení.

Pokud test selže, zkontrolujte internetové připojení a správnost 
licenčního klíče. Více viz [Řešení problémů](../faq.md#pripojeni-a-prihlaseni).
```

**Změna 3 — Nová podsekce "Ukládání dat":**
Vložit na vhodné místo (např. za "Diagnostický report"):

```markdown
### Ukládání dat { #ukladani-dat }

ScriptorMed ukládá audio nahrávky lokálně. Nastavení **Uchovávat lokální 
data** určuje, po kolika dnech se lokální audio soubory automaticky smažou.

!!! info "Zprávy na serveru zůstávají"
    Automatické mazání se týká pouze lokálních audio souborů.
    Vygenerované klinické zprávy zůstávají uložené na serveru.
```

---

### A4. `docs/portal/predplatne.md`

**Změna 1 — Anchor alias na "Jak funguje čerpání":**
```markdown
## Jak funguje čerpání { #cerpani }
```

**Změna 2 — Anchor alias na "Plány":**
```markdown
## Plány { #tarify }
```

---

## ČÁST B: Opravy v helpContent.js (desktop repo)

Agent implementoval helpContent.js s předpokládanými URL.
Tyto je potřeba opravit na skutečné docs cesty:

```javascript
// ═══════════ OPRAVY helpContent.js ═══════════

const DOCS_BASE = 'https://docs.scriptormed.com';

// --- TYTO URL JSOU OK (po docs úpravách z Části A) ---
'record.patientLabel':     docsUrl: `${DOCS_BASE}/desktop/nahravani/#oznaceni-pacienta`     // ✅
'record.recordButton':     docsUrl: `${DOCS_BASE}/desktop/nahravani/#jak-nahravat`          // ✅
'record.levelMeter':       docsUrl: `${DOCS_BASE}/desktop/nahravani/#kontrola-mikrofonu`    // ✅
'settings.apiUrl':         docsUrl: `${DOCS_BASE}/desktop/nastaveni/#pripojeni-k-serveru`   // ✅
'settings.apiKey':         docsUrl: `${DOCS_BASE}/desktop/nastaveni/#licencni-klic`         // ✅
'settings.keepDays':       docsUrl: `${DOCS_BASE}/desktop/nastaveni/#ukladani-dat`          // ✅
'settings.testConnection': docsUrl: `${DOCS_BASE}/desktop/nastaveni/#test-pripojeni`        // ✅

// --- TYTO URL POTŘEBUJÍ OPRAVU ---

// BYLO: /desktop/historie/#stavy-konzultaci
// JE:   /desktop/nahravani/#stavy-konzultaci
'history.statusBadge':   docsUrl: `${DOCS_BASE}/desktop/nahravani/#stavy-konzultaci`   // ← OPRAVIT

// BYLO: /desktop/historie/
// JE:   /desktop/nahravani/#stavy-konzultaci  
'history.list':          docsUrl: `${DOCS_BASE}/desktop/nahravani/#stavy-konzultaci`   // ← OPRAVIT

// BYLO: /desktop/zprava/#uprava-zpravy
// JE:   /desktop/klinicka-zprava/#uprava-zpravy
'detail.noteText':       docsUrl: `${DOCS_BASE}/desktop/klinicka-zprava/#uprava-zpravy` // ← OPRAVIT

// BYLO: /desktop/zprava/#ai-navrhy
// JE:   /desktop/klinicka-zprava/#ai-navrhy
'detail.llmSection':     docsUrl: `${DOCS_BASE}/desktop/klinicka-zprava/#ai-navrhy`    // ← OPRAVIT

// BYLO: /portal/billing/#cerpani
// JE:   /portal/predplatne/#cerpani
'billing.remaining...':  docsUrl: `${DOCS_BASE}/portal/predplatne/#cerpani`            // ← OPRAVIT

// BYLO: /portal/billing/#tarify
// JE:   /portal/predplatne/#tarify
'billing.planName':      docsUrl: `${DOCS_BASE}/portal/predplatne/#tarify`             // ← OPRAVIT

// --- DOCS_URLS objekt ---
export const DOCS_URLS = {
  home:             `${DOCS_BASE}`,
  desktop:          `${DOCS_BASE}/desktop/`,
  recording:        `${DOCS_BASE}/desktop/nahravani/`,
  report:           `${DOCS_BASE}/desktop/klinicka-zprava/`,              // ← OPRAVIT
  settings:         `${DOCS_BASE}/desktop/nastaveni/`,
  history:          `${DOCS_BASE}/desktop/nahravani/#stavy-konzultaci`,   // ← OPRAVIT
  troubleshooting:  `${DOCS_BASE}/faq/`,                                  // ← OPRAVIT
  portal:           `${DOCS_BASE}/portal/`,
  billing:          `${DOCS_BASE}/portal/predplatne/`,                    // ← OPRAVIT
  faq:              `${DOCS_BASE}/faq/`,
};

// --- Sidebar "Nápověda" button URL ---
// Ověřit: má ukazovat na /desktop/ (přehled), funguje ✅
```

---

## Pořadí práce

```
1. DOCS REPO — anchor aliasy + nové sekce (4 soubory, ~30 min)
   └─ git commit + push → Cloudflare auto-deploy (~30s)

2. OVĚŘIT — 12 anchor URL v prohlížeči (viz checklist níže)

3. DESKTOP REPO — opravit helpContent.js (6 URL oprav + DOCS_URLS)
   └─ patch bump, commit

4. E2E TEST — desktop tooltip → klik docs → prohlížeč → správná sekce
```

---

## Ověřovací checklist

Po deployi docs otevřít každou URL a ověřit scroll na správnou sekci:

```
✅/❌  docs.scriptormed.com/desktop/nahravani/#jak-nahravat
✅/❌  docs.scriptormed.com/desktop/nahravani/#oznaceni-pacienta
✅/❌  docs.scriptormed.com/desktop/nahravani/#kontrola-mikrofonu
✅/❌  docs.scriptormed.com/desktop/nahravani/#stavy-konzultaci
✅/❌  docs.scriptormed.com/desktop/klinicka-zprava/#uprava-zpravy
✅/❌  docs.scriptormed.com/desktop/klinicka-zprava/#ai-navrhy
✅/❌  docs.scriptormed.com/desktop/nastaveni/#pripojeni-k-serveru
✅/❌  docs.scriptormed.com/desktop/nastaveni/#licencni-klic
✅/❌  docs.scriptormed.com/desktop/nastaveni/#ukladani-dat
✅/❌  docs.scriptormed.com/desktop/nastaveni/#test-pripojeni
✅/❌  docs.scriptormed.com/portal/predplatne/#cerpani
✅/❌  docs.scriptormed.com/portal/predplatne/#tarify
✅/❌  docs.scriptormed.com/faq/
```
