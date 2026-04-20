# CLAUDE.md — Instrukce pro Claude Code agenta

> Claude Code čte tento soubor automaticky při spuštění v repozitáři.
> Toto je repo **uživatelské dokumentace** — docs.scriptormed.com (MkDocs Material).

## Před začátkem práce

1. **Přečti `DOCS-UPDATE-CHECKLIST.md`** — checklist co kontrolovat po releasu
2. **Přečti DOCS-IMPACT.md ze sister repo** (pokud existují):
   - `../scriptormed-backend/DOCS-IMPACT.md` — backend změny ovlivňující docs
   - `../scriptormed-desktop/DOCS-IMPACT.md` — desktop změny ovlivňující docs
3. **Přečti CONTEXT.md ze sister repo** jako zdroj pravdy:
   - `../scriptormed-backend/CONTEXT.md` — aktuální stav backendu
   - `../scriptormed-desktop/CONTEXT.md` — aktuální stav desktopu

## Klíčové pravidlo

> **Dokumentace musí odrážet SOUČASNÝ stav aplikace — nikdy plánované/budoucí funkce.**
> Plánované funkce patří VÝHRADNĚ do `!!! info "Připravujeme"` admonition boxů.
> Zdrojem pravdy je VŽDY kód a CONTEXT.md — nikdy dokumentace sama.

## Konvence psaní

- **Jazyk:** čeština, formální ale přístupný tón
- **Cílová skupina:** lékaři, ne vývojáři
- **Žádný technický žargon:** místo "API klíč" piš "Licenční klíč", místo "upload" piš "odeslání", místo "endpoint" piš "stránka"/"funkce"
- **Medicínský obsah:** NIKDY nevymýšlet — ověřit v CONTEXT.md
- **Font v UI:** Plus Jakarta Sans
- **Barvy brand:** Navy `#173B6C`, Teal `#1497A3`

## MkDocs Material syntaxe

Používej stávající formátovací vzory:

```markdown
!!! tip "Nadpis"
    Text tipu

!!! warning "Pozor"
    Varování

!!! info "Připravujeme"
    Funkce plánovaná do budoucí verze.

??? question "Často kladená otázka"
    Odpověď na otázku.
```

Kroky používají `<div class="step">` pattern — zachovej konzistenci s existujícími stránkami.

## Model & effort selection

**Default model:** Opus 4.7 (claude.ai Max plán).

**Effort levels — pravidla:**

| Effort | Kdy použít |
|--------|------------|
| `xhigh` | Velké reorganizace docs (restrukturalizace navigace, masivní audit, nová sekce pokrývající novou doménu) |
| `high` | Standardní TASKS (aktualizace stránek podle DOCS-IMPACT.md, nová stránka, významná revize) |
| `medium` | Drobné textové fixy, překlepy, rutinní úpravy |

**Model switch pro úspory usage poolu:**
Pokud je úloha čistě mechanická (překlepy, rename termínu napříč soubory, drobné formátovací úpravy), použij `/model sonnet-4.6`. Opus 4.7 nepotřebuješ.

**Nastavení na startu session:**
```
/effort high       # nebo xhigh dle typu úlohy
/status            # ověř zbývající usage pool
```

## Usage disciplína

Max 5x plán má sdílený usage pool pro claude.ai chat i Claude Code. Opus 4.7 s xhigh effort je token-hungry. Proto:

- **Před startem dlouhé úlohy:** `/status` — pokud je pool < 40 %, zvaž odložení nebo přepnutí na Sonnet.
- **Na konci pracovního dne:** `/usage` — sledování trendu.
- **Po 60+ minutách v jedné session:** zvaž `/clear` a znovu-načtení kontextu, ať se pozdější prompty nezvětšují exponenciálně.

## SCRATCHPAD.md pro dlouhé úlohy (> 1 hodina)

Docs úlohy jsou obvykle rychlé — SCRATCHPAD.md používej **pouze pro velké reorganizace** (přestrukturalizace navigace, masivní audit napříč desítkami stránek). Soubor je gitignored v rootu repa. Struktura:

```
# SCRATCHPAD — <název úlohy>

## Rozhodnutí
- [čas] Rozhodnutí + proč

## Objevy & gotchas
- Nekonzistence mezi CONTEXT.md a docs, chybějící stránky, rozpory

## Otázky na Petra
- [ ] Otevřená otázka

## Stránky
- [x] desktop/nahravani.md — aktualizováno
- [ ] desktop/klinicka-zprava.md — TODO
```

Na konci úlohy agent shrne SCRATCHPAD.md do commit message / seznamu změn a smaže ho.

**Je v `.gitignore`:** ověř, že `SCRATCHPAD.md` je v `.gitignore` (root). Pokud ne, přidej.

## Review & merge gates

**Před commitem (agent):**
```
/review
```
Lokální code review. Zdarma, používej na každý netriviální commit. U docs zdůrazni kontrolu:
- **Soulad se současným stavem aplikace** — žádné popisy plánovaných funkcí mimo `!!! info "Připravujeme"` boxy
- Terminologie ("Licenční klíč", ne "API klíč")
- Chybové kódy, plány a ceny odpovídají CONTEXT.md / `app/core/errors.py`

**Před mergem velké revize (Petr):**
```
# Na GitHubu otevři draft PR
/ultrareview <PR#>
```
Cloud multi-agent review, běží v pozadí 5–10 min. 3 free runs per účet (jednorázově), pak $5–$20 podle velikosti.

**Kdy `/ultrareview` použít:**
- Přestrukturalizace navigace (`mkdocs.yml`) s dopadem na desítky stránek
- Masivní audit napříč celým repem (Varianta B workflow)
- Nové sekce pokrývající novou doménu (např. nový produkt, nový typ uživatele)

**Kdy NE:**
- Běžné aktualizace podle DOCS-IMPACT.md (stačí `/review`)
- Drobné textové fixy
- FAQ přírůstky

**Auto mode alternativa (Claude Code v2.1.112+):**
Pro Max subscribery s Opus 4.7 je auto mode dostupný bez flagu — stačí:
```
claude
# Pak v session: Shift+Tab pro přepnutí do auto režimu
```
Auto mode má local permission classifier, který eliminuje většinu prompts ale blokuje destruktivní akce (force-push main, curl | bash). Bezpečnější než `--dangerously-skip-permissions`.

## Workflow pro aktualizaci docs

### Varianta A: Na základě DOCS-IMPACT.md (preferovaná)

1. Přečti `../scriptormed-backend/DOCS-IMPACT.md` a `../scriptormed-desktop/DOCS-IMPACT.md`
2. Pro KAŽDOU zmíněnou stránku:
   - Otevři docs stránku
   - Ověř zmíněnou změnu v příslušném CONTEXT.md
   - Aktualizuj text docs stránky
   - Pokud se funkce přesunula z "Připravujeme" do produkce → smaž "Připravujeme" box a přesuň popis do hlavního textu
3. Po dokončení smaž zpracované záznamy z DOCS-IMPACT.md (nebo celý soubor)

### Varianta B: Plný audit

1. Přečti CONTEXT.md + CHANGELOG.md ze VŠECH sister repo
2. Projdi KAŽDOU stránku v `docs/` a porovnej se zdrojem pravdy
3. Oprav rozpory

## Co kontrolovat na každé stránce

- [ ] Terminologie: "Licenční klíč" (ne "API klíč")
- [ ] Prefix klíče: odpovídá reálnému stavu v backendu?
- [ ] Funkce popsané jako "Připravujeme" — zkontroluj zda už nejsou implementované
- [ ] Funkce implementované ale nepopsané
- [ ] Plány a ceny — odpovídají CONTEXT.md?
- [ ] Chybové kódy — odpovídají `app/core/errors.py` v backendu?

## Mapování: co se kde mění

| Změna v backendu/desktopu | Docs stránka |
|--------------------------|-------------|
| Chybové kódy (user-visible) | `chybove-kody.md` |
| Plány, ceny, limity | `portal/predplatne.md` |
| Registrační flow | `portal/registrace.md` |
| Licenční chování, device binding | `portal/licencni-klice.md` |
| Data retention | `desktop/nastaveni.md` |
| Formát klíče, prefix | `desktop/prvni-spusteni.md` |
| UI nastavení (nová pole, přepínače) | `desktop/nastaveni.md` |
| Nahrávací flow (pauza, stop) | `desktop/nahravani.md` |
| Formát klinické zprávy | `desktop/klinicka-zprava.md` |
| Instalace, systémové požadavky | `desktop/instalace.md` |
| Auto-update chování | `desktop/aktualizace.md` |
| FAQ — nový problém/řešení | `faq.md` |
| Kontaktní údaje | `kontakt.md` |

## Git workflow

- **Branch:** pracuj na AKTUÁLNÍ BRANCH
- **Commity:** `docs: popis změny`
- **Merge:** do main → Cloudflare Pages auto-deploy
- **NETVOŘIT Pull Request** — merguj přímo

## Po dokončení (povinné)

1. `mkdocs build --strict` — nesmí být chyby ani warningy
2. `mkdocs serve` — ověř vizuálně v prohlížeči
3. Vypiš SEZNAM VŠECH změn (soubor → co se změnilo)
4. Git commit: `docs: aktualizace dokumentace`
5. Merge do main (Cloudflare Pages auto-deploy)
6. Pokud jsi zpracoval DOCS-IMPACT.md → smaž zpracované záznamy ze sister repo

## Co NEDĚLAT

- ❌ Nepsat o plánovaných funkcích v hlavním textu (jen v "Připravujeme" boxech)
- ❌ Neměnit `mkdocs.yml` nav strukturu pokud to není explicitně nutné
- ❌ Neodkazovat na interní/admin funkce — docs jsou pro koncové uživatele
- ❌ Nepoužívat technický žargon (API, endpoint, webhook, JSON, …)
- ❌ Nevymýšlet informace — ověřit v CONTEXT.md
