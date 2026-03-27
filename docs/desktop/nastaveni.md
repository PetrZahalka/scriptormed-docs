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

ScriptorMed ukládá audio nahrávky lokálně na váš počítač. Nastavení
**Uchovávat lokální data** určuje, po kolika dnech se lokální audio
soubory automaticky smažou.

!!! info "Zprávy na serveru zůstávají"
    Automatické mazání se týká pouze lokálních audio souborů.
    Vygenerované klinické zprávy zůstávají bezpečně uložené
    na serveru a jsou přístupné z historie konzultací.

Aktuální využití disku vidíte v sekci **Využití disku** v nastavení.

---

## Uvolnění licence { #uvolneni-licence }

Pokud potřebujete přesunout aplikaci na jiný počítač:

1. Otevřete nastavení na **stávajícím** počítači
2. Klikněte na **Uvolnit licenci z tohoto zařízení**
3. Potvrďte akci
4. Na **novém** počítači nainstalujte aplikaci a zadejte stejný licenční klíč

!!! info "Omezení"
    Licenci lze uvolnit maximálně 3× za měsíc. Pokud potřebujete častější přesuny, [kontaktujte podporu](../kontakt.md).

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

## Připravované funkce

V budoucích verzích nastavení přibude:

- **Výběr mikrofonu** — možnost zvolit konkrétní mikrofon připojený k počítači
- **E-mail administračního účtu** — zobrazení e-mailu propojeného s portálem
- **Režim odesílání** — volba mezi automatickým a manuálním odesláním nahrávky
- **Kontrola aktualizací** — ruční spuštění kontroly dostupnosti nové verze
