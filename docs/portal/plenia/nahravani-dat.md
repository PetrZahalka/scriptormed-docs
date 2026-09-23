---
title: Plenia – nahrávání dat
description: Jak do modulu Plenia odeslat K-dávky, faktury a PDF vyúčtování či dodatky a jak sledovat pokrytí měsíců.
---

# Nahrávání dat

Veškerá data nahráváte na jednom místě – v **Nastavení**. Modul podle obsahu sám pozná, o jaký soubor jde, kterou pojišťovnu a období se týká. Nic nevyplňujete ručně.

---

## Jaké soubory odeslat { #soubory }

| Soubor | Co obsahuje | Kam se zařadí |
|--------|-------------|----------------|
| **K-dávka** | Vykázaná péče (doklady, výkony, materiál) | Základ pro výpočet maximální úhrady |
| **Faktura (FDAVKA)** | Předběžná měsíční úhrada | Eviduje se jako záloha |
| **PDF vyúčtování / dodatek** | Roční vyúčtování nebo úhradový dodatek | Archiv dokumentů + rozpoznané sazby |

Soubory K-dávek a faktur získáte ze svého ordinačního programu, PDF dokumenty od pojišťovny (datovou schránkou nebo e-mailem). Můžete jich vybrat víc najednou. Stejný soubor podruhé nevadí – duplicitní nahrání modul pozná a přeskočí.

Pokud se záloha z faktury nerozpozná, můžete ji zapsat ručně do [mřížky záloh v Nastavení](nastaveni-dodatky.md#zalohy).

!!! info "Zkušební režim"
    Ve zkušebním režimu lze nahrávat jen dávky VZP a z aktuálního roku jen období leden–květen – podrobnosti v kapitole [Zkušební režim](zkusebni-rezim.md#limit).

!!! tip "Pojišťovna a období se rozpoznají samy"
    Pojišťovnu modul určí z názvu souboru, období z jeho hlavičky. U PDF rozpozná i druh dokumentu a rok, na který se vztahuje.

---

## Zpracování na pozadí { #zpracovani }

Po odeslání se soubory zpracují na pozadí – nemusíte čekat.

- **K-dávky** se zpracují řádově během několika sekund.
- **PDF dokumenty** se zpracovávají déle (rozpoznávají se z nich hodnoty); u každého vidíte stav: *čeká na zpracování*, *zpracovává se*, *hotovo*, případně *chyba*.

!!! warning "Citlivá péče o sdílené zdroje"
    Rozpoznávání hodnot z PDF má nižší prioritu než zpracování diktovaných konzultací – aby Plenia nikdy nezpomalila hlavní práci. Při větším množství dokumentů proto může chvíli trvat, než se všechny zpracují.

---

## Pokrytí měsíců { #pokryti }

U každé pojišťovny a roku vidíte mřížku 12 měsíců se stavem:

| Značka | Význam |
|--------|--------|
| ✓ | měsíc zpracován |
| ⏳ | zpracovává se |
| ∅ | bez výkonů (záměrně prázdný měsíc) |
| ✗ | chyba zpracování |
| — | chybí (zatím nenahráno) |

Pokud jste v některém měsíci záměrně nic nevykázali, klikněte u něj na „—" a označte ho jako **bez výkonů**. Takový měsíc se počítá jako úplný, ne jako chybějící.

---

## Potvrzení kompletního roku { #potvrzeni }

Jakmile máte všech 12 měsíců (zpracovaných nebo označených jako bez výkonů), můžete rok **potvrdit jako kompletní**. Teprve potom se maximální úhrada počítá jako definitivní.

!!! warning "Proč na tom záleží"
    Dokud rok není kompletní, je maximální úhrada **orientační** – počítá se z neúplných dat a bude se ještě měnit. Probíhající rok proto nelze potvrdit; jeho hodnota zůstává orientační až do konce roku.

---

## Upozornění přímo v modulu { #upozorneni-modul }

Na nedodělky vás Plenia upozorní i přímo v modulu – žlutým proužkem v záhlaví každé stránky, dokud problém trvá:

- **chybějící K-dávky** za poslední uzavřený měsíc,
- **nezadané splněné bonifikace** pro běžící rok,
- **nezadané úřední referenční hodnoty** od pojišťovny,
- doklady s číslem pojištěnce, ze kterého **nejde určit datum narození**.

Tam, kde jde věc rovnou napravit, má upozornění odkaz **Vyřešit**, který vás zavede na správné místo.

---

## E-mailová upozornění { #upozorneni }

Na termíny nemusíte myslet – modul posílá na e-mail správce ordinace automatická upozornění:

- **Chybějící K-dávka** za minulý měsíc – přijde po 15. dni měsíce, pokud dávka není nahraná ani měsíc není označen „bez výkonů".
- **Čerpání stropu** – při překročení 85 % a 100 % maximální úhrady.

Každá událost se hlásí jen jednou a upozornění chodí pouze při práci s reálnými daty (ukázkový režim se nenotifikuje).

!!! tip "Odkaz vede přímo na akci"
    Upozornění na chybějící K-dávky (banner v modulu i e-mail) odkazuje **rovnou na nahrání dat v Nastavení**. Odkaz rozlišuje mezi dvěma akcemi: buď dávku v Nastavení nahrajete, nebo v [Přehledu](#pokryti) měsíc označíte jako „bez výkonů", pokud jste v něm záměrně nic nevykázali.

---

## Související { #souvisejici }

- Co se s daty počítá: [Maximální úhrada a čerpání stropu](maxu-cerpani.md)
- Význam pojmů: [Slovníček](slovnicek.md)
