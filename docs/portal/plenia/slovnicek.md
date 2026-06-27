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
: Dokument, kterým pojišťovna na konci roku vyčíslí, kolik vám uznala a zaplatila. Modul z něj umí rozpoznat sazby a slouží k porovnání s vlastním výpočtem.

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
: Splněné ukazatele kvality a dostupnosti (ordinační hodiny, vzdělání a další), za které pojišťovna navyšuje úhradu (promítají se do KN).

---

## Pojištěnci a náklady { #pojistenci }

**Mimořádně nákladný pojištěnec (MNP)**
: Pojištěnec, jehož úhrada překročí stanovený práh (5násobek PUROo). Péče o takového pojištěnce se hradí mimo strop – proto je výhodné je správně podchytit.

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

**Odvolání**
: Podání proti vyúčtování. Modul k němu připraví podklad – ale jen tehdy, kdy rozpor skutečně omezuje vaši úhradu (jinak námitka nemá ekonomický smysl).

---

## Vzorec maximální úhrady { #vzorec }

Pro úplnost – takto se maximální úhrada počítá:

```
MAXÚ = (Konstanta + KN) × [ POPzpoZ × PUROo + max(PUROo × POPzpoMh ; UHRMh − UHRMr) ]
```

Zjednodušeně: vezme se počet zařazených pojištěnců krát průměrná úhrada na pojištěnce, přičte se část za mimořádně nákladné, a celé se navýší koeficienty z vyhlášky a bonifikací. Sazby (Konstanta, hodnota bodu, koeficienty) jsou pro celý rok pevné – mění se jen počty pojištěnců.

!!! tip "Kde to uvidíte"
    Konkrétní hodnoty pro vaši ordinaci najdete v [Přehledu](index.md) (maximální úhrada) a v Nastavení (úřední sazby).
