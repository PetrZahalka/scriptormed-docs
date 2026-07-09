---
title: Plenia – maximální úhrada a čerpání stropu
description: Co je maximální úhrada (MAXÚ), jak číst čerpání stropu a jakými cestami úhradu optimalizovat.
---

# Maximální úhrada a čerpání stropu

## Maximální úhrada (MAXÚ) { #maxu }

**Maximální úhrada** je nejvyšší částka, kterou vám pojišťovna za daný rok zaplatí za péči podléhající regulaci. Modul ji počítá z vašich vykázaných dat podle úhradové vyhlášky příslušného roku.

V **Přehledu** vidíte maximální úhradu pro každou pojišťovnu a rok, mezi roky lze přepínat. U každého výpočtu je zdroj sazeb – zda jste je zadali z vyúčtování (*přidělená*), nebo se odhadly z dat (*z ref. dat*).

!!! info "Orientační vs. potvrzený rok"
    U nepotvrzeného (zejména probíhajícího) roku je maximální úhrada **orientační** – je počítaná z neúplných dat. Definitivní je až po [potvrzení kompletního roku](nahravani-dat.md#potvrzeni).

!!! info "Do 100 pojištěnců bez stropu"
    Pokud jste v referenčním **nebo** v hodnoceném (kompletním) roce ošetřili nejvýše 100 unikátních pojištěnců dané pojišťovny, strop se neuplatní – péče se hradí bez regulačního omezení. Modul to u takové pojišťovny zobrazí.

---

## Čerpání stropu { #cerpani }

Na obrazovce **Čerpání stropu** vidíte, kolik z maximální úhrady už máte vykázáno, graf vývoje stropu během roku a transparentní projekci do konce roku (je vidět, z čeho se počítá):

- **Limitovaná péče** – co se započítává do stropu.
- **Rezerva** – kolik ještě můžete vykázat, než strop naplníte.
- **Čerpání v %** – jak blízko jste ke stropu.

| Stav | Co znamená |
|------|------------|
| **Rezerva** | Máte prostor – vykázaná péče se proplácí v plné výši. |
| **Blízko stropu** | Blížíte se k hranici – další limitovaná péče se nemusí proplatit. |
| **Přečerpáno** | Jste nad stropem – péče nad maximální úhradou se krátí. |

!!! tip "Co je nad stropem se neztrácí automaticky"
    Vždy zvažte, zda péči nelze vykázat **mimo strop** (viz níže) – tam se hradí v plné výši nad rámec maximální úhrady.

---

## Cesty optimalizace { #optimalizace }

Pokud se blížíte ke stropu nebo ho překračujete, modul nabízí konkrétní cesty:

1. **Mimořádně nákladní pojištěnci** – pacienti blízko prahu (kandidáti). Doplněním indikované péče překročí práh a jejich péče se pak ve stropu zohlední samostatně, nad rámec základního výpočtu. Viz [Pojištěnci a mimořádně nákladní](pojistenci-mnp.md).
2. **Noví pojištěnci** – zvyšují počet zařazených pojištěnců, a tím i maximální úhradu.
3. **Výkony mimo strop** – signální, distanční, od roku 2026 péče o děti do 15 let a nově nasmlouvané výkony se hradí v plné výši mimo strop.
4. **Bonifikace** – mají dvojí přínos: vyšší hodnotu bodu (koruny přímo na vykázané péči) a vyšší koeficient navýšení (vyšší strop). Co by přineslo jejich splnění, spočítá [Simulátor](planovani-simulace.md#simulator).

---

## Výkony { #vykony }

Obrazovka **Výkony** ukáže přehled vykázaných výkonů – počet, body, úhradu, počet unikátních pojištěnců a podíl na celku. Výkony hrazené mimo strop jsou označené. V přepínači pojišťoven lze zvolit **„Vše"** – výkony ze všech pojišťoven dohromady.

Kliknutím na kód otevřete **detail výkonu**: měsíční průběh vykazování, frekvenční limity ze Seznamu zdravotních výkonů, zda se výkon hradí mimo strop, a srovnání s minulým rokem.

!!! tip "Názvy výkonů"
    U kódů se zobrazuje název podle Seznamu zdravotních výkonů, takže nemusíte kódy dohledávat.

---

## Související { #souvisejici }

- Mimořádně nákladní pojištěnci a kandidáti: [Pojištěnci](pojistenci-mnp.md)
- Význam pojmů (strop, mimo strop, PUROo): [Slovníček](slovnicek.md)
