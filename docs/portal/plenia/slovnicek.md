---
title: Plenia – slovníček pojmů
description: Srozumitelné vysvětlení pojmů z modulu Plenia i z úředního vyúčtování pojišťoven – MAXÚ, PUROo, KN, MNP, strop a další.
---

# Slovníček pojmů

Tyto výrazy potkáte v modulu Plenia i na úředním vyúčtování od pojišťovny. Vysvětlení je zjednodušující – cílem je, abyste se v číslech zorientovali, ne nahradit znění úhradové vyhlášky.

---

## Dokumenty a pravidla { #dokumenty }

**Úhradová vyhláška**
: Vyhláška Ministerstva zdravotnictví, která pro daný rok stanovuje, jak pojišťovny hradí péči – sazby, koeficienty a pravidla výpočtu. Mění se každý rok. Modul má znění pro roky 2022–2026 a počítá vždy podle správné verze.

**Dodatek ke smlouvě (úhradový dodatek)**
: Smluvní dodatek mezi ordinací a konkrétní pojišťovnou. Může nastavit jiné (zpravidla výhodnější) sazby než vyhláška. Platí, pokud ho podepíšete; **nepodepsaný dodatek** znamená, že se rok řídí úhradovou vyhláškou.

**K-dávka**
: Soubor s vykázanou péčí, který odesíláte pojišťovně z ordinačního programu. Je hlavním zdrojem dat pro modul – obsahuje doklady, výkony a zvlášť účtovaný materiál.

**Roční vyúčtování**
: Dokument, kterým pojišťovna po konci roku (vypořádání do 150 dnů) vyčíslí, kolik vám uznala a zaplatila. Modul z něj umí rozpoznat sazby a slouží k porovnání s vlastním výpočtem.

**Referenční hodnoty (RH-LIM)**
: Dokument, kterým pojišťovna sděluje úřední hodnoty referenčního období (PUROo a další). Mají přednost před odhadem z vašich dat – po jejich zadání výpočet přesně odpovídá číslům pojišťovny.

**Zálohy (předběžná úhrada)**
: Měsíční platby, které pojišťovna posílá v průběhu roku. Do modulu se dostanou z dávek faktur (FDAVKA) nebo ručním zápisem; definitivně se vyrovnají ročním vyúčtováním.

**Saldo**
: Rozdíl mezi tím, co vám za rok náleží, a tím, co pojišťovna zatím zaplatila. V běžícím roce jde o průběžné saldo záloh.

---

## Maximální úhrada a strop { #strop }

**Maximální úhrada (MAXÚ)**
: Nejvyšší částka, kterou vám pojišťovna za daný rok zaplatí za péči, na kterou se vztahuje regulace (tzv. strop). Je to klíčové číslo modulu.

**Strop**
: Hranice, do které se hrazená péče proplácí v plné míře. Co je nad stropem, pojišťovna krátí.

**Čerpání stropu**
: Kolik z maximální úhrady už máte vykázáno. Modul ukazuje rezervu (kolik ještě můžete vykázat) i případné přečerpání.

**Mimo strop**
: Péče hrazená v plné výši nad rámec stropu – nevstupuje do maximální úhrady. Patří sem například signální a distanční výkony, od roku 2026 péče o děti do 15 let a nově nasmlouvané výkony (po omezenou dobu).

**Bez regulačního omezení (do 100 pojištěnců)**
: Pokud jste v referenčním nebo v hodnoceném (kompletním) roce ošetřili nejvýše 100 unikátních pojištěnců dané pojišťovny, strop se neuplatní a péče se hradí v plné výši.

**Signální výkon**
: Výkon, kterým se pojišťovně hlásí klinické vyšetření (kódy se liší podle věku pojištěnce). Hradí se mimo strop – jeho opomenutí nebo chybný kód znamená ztrátu; modul obojí hlídá na Kontrole.

---

## Sazby a koeficienty { #sazby }

**PUROo**
: Průměrná úhrada na jednoho pojištěnce v referenčním období. Pojišťovna ji přiděluje; zadáte ji z vyúčtování nebo dodatku v Nastavení. Pokud ji nezadáte, modul ji odhadne z dat.

**KN (koeficient navýšení)**
: Navýšení sazby za splněné bonifikace (např. ordinační hodiny, vzdělání) a oborový základ. Čím vyšší KN, tím vyšší maximální úhrada.

**Konstanta**
: Koeficient z úhradové vyhlášky pro daný rok, kterým se výsledná úhrada násobí.

**Hodnota bodu (HB)**
: Kolik korun připadá na jeden vykázaný bod. Ovlivňuje, kolik dostanete za vykázanou péči pod stropem.

**Bonifikace**
: Splněné ukazatele kvality a dostupnosti (ordinační hodiny, celoživotní vzdělávání, objednávkový systém a další), za které pojišťovna navyšuje úhradu. Mají dvojí přínos: vyšší hodnotu bodu na vykázané péči a vyšší koeficient navýšení (vyšší strop).

---

## Pojištěnci a náklady { #pojistenci }

**Mimořádně nákladný pojištěnec (MNP)**
: Pojištěnec, jehož úhrada překročí stanovený práh (5násobek PUROo; přesně na prahu je ještě základní). Jeho péče se ve stropu zohledňuje samostatným členem a nesnižuje prostor pro ostatní – proto je výhodné takové pojištěnce správně podchytit.

**Kandidát na MNP**
: Pojištěnec, který se prahu blíží (přibližně 80–99 % prahu). Doplněním indikované péče může práh překročit a přejít mezi mimořádně nákladné.

**POPzpoZ**
: Počet pojištěnců zařazených do výpočtu stropu – unikátní pojištěnci po odečtení mimořádně nákladných. Hlavní hybatel maximální úhrady (čím víc pojištěnců, tím vyšší úhrada).

**POPzpoMh**
: Počet mimořádně nákladných pojištěnců v hodnoceném období.

**UHRMh / UHRMr**
: Úhrada za mimořádně nákladné pojištěnce v hodnoceném (UHRMh) a v referenčním (UHRMr) období. Vstupují do výpočtu maximální úhrady.

---

## Kontrola a námitky { #kontrola }

**Frekvenční omezení**
: Pravidlo Seznamu zdravotních výkonů, kolikrát smí být výkon vykázán za období (den, týden, měsíc, čtvrtletí, rok). Modul překročení označí.

**Rekonciliace**
: Porovnání vašeho výpočtu (z odeslaných dávek) s vyúčtováním pojišťovny. Ukáže případný rozpor – například že pojišťovna uznala méně pojištěnců, než jste vykázali.

**Námitka**
: Podání proti ročnímu vyúčtování. Modul k němu připraví podklad (PDF) – ale jen tehdy, kdy rozpor skutečně omezuje vaši úhradu (jinak námitka nemá ekonomický smysl). Podklad nenahrazuje právní podání.

**Uzávěrka**
: Roční vypořádání v modulu – po nahrání ročního vyúčtování ukáže verdikt (akceptovat / prověřit / podat námitku), finále peněz (doplatek či vratka) a rekonciliaci hodnot.

---

## Vzorec maximální úhrady { #vzorec }

Pro úplnost – takto se maximální úhrada počítá:

```
MAXÚ = (Konstanta + KN) × [ POPzpoZ × PUROo + max(PUROo × POPzpoMh ; UHRMh − UHRMr) ]
```

Zjednodušeně: vezme se počet zařazených pojištěnců krát průměrná úhrada na pojištěnce, přičte se část za mimořádně nákladné, a celé se navýší koeficienty z vyhlášky a bonifikací. Sazby (Konstanta, hodnota bodu, koeficienty) jsou pro celý rok pevné – mění se jen počty pojištěnců.

!!! tip "Kde to uvidíte"
    Konkrétní hodnoty pro vaši ordinaci najdete v [Přehledu](index.md) (maximální úhrada) a v Nastavení (úřední sazby).
