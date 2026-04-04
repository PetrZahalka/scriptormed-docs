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
