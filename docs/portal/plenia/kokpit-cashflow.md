---
title: Plenia – Kokpit a Cash-flow
description: Celkový přehled přes všechny pojišťovny (Kokpit) a časová osa peněz – zálohy, vykázaná péče a odhad doplatku (Cash-flow).
---

# Kokpit a Cash-flow

Dvě obrazovky, které se dívají **přes všechny pojišťovny najednou** – bez proklikávání.

---

## Kokpit { #kokpit }

**Kokpit** je první stránka v navigaci modulu a odpovídá na otázku *„jak na tom letos celkově jsem a co od pojišťoven ještě čekat"*. Nahoře je celkový roční souhrn a přepínač roku, pod ním karta za každou pojišťovnu:

- **Maximální úhrada (MAXÚ)** a **čerpání stropu**,
- **úhrada za vykázanou péči (odhad)** – kolik by pojišťovna měla za vykázanou péči podle úhradové vyhlášky uhradit,
- **zálohy za rok** – zadaný roční předpis předběžných úhrad, který pojišťovna vyplácí průběžně do konce roku (nejde o už přijaté platby),
- **očekávaný doplatek při ročním vyúčtování** – rozdíl mezi odhadem a zálohami; u pojišťoven s nahraným ročním vyúčtováním se místo něj zobrazí **vyúčtování vs. odhad** (rozdíl je podnět ke kontrole, případně námitce),
- **pokrytí dat** – které měsíce máte nahrané.

!!! tip "Doplatek potřebuje zálohy"
    Očekávaný doplatek se zobrazuje jen u pojišťoven, kde jsou zadané zálohy nebo nahrané roční vyúčtování. Zálohy doplníte dávkou faktur (FDAVKA) nebo ručně v [Nastavení](nastaveni-dodatky.md#zalohy).

---

## Cash-flow { #cashflow }

**Cash-flow** ukazuje peníze v čase, po měsících i za jednotlivé pojišťovny:

- kolik pojišťovny podle zadaných záloh **průběžně vyplácejí**,
- kolik péče je **vykázáno** (kumulativně),
- kolik má za rok **celkem přijít** (očekávaná úhrada),
- **odhad doplatku či vratky** po ročním vyúčtování.

Kladný doplatek znamená, že pojišťovna po vyúčtování doplatí; záporný, že hrozí vratka.

!!! warning "Bez záloh je křivka nulová"
    Vyplácené zálohy modul zná jen z faktur (FDAVKA), které nahrajete, nebo z ručně zadaných hodnot. Bez nich je křivka úhrad nulová a stránka na to upozorní.

!!! info "Průběžné saldo záloh"
    V běžícím roce jde o **průběžné saldo záloh** – definitivně se vyrovná až ročním vyúčtováním pojišťovny (do 150 dnů od konce roku).

---

## Související { #souvisejici }

- Zadání záloh: [Nastavení a dodatky](nastaveni-dodatky.md#zalohy)
- Detail stropu jedné pojišťovny: [Maximální úhrada a čerpání stropu](maxu-cerpani.md)
- Roční vypořádání: [Reporty a roční uzávěrka](reporty-uzaverka.md#uzaverka)
