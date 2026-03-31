# TASKS: Oprava dokumentace po desktop UI fixech

**Repozitář:** `scriptormed-docs`
**Přečti nejdřív:** `CONTEXT.md` (pokud existuje), `mkdocs.yml` (navigační struktura)
**Souvisí s:** `TASKS-desktop-ui-fixes-v0.20.md` (desktop repo) — úkoly T5, T6, FR-008
**Agent model:** claude-sonnet (implementace)
**Priorita:** Vysoká — dokumentace musí odpovídat realitě aplikace

---

## Přehled úkolů

| # | Úkol | Typ | Priorita |
|---|------|-----|----------|
| D1 | Opravit text o ukládání dat na serveru | Obsahová chyba | 🔴 vysoká |
| D2 | Opravit sekci o přenosu licence | Obsahová chyba | 🔴 vysoká |
| D3 | Aktualizovat retenci lokálních souborů | Změna výchozích hodnot | 🟡 střední |
| D4 | Přidat FAQ „Kde jsou moje data uložena?" | Nový obsah | 🟡 střední |
| D5 | Přidat FAQ „Jak přenést licenci na jiný počítač?" | Nový obsah | 🟡 střední |
| D6 | Ověřit celkovou konzistenci docs vs. desktop | Audit | 🟡 střední |

---

## Diagnostika — zjisti strukturu docs

```bash
# 1. Navigační struktura
cat mkdocs.yml

# 2. Všechny markdown soubory
find docs/ -name "*.md" -type f | sort

# 3. Najdi stránky o datech / retenci / serveru / bezpečnosti
grep -rn "server\|ulož\|data\|retenc\|audio\|90 dní\|soubor" docs/ --include="*.md" -l

# 4. Najdi stránky o licenci / přenos / uvolnění / zařízení
grep -rn "licen\|přenos\|uvolnění\|zařízení\|device\|počítač" docs/ --include="*.md" -l

# 5. Najdi FAQ stránku
grep -rn "FAQ\|faq\|často\|dotaz" docs/ --include="*.md" -l
find docs/ -iname "*faq*" -o -iname "*otazky*" -o -iname "*reseni*"

# 6. Zjisti aktuální nav v mkdocs.yml
grep -A 50 "^nav:" mkdocs.yml
```

---

## D1: Opravit text o ukládání dat na serveru

### Problém

Dokumentace může obsahovat texty, které nepřesně popisují, co se na serveru ukládá. Potřeba sladit s reálnou data retention politikou.

### Skutečný stav (produkční pipeline)

1. Desktop nahraje audio lokálně (WAV)
2. Audio se odešle na server ke zpracování (STT → LLM)
3. Server vygeneruje klinickou zprávu (text)
4. Klient (desktop) si zprávu stáhne
5. **Po stažení klientem** se ze serveru mažou audio I text zprávy
6. Na serveru **trvale zůstávají pouze metadata**: délka nahrávky, doba zpracování, počet kreditů, stav, timestamp
7. Na klientovi zůstává lokální kopie audio po dobu nastavené retence (14 dní default)

**Výjimka:** Debug tenanti uchovávají vše pro diagnostiku — toto není user-facing informace.

### Co hledat a opravit

```bash
# Najdi problémový text
grep -rn "server.*ulož\|uložen.*server\|data.*server.*smazán\|server.*i po\|zůstávají na serveru\|trvale.*ulož\|trvale.*uchov" docs/ --include="*.md"
grep -rn "90 dní\|90 dnů" docs/ --include="*.md"
```

### Správné formulace (použij v příslušných sekcích)

**O zpracování audio a zprávy:**
> Audio nahrávka se odesílá na server k přepisu a vygenerování zprávy. Po dokončení zpracování a stažení výsledné zprávy do vaší aplikace jsou audio i text zprávy ze serveru automaticky smazány. Na serveru trvale zůstávají pouze statistické údaje (délka nahrávky, doba zpracování, spotřeba kreditů).

**O lokálních souborech:**
> Lokální audio soubory na vašem počítači se automaticky mažou po uplynutí nastavené doby (výchozí: 14 dní od zpracování). Toto nastavení můžete změnit v Nastavení → Retence souborů.

**O smazání konzultace:**
> Smazáním konzultace z historie v aplikaci se odstraní lokální audio soubor. Na serveru zůstávají pouze anonymizované statistické údaje (datum, doba zpracování, stav) pro účely vyúčtování.

### Ověření

- [x] Žádná stránka v docs netvrdí, že audio se na server vůbec neposílá
- [x] Žádná stránka netvrdí, že audio NEBO text zprávy jsou na serveru uloženy trvale
- [x] Jasně řečeno: audio + zpráva → server → zpracování + stažení → automaticky smazáno
- [x] Na serveru zůstávají jen statistické údaje — to musí být explicitně řečeno
- [x] Žádná stránka nezmíňuje „debug" režim
- [x] Formulace odpovídá skutečnému chování pipeline

---

## D2: Opravit sekci o přenosu licence na jiný počítač

### Problém

Dokumentace popisuje funkci „Uvolnění licence" / „Přenos na jiný počítač" jako něco, co uživatel může udělat sám. Ve skutečnosti tato funkce v desktopu **zatím neexistuje** (je to FR-008, stav: nápad, priorita: post-pilot).

### Co hledat

```bash
grep -rn "uvolnit\|uvolnění\|přenos.*licen\|licen.*přenos\|jiný počítač\|nový počítač\|změn.*zařízení" docs/ --include="*.md"
```

### Správná formulace (dokud FR-008 není implementován)

**ŠPATNĚ:**
> V nastavení aplikace klikněte na „Uvolnit licenci" pro přenos na jiný počítač.

**SPRÁVNĚ:**
> ### Přenos licence na jiný počítač
>
> Pokud potřebujete přenést ScriptorMed na jiný počítač (například při výměně PC), kontaktujte naši podporu:
>
> **E-mail:** [podpora@scriptormed.com](mailto:podpora@scriptormed.com)
>
> Uveďte prosím:
>
> - Název vaší ordinace
> - Důvod přenosu (nový počítač, reinstalace apod.)
>
> Licence bude uvolněna obvykle do jednoho pracovního dne.
>
> *V budoucí verzi bude možné licenci uvolnit přímo v aplikaci.*

### Ověření

- [x] Žádná stránka neodkazuje na neexistující tlačítko „Uvolnit licenci" v desktopu
- [x] Text jasně říká „kontaktujte podporu"
- [x] Uveden e-mail podpora@scriptormed.com

---

## D3: Aktualizovat retenci lokálních souborů

### Problém

Dokumentace může uvádět 90 dní jako výchozí retenci lokálních audio souborů. Desktop se mění na 14 dní (viz desktop TASKS T6).

### Co hledat

```bash
grep -rn "90\|retenc\|uchovávání\|dní.*soubor\|soubor.*dní\|automatick.*smaž\|cleanup" docs/ --include="*.md"
```

### Správná formulace

> ### Uchovávání lokálních souborů
>
> Audio nahrávky na vašem počítači se automaticky mažou po nastavené době od zpracování. Výchozí hodnota je **14 dní**. Můžete ji změnit v Nastavení na 7, 14 nebo 30 dní.
>
> Výsledné zprávy v historii konzultací zůstávají dostupné nezávisle na tomto nastavení — mazání se týká pouze lokálních audio souborů.

### Ověření

- [x] Žádná zmínka o 90 dnech
- [x] Uvedeny správné volby: 7, 14, 30 dní
- [x] Jasné rozlišení: retence = lokální audio, ne zprávy v historii

---

## D4: Přidat FAQ „Kde jsou moje data uložena?"

### Umístění

FAQ stránka (pravděpodobně `docs/faq.md` nebo `docs/reseni-problemu.md`). Pokud FAQ stránka neexistuje, vytvoř ji a přidej do `mkdocs.yml` navigace.

### Obsah

```markdown
### Kde jsou moje data uložena?

**Audio nahrávky** se odesílají na server ke zpracování (přepis řeči a generování zprávy). Po dokončení zpracování je audio ze serveru automaticky smazáno. Lokálně na vašem počítači zůstávají po nastavenou dobu (výchozí 14 dní).

**Výsledné zprávy** (klinické zprávy vygenerované ze záznamu) se po stažení do vaší aplikace ze serveru automaticky mažou. Zprávy zůstávají v historii konzultací ve vaší aplikaci na vašem počítači.

**Statistické údaje** (délka nahrávky, doba zpracování, spotřeba kreditů) jsou uloženy na serveru pro účely vyúčtování a technické podpory.

| Co | Kde | Jak dlouho |
|---|---|---|
| Audio nahrávka | Váš počítač (lokálně) | 14 dní (nastavitelné) |
| Audio na serveru | Server (EU) — během zpracování | Smazáno po dokončení zpracování |
| Klinická zpráva na serveru | Server (EU) — do stažení klientem | Smazáno po stažení do aplikace |
| Klinická zpráva lokálně | Váš počítač | Dokud ji nesmažete |
| Statistické údaje | Server (EU) | Po dobu trvání účtu |

Server je provozován v datovém centru Hetzner v Německu. Komunikace je šifrována (TLS 1.3). Přístup k datům vaší ordinace máte pouze vy.
```

### Ověření

- [x] FAQ stránka existuje a je v navigaci
- [x] Tabulka jasně ukazuje co kde je a jak dlouho
- [x] Zmíněno EU hosting (Hetzner, Německo)
- [x] Zmíněno šifrování (TLS 1.3)

---

## D5: Přidat FAQ „Jak přenést licenci na jiný počítač?"

### Umístění

Stejná FAQ stránka jako D4.

### Obsah

```markdown
### Jak přenést licenci na jiný počítač?

Pokud měníte počítač v ordinaci, licence musí být nejprve uvolněna ze stávajícího zařízení. Aktuálně toto provádíme na vyžádání — napište nám na [podpora@scriptormed.com](mailto:podpora@scriptormed.com) a licenci uvolníme obvykle do jednoho pracovního dne.

Po uvolnění licence:

1. Nainstalujte ScriptorMed na nový počítač
2. Zadejte svůj licenční klíč v Nastavení
3. Aplikace se automaticky aktivuje

Licence je vázána na jedno zařízení najednou (podle vašeho plánu může být aktivních více zařízení současně).
```

### Ověření

- [x] Postup je srozumitelný pro lékaře bez IT znalostí
- [x] Kontakt na podporu je uveden
- [x] Zmíněno, že vyšší plány podporují více zařízení

---

## D6: Audit konzistence docs vs. desktop

### Co zkontrolovat

Po implementaci D1–D5 projdi celou dokumentaci a ověř, že žádná stránka neobsahuje:

```bash
# Zastaralé nebo chybné informace
grep -rn "90 dní\|SOAP\|server.*audio\|audio.*server\|Uvolnit licenci" docs/ --include="*.md"

# Odkazy na neexistující funkce
grep -rn "mobilní\|telefon.*app\|Android\|iOS\|web.*nahrávání\|IZIP\|eRecept\|2FA" docs/ --include="*.md"

# Zastaralé ceny nebo plány
grep -rn "Kč\|cen\|plán\|trial\|zkušební" docs/ --include="*.md"
```

### Checklist

- [x] Žádný text o mobilní aplikaci (neexistuje)
- [x] Žádný text o webovém nahrávání (neexistuje)
- [x] Žádný text o IZIP/eRecept integraci (neexistuje)
- [x] Žádný text o 2FA (neexistuje)
- [x] Ceník odpovídá aktuálnímu (Trial/Start 1490/Professional 2990/Team 4990)
- [x] Trial = 14 dní, 20 konzultací
- [x] Zmíněné verze/screenshoty odpovídají aktuální UI (v0.19.0+)
- [x] Kontaktní e-mail: podpora@scriptormed.com (ne jiný)
- [x] Provozovatel: Temvara Systems s.r.o. (ne Scriptor Technologies)

---

## Post-steps

1. **Commit:**
   ```
   fix(docs): oprava server storage textu, retence 14d, přenos licence, nové FAQ
   ```

2. **Deploy:** Push do main → Cloudflare Pages automaticky builduje a deployuje

3. **Ověření na produkci:**
   - [ ] Otevři `docs.scriptormed.com` → zkontroluj všechny upravené stránky
   - [ ] FAQ stránka je viditelná v navigaci
   - [ ] Žádný broken link

4. **NEPUSHUJ** do Git — čekej na Petrův review.

---

## Poznámky

- **MkDocs Material** — soubory v `docs/` adresáři, navigace v `mkdocs.yml` pod `nav:`
- Pokud FAQ stránka ještě neexistuje, vytvoř `docs/faq.md` a přidej do `nav:`
  ```yaml
  nav:
    - ...existující stránky...
    - Často kladené dotazy: faq.md
  ```
- **Formátování:** Docs portál používá Material for MkDocs → Markdown s admonitions, tabulkami, záložkami. Drž se jednoduchého Markdown (nadpisy, seznamy, tabulky, odkazy). Žádné HTML.
- **Jazyk:** Veškerý obsah v češtině. Odborné termíny odpovídající CZ lékařskému prostředí.
- **Tón:** Profesionální ale přístupný. Cílová skupina = lékaři, ne IT odborníci. Vyhýbej se technickému žargonu (ne „pipeline", „STT", „LLM" — místo toho „přepis řeči", „generování zprávy").
