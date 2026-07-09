---
title: Plenia – plánování a simulace
description: Simulátor „co kdyby", porovnání dodatku s vyhláškou před podpisem, meziroční vývoj ordinace a změny úhradové vyhlášky.
---

# Plánování a simulace

Obrazovky pro rozhodování dopředu: co udělá s úhradou splnění bonifikací, podpis dodatku nebo změna počtu pojištěnců.

---

## Simulátor { #simulator }

**Simulátor** modeluje scénáře „co kdyby" nad vašimi vykázanými daty:

- **Splnění bonifikací** – co by přineslo doplnění nesplněných bonifikací. U každé vidíte obě složky přínosu: navýšení hodnoty bodu (koruny přímo na vykázané péči) a koeficient navýšení (koruny na stropu).
- **Dočerpání kandidátů na MNP** – co by se stalo, kdyby pojištěnci těsně pod prahem práh překročili a jejich péče se hradila mimo strop.
- **Změna počtu pojištěnců** – dopad ±N pojištěnců na strop.

U každého scénáře je zvlášť **dopad na strop (MAXÚ)** a zvlášť **dopad na očekávanou úhradu v korunách** – zvýšení stropu se totiž na penězích projeví jen tehdy, když strop skutečně čerpáte.

!!! warning "Orientační modelace"
    Simulátor počítá nad vykázanými daty a slouží k orientaci, ne jako závazná predikce úhrady.

---

## Dodatek vs vyhláška { #dodatek }

Před podpisem letošního **úhradového dodatku** potřebujete vědět, zda se vyplatí. Obrazovka **Dodatek vs vyhláška** vezme vaše reálné výkony z posledního uzavřeného roku a ocení je třikrát:

1. **jak skutečně dopadl** minulý rok,
2. **jak by dopadl podle letošní úhradové vyhlášky**,
3. **jak by dopadl podle navrženého dodatku**.

Rozdíl v korunách je podklad pro rozhodnutí o podpisu.

!!! info "Modelové porovnání, ne předpověď"
    Jde o porovnání pravidel na známých (loňských) datech – neodhaduje, kolik péče letos vykážete. K nahrání dodatku a označení podpisu slouží [Nastavení](nastaveni-dodatky.md#dodatky).

---

## Meziroční { #mezirocni }

**Meziroční** postaví roky jedné pojišťovny vedle sebe: počet pojištěnců, body, vykázanou péči, úhradu na pojištěnce, vývoj PUROo a posuny nejčastějších výkonů. Vidíte, jak se ordinace vyvíjí a odkud se berou letošní referenční hodnoty.

!!! warning "Neúplné roky nejsou srovnatelné"
    Tabulka má sloupec s počtem nahraných měsíců a upozorní, když porovnáváte rok s neúplnými daty.

---

## Změny vyhlášky { #vyhlaska }

**Změny vyhlášky** zobrazují, co se v úhradové vyhlášce meziročně změnilo pro vaši odbornost – zeleně zlepšení, červeně zhoršení (hodnota bodu, koeficienty, bonifikace, pravidla).

---

## Související { #souvisejici }

- Co bonifikace znamenají a kde je zaškrtnout: [Nastavení a dodatky](nastaveni-dodatky.md#sazby)
- Kandidáti na MNP: [Pojištěnci a mimořádně nákladní](pojistenci-mnp.md)
- Význam pojmů: [Slovníček](slovnicek.md)
