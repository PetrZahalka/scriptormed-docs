---
title: Plenia – nastavení a dodatky
description: Zadání úředních sazeb, archiv dokumentů pojišťovny a práce s úhradovými dodatky.
---

# Nastavení a dodatky

V **Nastavení** zadáváte úřední sazby a bonifikace, zálohy, nasmlouvané výkony a spravujete archiv dokumentů od pojišťovny včetně dodatků. Díky tomu je výpočet maximální úhrady přesný a porovnatelný s vyúčtováním.

---

## Úřední přidělené sazby { #sazby }

Z ročního vyúčtování (nebo z dokumentu s referenčními hodnotami, tzv. RH-LIM) zadáte sazby přidělené pojišťovnou pro danou pojišťovnu a rok:

- **PUROo** – průměrná úhrada na pojištěnce
- **KN** – koeficient navýšení
- **UHRMr** – úhrada za mimořádně nákladné v referenčním období
- **Hodnota bodu** – pokud ji dodatek stanovuje jinak než vyhláška (nepovinné)
- **Měsíční předběžná úhrada** – výše měsíční zálohy, pokud ji máte sjednanou

U každé pojišťovny a roku dále **zaškrtnete splněné bonifikace** – diplom celoživotního vzdělávání, ordinační hodiny, noví pojištěnci a objednávkový (rezervační) systém. Bonifikace mají dvojí přínos: vyšší hodnotu bodu na vykázané péči a vyšší koeficient navýšení (vyšší strop). Splněné bonifikace se přenášejí i do dalších let.

!!! tip "Když sazby nezadáte"
    Prázdné pole znamená, že se hodnota počítá z dat (odhad). Po zadání úředních sazeb je výpočet přesný a porovnatelný s vyúčtováním.

!!! warning "Sazby ovlivňují celý rok"
    Úřední sazby jsou vstupem výpočtu maximální úhrady – chybná sazba zkreslí výsledek za celý rok. Modul je proto **nikdy nezapisuje sám**; vždy je potvrzujete vy.

---

## Zálohy { #zalohy }

**Mřížka záloh** (řádky pojišťovny, sloupce měsíce 1–12) eviduje předběžné úhrady (zálohy) předepsané na rok. Vyplní se automaticky z nahraných dávek faktur (FDAVKA), nebo částky zapíšete ručně. Zálohy jsou nutné pro [očekávaný doplatek a Cash-flow](kokpit-cashflow.md) – bez nich modul neví, kolik pojišťovna na zálohách vyplácí.

---

## Nasmlouvané výkony { #nasmlouvane }

Nově nasmlouvané výkony se po stanovenou dobu hradí **mimo strop**. Zadáte kód výkonu a datum schválení pojišťovnou; modul je pak ve výpočtu stropu zohlední. Záznamy lze kdykoli smazat.

---

## Archiv dokumentů { #archiv }

Nahraná PDF (roční vyúčtování, referenční hodnoty, dodatky) najdete v archivu uspořádané podle pojišťovny, roku a typu. U každého dokumentu vidíte:

- **stav rozpoznání** – *čeká*, *zpracovává se*, *hotovo*, případně *chyba*,
- **rozpoznané hodnoty** (návrh z PDF – před uložením je zkontrolujte),
- **náhled PDF**.

!!! warning "Návrh z PDF zkontrolujte"
    Hodnoty rozpoznané z PDF jsou **návrhem** – mohou se lišit od skutečnosti (různé layouty pojišťoven, hodnoty definované vzorcem). Hodnota mimo očekávaný rozsah je označená ⚠. Před uložením do sazeb ji ověřte v PDF. Tlačítkem „Použít do sazeb" hodnoty jen předvyplníte do formuláře; uloží se až vaším potvrzením.

---

## Dodatky a podpis { #dodatky }

U úhradového dodatku označíte, zda jste ho **podepsali**. Má to přímý dopad na výpočet:

- **Podepsaný dodatek** → platí sazby z dodatku.
- **Nepodepsaný dodatek** → rok se řídí úhradovou vyhláškou.

!!! tip "Vyplatí se dodatek podepsat?"
    Před rozhodnutím si otevřete obrazovku [Dodatek vs vyhláška](planovani-simulace.md#dodatek) – na datech posledního uzavřeného roku v korunách porovná, jak by rok dopadl podle dodatku a jak podle úhradové vyhlášky.

---

## Související { #souvisejici }

- Porovnání s vyúčtováním: [Kontrola vykazování](kontrola.md)
- Význam pojmů (PUROo, KN, hodnota bodu, dodatek): [Slovníček](slovnicek.md)
