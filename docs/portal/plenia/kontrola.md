---
title: Úhrady – kontrola vykazování
description: Kontrola frekvenčních omezení výkonů a porovnání vašich dat s vyúčtováním pojišťovny jako podklad pro odvolání.
---

# Kontrola vykazování

Obrazovka **Kontrola** hlídá dvě věci: zda vykazujete v souladu s frekvenčními omezeními výkonů a zda vaše data souhlasí s vyúčtováním pojišťovny.

---

## Frekvenční omezení { #frekvence }

Seznam zdravotních výkonů u řady výkonů stanovuje, kolikrát smí být vykázán za dané období (den, týden, měsíc, čtvrtletí, pololetí, rok). Modul projde vaše vykázaná data a **označí překročení**.

U každého nálezu vidíte pojištěnce, kód a název výkonu, kolikrát byl vykázán a jaký je limit.

!!! tip "Pokrytí číselníku"
    Modul ukazuje, kolik z vykázaných kódů má v číselníku definované frekvenční omezení – víte tak, jakou část vykazování kontrola pokrývá.

---

## Rekonciliace s vyúčtováním { #rekonciliace }

Rekonciliace porovná **váš výpočet** (z odeslaných dávek) s **vyúčtováním pojišťovny**. Cílem je odhalit rozpor – například že pojišťovna uznala méně pojištěnců, než jste vykázali, a tím vám zkrátila strop.

Aby porovnání fungovalo, zadejte úřední hodnoty z vyúčtování v [Nastavení](nastaveni-dodatky.md). Modul hodnoty z vyúčtování **nikdy nepřebírá do vlastního výpočtu** – jen je porovnává.

---

## Podklad pro odvolání { #odvolani }

Pokud rekonciliace najde rozpor, modul k němu připraví podklad pro odvolání.

!!! warning "Kdy má odvolání smysl"
    Podklad pro odvolání modul nabídne **jen tehdy, kdy rozpor skutečně omezuje vaši úhradu** (strop reálně krátí platbu). Pokud máte rezervu a strop neomezuje, rozdíl nemá ekonomický dopad a odvolání nedává smysl.

!!! warning "Vykázané vs. uznané"
    Vaše čísla vychází z toho, co jste **vykázali**; pojišťovna platí z toho, co **uznala**. Případný rozdíl (neuznané výkony, srážky) je přesně to, co rekonciliace pomáhá najít.

---

## Související { #souvisejici }

- Zadání úředních hodnot: [Nastavení a dodatky](nastaveni-dodatky.md)
- Význam pojmů (rekonciliace, strop): [Slovníček](slovnicek.md)
