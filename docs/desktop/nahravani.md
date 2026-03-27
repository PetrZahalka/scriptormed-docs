---
title: Nahrávání konzultace
description: Jak nahrávat konzultace v ScriptorMed Desktop
---

# Nahrávání konzultace

Nahrávání je základní operace v ScriptorMed. Aplikace zachycuje zvuk z mikrofonu vašeho počítače ve vysoké kvalitě optimalizované pro přepis řeči.

---

## Postup nahrávání { #jak-nahravat }

<div class="step" markdown>
<span class="step-number">1</span>
<div class="step-content" markdown>
**Označení pacienta** — do pole v horní části okna zadejte identifikátor pacienta (např. iniciály, číslo karty). Slouží pouze k vašemu rozlišení konzultací — neobjevuje se v klinické zprávě.
</div>
</div>

<div class="step" markdown>
<span class="step-number">2</span>
<div class="step-content" markdown>
**Spuštění nahrávání** — klikněte na tlačítko :material-record-circle:{ style="color: #D94040" } **Nahrávat**. Indikátor nahrávání se rozsvítí.
</div>
</div>

<div class="step" markdown>
<span class="step-number">3</span>
<div class="step-content" markdown>
**Průběh konzultace** — mluvte přirozeně. Systém rozpoznává češtinu včetně odborné terminologie. Nemusíte mluvit přímo do mikrofonu — běžná vzdálenost v ordinaci postačí.
</div>
</div>

<div class="step" markdown>
<span class="step-number">4</span>
<div class="step-content" markdown>
**Pauza** *(volitelné)* — tlačítkem **Pauza** můžete nahrávání kdykoli dočasně zastavit — při telefonátu, během fyzického vyšetření, při přerušení jinou osobou. Pokračujte tlačítkem **Pokračovat**. Počet pauz není omezen.
</div>
</div>

<div class="step" markdown>
<span class="step-number">5</span>
<div class="step-content" markdown>
**Zastavení** — klikněte na **Zastavit**. Nahrávka se odešle na server ke zpracování.
</div>
</div>

### Označení pacienta { #oznaceni-pacienta }

Před zahájením nahrávání můžete zadat **označení pacienta** — libovolný
text pro vaši orientaci v historii konzultací (např. iniciály, číslo
karty nebo krátká poznámka).

!!! info "Soukromí"
    Označení pacienta slouží pouze pro vaši lokální orientaci.
    **Neposílá se na server**, neobjevuje se v klinické zprávě
    a nezanechává žádnou stopu mimo váš počítač.

---

## Odeslání nahrávky

Po ukončení nahrávání se nahrávka odešle na server. Aktuálně se odesílá automaticky po zastavení.

!!! info "Připravujeme"
    V budoucí verzi bude možné v nastavení zvolit mezi automatickým odesláním (výchozí) a manuálním odesláním, kdy si nahrávku před odesláním ještě zkontrolujete.

---

## Stavy zpracování { #stavy-konzultaci }

Po odeslání nahrávky se zobrazí indikátor průběhu:

| Stav | Význam |
|------|--------|
| **Odesílání** | Nahrávka se nahrává na server |
| **Zpracovává se** | Server přepisuje zvuk a generuje zprávu |
| **Dokončeno** | Zpráva je připravena k zobrazení |
| **Chyba** | Zpracování se nezdařilo (viz [Řešení problémů](../faq.md)) |

Typická doba zpracování je **30–90 sekund** v závislosti na délce konzultace.

---

## Tipy pro kvalitní nahrávku

!!! tip "Mikrofon"
    - Doporučujeme konferenční mikrofon **Jabra** pro nejlepší výsledky
    - Umístěte mikrofon mezi lékaře a pacienta
    - Výběr mikrofonu v aplikaci bude možný v budoucí verzi — aktuálně se používá výchozí systémový mikrofon

!!! tip "Prostředí"
    - Minimalizujte hluk pozadí (klimatizace, rádio)
    - Zavřete okna při rušné ulici
    - V tichém prostředí postačí i vestavěný mikrofon notebooku

!!! tip "Řeč"
    - Mluvte plynule — systém lépe rozpozná souvislou řeč
    - Diktujte odborné termíny zřetelně, zejména neobvyklé názvy léků
    - Není potřeba mluvit pomalu — normální tempo konverzace je ideální

!!! tip "Pauza při vyšetření"
    - Během fyzického vyšetření pacienta použijte **Pauzu** — vyšetření obvykle neprodukuje užitečný zvuk pro přepis
    - Po vyšetření pokračujte nahrávání a nadiktujte nález

!!! tip "Délka nahrávky"
    - Optimální délka: 3–15 minut
    - Krátké nahrávky (<1 min) mohou obsahovat málo informací pro kvalitní zprávu
    - Velmi dlouhé nahrávky (>30 min) prodlužují dobu zpracování

### Kontrola mikrofonu { #kontrola-mikrofonu }

Během nahrávání se v aplikaci zobrazuje **ukazatel úrovně zvuku**
(level meter):

- **Zelená** — signál je v pořádku, systém snímá řeč.
- **Šedá / žádný pohyb** — mikrofon nesnímá zvuk.

Pokud ukazatel nereaguje:

1. Zkontrolujte, zda je mikrofon připojen (USB / Bluetooth).
2. V **Nastavení** ověřte vybraný mikrofon.
3. Zkuste tlačítko **Test mikrofonu** v Nastavení.
4. V systémovém nastavení Windows ověřte oprávnění k mikrofonu.

Více viz [Řešení problémů — Mikrofon](../faq.md#mikrofon).

---

## Často kladené otázky

??? question "Musím mluvit přímo do mikrofonu?"
    Ne. S konferenčním mikrofonem Jabra postačí vzdálenost 2–3 metry. S vestavěným mikrofonem notebooku doporučujeme max 1–2 metry.

??? question "Nahrává se i pacient?"
    Ano, systém zachytí celou konverzaci. Přepis obsahuje řeč všech osob v místnosti. AI následně rozliší kontext a vytvoří strukturovanou zprávu.

??? question "Co když během nahrávání zazvoní telefon?"
    Použijte tlačítko **Pauza**. Nahrávání se zastaví a po vyřízení telefonátu pokračujte tlačítkem **Pokračovat**.

??? question "Mám pozastavit nahrávání během fyzického vyšetření?"
    Doporučujeme ano. Během vyšetření obvykle není řeč, která by přispěla ke zprávě. Po vyšetření pokračujte nahrávání a slovně popište nález — systém ho zapracuje do zprávy.

??? question "Mohu nahrávku smazat?"
    Nahrávku nelze smazat po odeslání na server. Pokud jste nahráli chybně, jednoduše ignorujte výslednou zprávu a nahrajte konzultaci znovu.
