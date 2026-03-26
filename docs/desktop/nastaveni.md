---
title: Nastavení
description: Konfigurace ScriptorMed Desktop — licenční klíč, přizpůsobení výstupu, diagnostika
---

# Nastavení

Nastavení otevřete kliknutím na ikonu :material-cog: v pravém horním rohu hlavního okna.

---

## Připojení k serveru

| Pole | Popis |
|------|-------|
| **Licenční klíč** | Váš klíč pro přístup ke službě. Zadává se jednorázově. Formát: `sm_live_xxxxx` |
| **Adresa serveru** | URL serveru ScriptorMed. Předvyplněno — neměňte, pokud vás nevyzve podpora |
| **Stav připojení** | :material-check-circle:{ style="color: #43A65E" } Zelený = připojeno · :material-close-circle:{ style="color: #D94040" } Červený = problém |

---

## Přizpůsobení výstupu { #prizpusobeni-vystupu }

ScriptorMed umožňuje přizpůsobit formát výstupní zprávy vašemu stylu psaní.

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
- Zvyklosti specifické pro vaši praxi

---

## Informace o licenci

V nastavení se zobrazují informace o vaší licenci:

- **Plán** — aktuální předplatné (Trial, Start, Professional, Team)
- **Zbývající konzultace** — počet konzultací dostupných v aktuálním období
- **Top-up kredit** — zakoupený kredit nad rámec plánu

Podrobnosti o správě předplatného najdete v sekci [Portál — Předplatné](../portal/predplatne.md).

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
