---
title: Úvod
description: Uživatelská dokumentace pro ScriptorMed — AI-asistovaná klinická dokumentace
---

# ScriptorMed Dokumentace

Vítejte v dokumentaci **ScriptorMed** — platformy pro AI-asistovanou klinickou dokumentaci.

ScriptorMed automatizuje tvorbu lékařských zpráv z audiozáznamů konzultací. Nahrajte vyšetření, a během minuty máte strukturovanou klinickou zprávu připravenou k vložení do vašeho nemocničního informačního systému.

---

## Jak začít

<div class="grid cards" markdown>

-   :material-monitor:{ .lg .middle } **Desktop aplikace**

    ---

    Nahrávání konzultací a generování klinických zpráv.

    [:octicons-arrow-right-24: Instalace](desktop/instalace.md)

-   :material-web:{ .lg .middle } **Portál**

    ---

    Správa předplatného, licenčních klíčů a fakturace.

    [:octicons-arrow-right-24: Registrace](portal/registrace.md)

-   :material-help-circle:{ .lg .middle } **Řešení problémů**

    ---

    Odpovědi na časté otázky a řešení technických problémů.

    [:octicons-arrow-right-24: FAQ](faq.md)

-   :material-email:{ .lg .middle } **Kontakt**

    ---

    Technická podpora a kontaktní údaje.

    [:octicons-arrow-right-24: Kontakt](kontakt.md)

</div>

---

## Jak ScriptorMed funguje

```mermaid
graph LR
    A[🎙️ Nahrávání] --> B[📤 Odeslání]
    B --> C[📝 Přepis řeči]
    C --> D[🤖 AI analýza]
    D --> E[📋 Klinická zpráva]
```

| Krok | Co se děje | Doba |
|------|-----------|------|
| **Nahrávání** | Aplikace zachytí zvuk z mikrofonu | Délka konzultace |
| **Odeslání** | Nahrávka se odešle na server | 2–5 sekund |
| **Přepis** | Rozpoznávání řeči převede zvuk na text | 10–30 sekund |
| **AI analýza** | Umělá inteligence vytvoří strukturovanou zprávu | 15–45 sekund |
| **Výsledek** | Hotová zpráva se zobrazí v aplikaci | Okamžitě |

!!! tip "Celková doba zpracování"
    Od ukončení nahrávání po hotovou zprávu typicky **30–90 sekund** v závislosti na délce konzultace.

---

## Pro koho je ScriptorMed určen

ScriptorMed je navržen pro **lékaře napříč odbornostmi**. Systém přizpůsobí strukturu a formát výstupní zprávy podle vaší specializace a vašich zvyklostí.

Aktuálně podporované odbornosti zahrnují dermatologii, praktické lékařství a další obory — a seznam se neustále rozšiřuje. Pokud vaše odbornost není v nabídce při registraci, zvolte „Jiný" a systém použije univerzální šablonu, kterou si můžete dále přizpůsobit.

!!! info "Přizpůsobení výstupu"
    Každý lékař si může formát zprávy přizpůsobit svým potřebám vložením vzorové zprávy v [nastavení aplikace](desktop/nastaveni.md#prizpusobeni-vystupu). ScriptorMed se naučí váš styl a strukturu.
