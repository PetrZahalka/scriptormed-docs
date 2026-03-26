---
title: Řešení problémů
description: Časté problémy a jejich řešení v ScriptorMed
---

# Řešení problémů

---

## Připojení a přihlášení

??? question "Aplikace se nepřipojí k serveru"
    1. Zkontrolujte **připojení k internetu** — otevřete libovolnou webovou stránku
    2. Ověřte **správnost licenčního klíče** v nastavení — zkopírujte znovu z e-mailu
    3. Zkontrolujte, že adresa serveru je výchozí (neměňte ji, pokud vás nevyzve podpora)
    4. **Restartujte aplikaci**
    5. Pokud problém přetrvává, [kontaktujte podporu](kontakt.md) a přiložte diagnostický report

??? question "Červený indikátor v nastavení"
    Červený indikátor znamená problém s připojením. Nejčastější příčiny:

    - **Neplatný klíč** — zkopírujte znovu z e-mailu (pozor na mezery na začátku/konci)
    - **Vypršený trial** — přejděte na [portál](https://app.scriptormed.com) a vyberte placený plán
    - **Výpadek serveru** — zkuste to za několik minut znovu

??? question "Zapomněl/a jsem heslo k portálu"
    1. Přejděte na [app.scriptormed.com](https://app.scriptormed.com)
    2. Klikněte na **Zapomenuté heslo**
    3. Zadejte e-mail použitý při registraci
    4. Na e-mail obdržíte odkaz pro nastavení nového hesla

    Více v sekci [Registrace — Reset hesla](portal/registrace.md#reset-hesla).

??? question "Zapomněl/a jsem licenční klíč"
    1. Přihlaste se na [portál](https://app.scriptormed.com) — klíč najdete v sekci **Licenční klíče**
    2. Pokud se nemůžete přihlásit, využijte [reset hesla](portal/registrace.md#reset-hesla)
    3. Pokud ani to nepomůže, [kontaktujte podporu](kontakt.md) s uvedením názvu vaší ordinace

---

## Nahrávání

??? question "Nahrávání nefunguje — žádný zvuk"
    Ověřte, že má aplikace povolený přístup k mikrofonu:

    === "Windows"
        **Nastavení** → **Soukromí a zabezpečení** → **Mikrofon** → povolte přístup pro ScriptorMed

    === "macOS"
        **Předvolby systému** → **Bezpečnost a soukromí** → **Mikrofon** → zaškrtněte ScriptorMed

    Po změně oprávnění **restartujte aplikaci**.

??? question "Nahrávka se nedaří odeslat"
    1. Zkontrolujte **stabilitu internetového připojení** (nestačí jen Wi-Fi ikona — zkuste otevřít webovou stránku)
    2. Aplikace automaticky zkusí odeslání **zopakovat**
    3. Pokud chyba přetrvává, použijte funkci **Opravit data** v nastavení
    4. Po opravě dat zkuste odeslání znovu

??? question "Zpracování trvá příliš dlouho"
    Normální doba zpracování je **30–90 sekund**. Delší doby mohou nastat:

    - Při **dlouhých konzultacích** (>20 minut) — zpracování může trvat 2–3 minuty
    - Při **výpadku serveru** — zkuste to za několik minut
    
    Pokud zpracování trvá více než **5 minut**, může jít o chybu. Zkontrolujte stav konzultace — pokud ukazuje „chyba", zkuste nahrát znovu.

??? question "Mám pozastavit nahrávání během vyšetření?"
    Doporučujeme ano — během fyzického vyšetření pacienta stiskněte **Pauza**. Vyšetření obvykle neprodukuje užitečný zvuk pro přepis. Po vyšetření pokračujte nahrávání a slovně popište nález.

---

## Klinická zpráva

??? question "Zpráva nemá správný formát pro moji odbornost"
    Formát zprávy se řídí odborností zvolenou při registraci. Pokud potřebujete jiný formát:

    1. V [nastavení aplikace](desktop/nastaveni.md#prizpusobeni-vystupu) vložte vzorovou zprávu ve vašem preferovaném formátu
    2. Systém se přizpůsobí vaší struktuře a stylu
    3. Pokud potřebujete změnit odbornost, [kontaktujte podporu](kontakt.md)

??? question "Zpráva obsahuje nepřesné údaje"
    AI přepis nemusí být 100% přesný. Nejčastější chyby:

    - **Názvy léků** — neobvyklé přípravky mohou být přepsány foneticky
    - **Vlastní jména** — příjmení pacientů nemusí být správně
    - **Čísla a dávky** — vždy ověřte dávkování léků

    **Vždy zkontrolujte a upravte výstup** před přenesením do NIS.

??? question "Zpráva je neúplná"
    Možné příčiny:

    - **Příliš krátká nahrávka** (<1 minuta) — málo informací pro kvalitní zprávu
    - **Špatná kvalita zvuku** — příliš velký hluk, vzdálený mikrofon
    - **Přerušovaná řeč** — systém lépe zpracuje plynulou konverzaci

    Zkuste nahrát konzultaci znovu s lepším mikrofonem nebo v tišším prostředí.

??? question "Chci změnit formát zprávy"
    V [nastavení aplikace](desktop/nastaveni.md#prizpusobeni-vystupu) můžete vložit vzorovou zprávu. Systém podle ní přizpůsobí výstup vašemu preferovanému stylu — nezávisle na odbornosti.

---

## Mikrofon

??? question "Jaký mikrofon doporučujete?"
    Pro nejlepší výsledky doporučujeme konferenční mikrofon **Jabra** (např. Jabra Speak 510 nebo Jabra Speak2 75). Zachytí řeč lékaře i pacienta a má výborné potlačení šumu.

    Podrobnější přehled mikrofonů najdete v sekci [Instalace — Doporučení k mikrofonu](desktop/instalace.md#doporuceni-k-mikrofonu).

??? question "Mohu si vybrat mikrofon v aplikaci?"
    Aktuálně aplikace používá výchozí systémový mikrofon. Výběr konkrétního mikrofonu přímo v aplikaci připravujeme pro budoucí verzi. Zatím nastavte preferovaný mikrofon jako výchozí v nastavení operačního systému.

---

## Instalace a spuštění

??? question "Windows SmartScreen blokuje instalaci"
    Klikněte na **Další informace** → **Přesto spustit**. Varování se zobrazuje u nových aplikací — ScriptorMed je bezpečný a podepsaný certifikátem.

??? question "macOS hlásí 'neidentifikovaný vývojář'"
    Klikněte **pravým tlačítkem** na aplikaci → **Otevřít** → potvrďte v dialogu. Alternativně: **Předvolby systému** → **Bezpečnost a soukromí** → klikněte na **Přesto otevřít**.

??? question "Aplikace se nespustí / padá"
    1. **Restartujte počítač**
    2. Zkontrolujte, že splňujete [systémové požadavky](desktop/instalace.md#systemove-pozadavky)
    3. Zkuste aplikaci **přeinstalovat** (stáhněte nejnovější verzi z portálu)
    4. Pokud problém přetrvává, [kontaktujte podporu](kontakt.md) s diagnostickým reportem

---

## Licence a zařízení

??? question "Klíč nefunguje na novém počítači"
    Licenční klíč je vázán na jedno zařízení. Nejprve ho [uvolněte](desktop/nastaveni.md#uvolneni-licence) na starém počítači, pak zadejte na novém.

??? question "Vyčerpal/a jsem konzultace"
    Máte dvě možnosti:
    
    1. **Dokoupit top-up** — na portálu v sekci [Předplatné](portal/predplatne.md), platba kartou
    2. **Počkat na nové období** — konzultace se resetují každých 30 dní

    Pokud pravidelně překračujete limit, zvažte upgrade na vyšší plán.

---

## Platby

??? question "Mohu platit kartou?"
    Ano — platební karta je hlavní platební metoda. Kartou lze hradit měsíční, čtvrtletní i roční předplatné a top-up kredity. Platba kartou se aktivuje okamžitě.

??? question "Mohu platit bankovním převodem?"
    Bankovní převod (s QR fakturou) je dostupný jako alternativa, pokud z nějakého důvodu nelze použít kartu. Při bankovním převodu počítejte s prodlevou 1–2 pracovní dny.

---

## Stále potřebujete pomoc?

Pokud jste nenašli řešení svého problému:

1. **Odešlete diagnostický report** z nastavení aplikace
2. **[Kontaktujte podporu](kontakt.md)** s popisem problému a číslem verze aplikace
