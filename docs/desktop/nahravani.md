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

Po ukončení nahrávání se nahrávka odešle na server. Ve výchozím nastavení se odesílá automaticky po zastavení.

V [nastavení aplikace](nastaveni.md#rezim-odesilani) můžete zvolit mezi automatickým a manuálním odesláním. Při manuálním režimu nahrávka zůstane ve stavu „nahráno" a odešlete ji ručně ze seznamu konzultací.

Pokud odeslání selže (např. výpadek internetu), aplikace ho v automatickém režimu **opakuje sama na pozadí** s postupně rostoucím odstupem — nahrávka se neztratí a není potřeba nic dělat. Počet čekajících nahrávek ukazuje indikátor „n čeká" ve stavovém řádku.

---

## Stavy zpracování { #stavy-konzultaci }

Po odeslání nahrávky se zobrazí indikátor průběhu:

| Stav | Význam |
|------|--------|
| **Připraveno** | Rozpracovaná konzultace — nahrávání ještě neproběhlo nebo pokračuje později |
| **Odesílání** | Nahrávka se nahrává na server |
| **Zpracovává se** | Server přepisuje zvuk a generuje zprávu |
| **Dokončeno** | Zpráva je připravena k zobrazení |
| **Chyba** | Zpracování se nezdařilo (viz [Řešení problémů](../faq.md)) |
| **Odmítnuto** | Server nahrávku opakovaně odmítl — automatické odesílání se zastavilo (viz níže) |

Typická doba zpracování je **30–90 sekund** v závislosti na délce konzultace. U dlouhých nahrávek může samotné odeslání trvat i několik minut — **aplikaci během odesílání neukončujte**.

### Stav „Odmítnuto" { #stav-odmitnuto }

Pokud server nahrávku odmítne **pětkrát po sobě se stejným výsledkem**, aplikace přestane odesílání automaticky opakovat a konzultaci označí červeným štítkem **Odmítnuto**:

- v detailu konzultace vidíte **důvod od serveru**,
- tlačítkem **Zkusit znovu** vrátíte nahrávku do fronty a odeslání se ihned zopakuje,
- nahrávka **zůstává uložená v počítači** — nikdy se nemaže.

Dočasné výpadky (internet, přetížený server) se tohoto stavu netýkají — ty aplikace řeší dál automaticky bez omezení.

### Zkušební období a nahrávání { #trial-a-nahravani }

Po vypršení trialu (včetně ochranné lhůty do následujícího pracovního dne) nelze **začít novou nahrávku** — aplikace zobrazí „Trial vypršel — pro pokračování upgradujte." Rozpracované konzultace (pauza, dovyšetření) a odeslání už nahraného fungují dál. Poslední den trialu se zobrazuje upozornění „Trial končí, poslední den."

---

## Ukázková zpráva { #ukazkova-zprava }

Na hlavní obrazovce najdete tlačítko **„Zobrazit ukázkovou zprávu"** — vygeneruje během pár vteřin vzorovou klinickou zprávu ve formátu vaší odbornosti, **bez pacienta a bez nahrávání zvuku**. Hodí se pro rychlý náhled toho, jak výstup vypadá, zejména při onboardingu nebo po úpravě formátu zprávy.

Pokud si v [Nastavení](nastaveni.md#prizpusobeni-vystupu) upravíte formát zprávy podle svého vzoru, aplikace vám rovnou nabídne zobrazit ukázku v novém formátu.

Ukázkové zprávy zůstávají v historii konzultací označené štítkem **„Demo"**, takže je snadno odlišíte od skutečných konzultací.

!!! info "Nezapočítává se do limitů"
    Ukázkové zprávy se nezapočítávají do limitu konzultací ani do fakturace. V rámci trialu můžete vygenerovat max **3 ukázky**, dále vždy **1 ukázku na každou verzi formátu zprávy** (změna formátu v Nastavení odemkne novou ukázku), s tvrdým stropem **10 ukázek za 30 dní**.

---

## Tipy pro kvalitní nahrávku

!!! tip "Mikrofon"
    - Doporučujeme konferenční mikrofon **Jabra** pro nejlepší výsledky
    - Umístěte mikrofon mezi lékaře a pacienta
    - Konkrétní mikrofon můžete zvolit v [nastavení aplikace](nastaveni.md#vyber-mikrofonu)

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
    - Minimální délka je **10 sekund** — kratší nahrávku aplikace odmítne (neobsahuje dost informací pro kvalitní zprávu)
    - Maximální délka jednoho nahrávání je **30 minut** — po dosažení limitu se nahrávání automaticky zastaví a nahrávka se odešle ke zpracování
    - Spojená vícesegmentová nahrávka (nahrávání s pauzami) může mít celkem nejvýše **2 hodiny**

### Kontrola mikrofonu { #kontrola-mikrofonu }

Během nahrávání se v aplikaci zobrazuje **ukazatel úrovně zvuku**
(level meter):

- **Zelená** — signál je v pořádku, systém snímá řeč.
- **Šedá / žádný pohyb** — mikrofon nesnímá zvuk.

Pokud ukazatel nereaguje:

1. Zkontrolujte, zda je mikrofon připojen (USB / Bluetooth).
2. V [nastavení](nastaveni.md#vyber-mikrofonu) ověřte, že je vybrán správný mikrofon.
3. Zkuste tlačítko **Test mikrofonu** v nastavení.
4. V systémovém nastavení operačního systému ověřte oprávnění k mikrofonu.

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
    Smazáním konzultace z historie v aplikaci se odstraní lokální audio soubor. Na serveru zůstávají pouze anonymizované statistické údaje (datum, doba zpracování, stav) pro účely vyúčtování.
