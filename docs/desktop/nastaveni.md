---
title: Nastavení
description: Konfigurace ScriptorMed Desktop — licenční klíč, přizpůsobení výstupu, diagnostika
---

# Nastavení

Nastavení otevřete kliknutím na ikonu :material-cog: v pravém horním rohu hlavního okna.

---

## Připojení k serveru { #pripojeni-k-serveru }

| Pole | Popis |
|------|-------|
| **Licenční klíč** | Váš klíč pro přístup ke službě. Zadává se jednorázově. Formát: `sm_live_xxxxx` |
| **Adresa serveru** | URL serveru ScriptorMed. Předvyplněno — neměňte, pokud vás nevyzve podpora |
| **Stav připojení** | :material-check-circle:{ style="color: #43A65E" } Zelený = připojeno · :material-close-circle:{ style="color: #D94040" } Červený = problém |

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

---

## Přizpůsobení výstupu { #prizpusobeni-vystupu }

ScriptorMed přizpůsobí formát výstupní zprávy podle vaší odbornosti zvolené při registraci. Navíc si můžete formát dále upravit vložením vzorové zprávy.

### Vzorová zpráva

V nastavení naleznete textové pole pro vložení vzoru vaší typické klinické zprávy.

1. Otevřete nastavení
2. Do příslušného pole vložte vzor zprávy, kterou běžně píšete
3. Uložte nastavení
4. Systém automaticky analyzuje váš styl a přizpůsobí budoucí výstupy

!!! warning "Ochrana osobních údajů"
    Vzorová zpráva slouží **pouze k analýze stylu** — na serveru se neukládá a je po zpracování smazána. **Nevkládejte do vzoru skutečné údaje pacientů.** Použijte anonymizovaný nebo fiktivní příklad.

### Co vzor ovlivňuje

- Formát a pořadí sekcí zprávy
- Míru detailu v jednotlivých částech
- Styl formulací (stručný vs. rozsáhlý)
- Odbornostně specifické sekce (např. Status localis u dermatologie, EKG popis u kardiologie)

---

## Informace o licenci { #licencni-klic }

V nastavení se zobrazují informace o vaší licenci:

- **Plán** — aktuální předplatné (Trial, Start, Professional, Team)
- **Zbývající konzultace** — počet konzultací dostupných v aktuálním období
- **Top-up kredit** — zakoupený kredit nad rámec plánu
- **Odbornost** — vaše lékařská specializace (nastavuje se při registraci na portálu)

Podrobnosti o správě předplatného najdete v sekci [Portál — Předplatné](../portal/predplatne.md).

### Ukládání dat { #ukladani-dat }

Audio nahrávka se odesílá na server k přepisu a vygenerování zprávy. Po dokončení zpracování a stažení výsledné zprávy do vaší aplikace jsou audio i text zprávy ze serveru automaticky smazány. Na serveru trvale zůstávají pouze statistické údaje (délka nahrávky, doba zpracování, spotřeba kreditů).

Lokální audio soubory na vašem počítači se automaticky mažou po uplynutí nastavené doby. Výchozí hodnota je **14 dní** od zpracování. Můžete ji změnit v nastavení na 7, 14 nebo 30 dní.

!!! info "Co se maže a co zůstává"
    Automatické mazání se týká pouze lokálních audio souborů.
    Výsledné zprávy v historii konzultací zůstávají dostupné na vašem počítači nezávisle na tomto nastavení.

Aktuální využití disku vidíte v sekci **Využití disku** v nastavení.

---

## Přenos licence na jiný počítač { #uvolneni-licence }

Pokud potřebujete přenést ScriptorMed na jiný počítač (například při výměně PC), můžete licenci uvolnit přímo v aplikaci:

1. Otevřete **Nastavení**
2. V sekci **Informace o licenci** klikněte na tlačítko **Uvolnit zařízení**
3. Potvrďte uvolnění — licence se odpáruje od aktuálního počítače
4. Na novém počítači nainstalujte ScriptorMed a zadejte stejný licenční klíč

!!! warning "Limit uvolnění"
    Uvolnění zařízení je omezeno na 3× za měsíc. Pokud limit překročíte, kontaktujte [podporu](../kontakt.md).

---

## Diagnostický report

Tlačítko **Odeslat diagnostický report** shromáždí technické informace o stavu aplikace a odešle je na server pro analýzu.

### Co report obsahuje

- Verzi aplikace a operačního systému
- Stav připojení k serveru
- Záznamy z logu aplikace
- Statistiky zpracovaných konzultací

### Co report **neobsahuje**

- Obsah konzultací ani klinických zpráv
- Osobní údaje pacientů
- Audio nahrávky

!!! tip "Kdy odeslat report"
    Diagnostický report odešlete, když vás o to požádá technická podpora, nebo pokud zažíváte opakované technické problémy. Report urychlí diagnostiku.

---

## Opravit data

Tlačítko **Opravit data** slouží k automatické opravě lokální databáze. Použijte ho, pokud se nahrávky opakovaně nedaří odeslat.

Funkce provede:

1. **Prohledání disku** — najde chybějící audio soubory
2. **Synchronizaci se serverem** — ověří stav konzultací
3. **Reset zaseknutých konzultací** — obnoví konzultace ve stavu „odesílá se"

!!! info "Bezpečná operace"
    Oprava dat nesmaže žádné nahrávky ani zprávy. Pouze opraví konzistenci lokální databáze.

---

## Verze aplikace

Aktuální verzi aplikace naleznete v dolní části nastavení. Při kontaktování podpory prosím uveďte číslo verze.

---

## Výběr mikrofonu { #vyber-mikrofonu }

V nastavení si můžete zvolit konkrétní mikrofon připojený k počítači. Aplikace zobrazí seznam dostupných vstupních zařízení — USB mikrofony jsou zvýrazněny.

1. Otevřete **Nastavení**
2. V sekci **Mikrofon** vyberte požadované zařízení ze seznamu
3. Tlačítkem **Test mikrofonu** ověřte, že mikrofon snímá zvuk
4. Nastavení se uloží automaticky

!!! tip "USB mikrofony"
    Aplikace automaticky rozpozná USB mikrofony (např. Jabra) a zobrazí je na předním místě seznamu. Pokud vybraný mikrofon není dostupný při spuštění nahrávání, aplikace vás upozorní a nabídne výběr alternativy.

---

## Režim odesílání { #rezim-odesilani }

V nastavení můžete zvolit, zda se nahrávky odesílají na server automaticky po ukončení nahrávání, nebo zda je odešlete ručně.

- **Automatické odesílání** (výchozí) — nahrávka se odešle ihned po zastavení
- **Manuální odesílání** — nahrávka zůstane ve stavu „nahráno" a odešlete ji ručně ze seznamu konzultací

---

## Připravované funkce

V budoucích verzích nastavení přibude:

- **E-mail administračního účtu** — zobrazení e-mailu propojeného s portálem
- **Kontrola aktualizací** — ruční spuštění kontroly dostupnosti nové verze
