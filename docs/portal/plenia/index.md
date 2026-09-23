---
title: Plenia – přehled modulu
description: Analytika úhrad zdravotních pojišťoven – maximální úhrada, čerpání stropu, cash-flow, kontrola vykazování a podklady pro rozhodování.
---

# Plenia

Modul **Plenia** vám ukáže, jak na tom jste s úhradami od zdravotních pojišťoven – počítá je z vašich vlastních vykázaných dat (z odeslaných dávek) podle platné úhradové vyhlášky a porovnává je s ročním vyúčtováním pojišťovny.

Je určen lékaři a účetní ordinace. Odpovídá na otázky, na které se z papírového vyúčtování špatně hledá odpověď:

- Kolik nejvíc mi pojišťovna za rok zaplatí? (**maximální úhrada – MAXÚ**)
- Blížím se ke stropu úhrad, nebo mám ještě rezervu?
- Kolik pojišťovny vyplácejí na zálohách a **jaký doplatek čekat po ročním vyúčtování**?
- Kteří pojištěnci jsou mimořádně nákladní a co s tím?
- Vykazuji v pořádku, nebo překračuji frekvenční omezení výkonů?
- **Vyplatí se podepsat letošní úhradový dodatek?**
- Souhlasí moje data s vyúčtováním pojišťovny – a mám podklad pro námitku?

!!! tip "Chcete začít hned?"
    Projděte si [Rychlého průvodce](rychly-pruvodce.md) – od registrace k prvním výsledkům v šesti krocích.

!!! info "Pojmy jako MAXÚ, PUROo, MNP nebo strop?"
    Všechny odborné výrazy, které v modulu i na úředním vyúčtování potkáte, najdete srozumitelně vysvětlené ve [Slovníčku pojmů](slovnicek.md).

---

## Jak začít { #jak-zacit }

Plenia funguje jen ve webovém prohlížeči a lze ho používat i samostatně, bez klinické části ScriptorMed. Po registraci máte k dispozici **zkušební režim** s ukázkovými (anonymizovanými) daty – na nich si modul nezávazně projdete, ještě než nahrajete vlastní dávky. Kvůli rodným číslům pojištěnců je pro vstup do modulu povinné **dvoufaktorové ověření**.

!!! tip "Zkušební režim"
    Ve zkušebním režimu můžete nahrát i vlastní dávky VZP (z aktuálního roku období leden–květen, historické roky bez omezení). Při prvním nahrání vlastních dat se ukázková data automaticky odstraní. Podrobnosti v kapitole [Zkušební režim](zkusebni-rezim.md).

---

## Postup práce v kostce { #postup }

1. **Nahrajete data** – K-dávky (z ordinačního programu), faktury se zálohami a PDF vyúčtování či dodatky. Vše na jednom místě.
2. **Doplníte zálohy a úřední sazby** – aby seděl očekávaný doplatek a výpočet byl přesný a porovnatelný s pojišťovnou.
3. **Potvrdíte kompletní rok** – jakmile máte všech 12 měsíců, označíte rok jako úplný. Teprve pak se maximální úhrada počítá jako definitivní (do té doby je orientační).
4. **Sledujete Kokpit** – čerpání stropu, odhad úhrady za vykázanou péči, zálohy a očekávaný doplatek za všechny pojišťovny na jedné stránce.
5. **Identifikujete mimořádně nákladné pojištěnce** – a kandidáty, které se vyplatí do této skupiny doplnit.
6. **Zkontrolujete vykazování** – frekvenční omezení, signální výkony a soulad s vyúčtováním pojišťovny.
7. **Na konci roku uděláte uzávěrku** – nahrané roční vyúčtování modul zrekonciluje, dá verdikt a případně připraví podklad pro námitku.

O termíny se nemusíte bát: modul posílá **automatická e-mailová upozornění** na chybějící K-dávku za minulý měsíc a na čerpání stropu nad 85 % a nad 100 %.

---

## Co modul obsahuje { #obsah }

| Část | K čemu slouží |
|------|---------------|
| **Kokpit** | Vše na jedné stránce přes všechny pojišťovny – strop, čerpání, zálohy, očekávaný doplatek → [Kokpit a Cash-flow](kokpit-cashflow.md) |
| **Přehled** | Pokrytí měsíců a maximální úhrada za každou pojišťovnu a rok → [Nahrávání dat](nahravani-dat.md) |
| **Cash-flow** | Časová osa peněz – zálohy vs vykázaná péče, odhad doplatku → [Kokpit a Cash-flow](kokpit-cashflow.md#cashflow) |
| **Čerpání stropu** | Kolik ze stropu je vyčerpáno, vývoj během roku a cesty optimalizace → [Maximální úhrada](maxu-cerpani.md) |
| **Pojištěnci** | Rozdělení pojištěnců do zón a identifikace mimořádně nákladných → [Pojištěnci a MNP](pojistenci-mnp.md) |
| **Výkony** | Přehled vykázaných výkonů s detailem každého kódu → [Výkony](maxu-cerpani.md#vykony) |
| **Meziroční** | Roky vedle sebe – vývoj ordinace v čase → [Plánování a simulace](planovani-simulace.md#mezirocni) |
| **Kontrola** | Frekvenční omezení, signální výkony a porovnání s vyúčtováním → [Kontrola vykazování](kontrola.md) |
| **Dodatek vs vyhláška** | Vyplatí se podepsat dodatek? Porovnání v korunách → [Plánování a simulace](planovani-simulace.md#dodatek) |
| **Simulátor** | Co kdyby – bonifikace, kandidáti na MNP, ±pojištěnci → [Plánování a simulace](planovani-simulace.md#simulator) |
| **Změny vyhlášky** | Co se pro vaši odbornost meziročně změnilo → [Plánování a simulace](planovani-simulace.md#vyhlaska) |
| **Uzávěrka** | Roční vyúčtování – verdikt, finále peněz, rekonciliace → [Reporty a uzávěrka](reporty-uzaverka.md#uzaverka) |
| **Reporty** | Manažerský a analytický report s exportem do PDF → [Reporty a uzávěrka](reporty-uzaverka.md) |
| **Nastavení** | Úřední sazby, bonifikace, zálohy, nasmlouvané výkony, archiv dokumentů → [Nastavení a dodatky](nastaveni-dodatky.md) |

U seznamových obrazovek (Pojištěnci, Výkony, Kontrola, Meziroční) lze v přepínači pojišťoven zvolit **„Vše"** – data ze všech pojišťoven dohromady. Obrazovky vázané na strop konkrétní pojišťovny zůstávají per pojišťovna; celkový pohled dává Kokpit a Cash-flow.

---

## Pojišťovny a odbornosti { #rozsah }

- **Pojišťovny:** VZP (111), VoZP (201), ČPZP (205), OZP (207), ZPŠ (209) a ZPMV (211).
- **Odbornosti:** modul podporuje více ambulantních odborností (dermatovenerologie, gastroenterologie, ortopedie, neurologie, ORL, oftalmologie, urologie, chirurgie a další). Odbornost se **automaticky rozpozná z nahraných K-dávek** – nic nenastavujete.
- **Roky:** úhradová vyhláška je v modulu pro roky 2022–2026; výpočet vždy použije znění pro daný rok.

---

## Na čem výpočty stojí { #zaklad }

Modul počítá **z vašich vykázaných dat** (z odeslaných dávek) podle verze úhradové vyhlášky pro daný rok. Hodnoty z ročního vyúčtování pojišťovny slouží jen k **porovnání** – modul je nikdy nepřebírá do vlastního výpočtu. Díky tomu vidíte, kde se vaše čísla a vyúčtování pojišťovny případně rozcházejí.

!!! warning "Přesnost závisí na úplnosti dat"
    Maximální úhrada se počítá z toho, co jste odeslali. Chybějící měsíce nebo neúplné dávky výsledek zkreslí. Proto modul ukazuje pokrytí měsíců a počítá definitivní úhradu až po potvrzení kompletního roku.

!!! warning "Ochrana osobních údajů"
    Rodná čísla pojištěnců jsou v modulu šifrovaná. V přehledech se nezobrazují; konkrétní pojištěnce (např. kandidáty na mimořádně nákladného) vidíte jen vy jako vlastník ordinace. Vstup do modulu chrání povinné dvoufaktorové ověření.
