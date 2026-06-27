---
title: Plenia – nastavení a dodatky
description: Zadání úředních sazeb, archiv dokumentů pojišťovny a práce s úhradovými dodatky.
---

# Nastavení a dodatky

V **Nastavení** zadáváte úřední sazby, spravujete archiv dokumentů od pojišťovny a označujete podepsané dodatky. Díky tomu je výpočet maximální úhrady přesný a porovnatelný s vyúčtováním.

---

## Úřední přidělené sazby { #sazby }

Z ročního vyúčtování zadáte sazby přidělené pojišťovnou pro danou pojišťovnu a rok:

- **PUROo** – průměrná úhrada na pojištěnce
- **KN** – koeficient navýšení
- **UHRMr** – úhrada za mimořádně nákladné v referenčním období
- **Hodnota bodu** – pokud ji dodatek stanovuje jinak než vyhláška (nepovinné)

!!! tip "Když sazby nezadáte"
    Prázdné pole znamená, že se hodnota počítá z dat (odhad). Po zadání úředních sazeb je výpočet přesný a porovnatelný s vyúčtováním.

!!! warning "Sazby ovlivňují celý rok"
    Úřední sazby jsou vstupem výpočtu maximální úhrady – chybná sazba zkreslí výsledek za celý rok. Modul je proto **nikdy nezapisuje sám**; vždy je potvrzujete vy.

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

!!! info "Připravujeme"
    Připravujeme **projekci před podpisem dodatku** – modelaci na datech posledního uzavřeného roku, která v korunách porovná, jak by rok dopadl podle dodatku a jak podle úhradové vyhlášky. Pomůže vám rozhodnout, zda dodatek podepsat. Půjde o modelové porovnání pravidel na známých datech, ne o předpověď úhrady na příští rok.

---

## Související { #souvisejici }

- Porovnání s vyúčtováním: [Kontrola vykazování](kontrola.md)
- Význam pojmů (PUROo, KN, hodnota bodu, dodatek): [Slovníček](slovnicek.md)
