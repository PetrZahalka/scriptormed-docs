---
title: Klinická zpráva
description: Struktura výstupní klinické zprávy v ScriptorMed
---

# Klinická zpráva

Výstupní zpráva se skládá ze dvou částí oddělených vodorovnou čarou (`---`).

---

## Část 1 — Klinická zpráva

Strukturovaná klinická zpráva v českém dermatologickém formátu:

### Anamnéza

| Zkratka | Sekce | Popis |
|---------|-------|-------|
| **RA** | Rodinná anamnéza | Onemocnění v rodině |
| **OA** | Osobní anamnéza | Prodělaná onemocnění pacienta |
| **FA** | Farmakologická anamnéza | Užívané léky |
| **AA** | Alergická anamnéza | Známé alergie |
| **GA** | Gynekologická anamnéza | Gynekologická historie |
| **SPA** | Sociálně-pracovní anamnéza | Zaměstnání, životní styl |
| **OP** | Operační anamnéza | Proběhlé operace a zákroky |
| **VA** | Venerologická anamnéza | Venerologická historie |
| **KA** | Kožní anamnéza | Dermatologická historie |
| **NO** | Nynější onemocnění | Aktuální obtíže — **nejdůležitější sekce** |

### Vyšetření

- **Subjektivně** — co pacient popisuje
- **Objektivně** — co lékař pozoruje
- **Status localis** — detailní popis lokálního nálezu — **nejdůležitější sekce**

### Závěr a doporučení

- **Provedené výkony** — co bylo v rámci vyšetření provedeno
- **Závěr** — shrnutí a diagnóza
- **Doporučení** — terapeutický plán
- **Kontrola** — termín další kontroly
- **Poučení pacienta** — informace předané pacientovi
- **ZP** — zdravotní pojišťovna

---

## Část 2 — Návrhy umělé inteligence

Pod oddělovačem `---` naleznete nezávislé návrhy AI:

### Návrh LLM Diferenciální diagnóza

3–5 možných diagnóz seřazených podle pravděpodobnosti. AI navrhuje diagnózy nezávisle na lékaři — slouží jako kontrolní seznam.

### Návrh LLM Doporučený další postup

Návrhy dalších vyšetření nebo terapeutických kroků na základě přepisu konzultace.

!!! warning "Důležité upozornění"
    Návrhy umělé inteligence jsou **pouze podpůrné**. Slouží jako kontrolní seznam a inspirace — finální diagnózu a terapeutický plán vždy určuje lékař.
    
    AI návrhy **nejsou součástí** oficiální klinické zprávy a neměly by být přenášeny do NIS bez revize lékařem.

---

## Úprava zprávy

Vygenerovaná zpráva se zobrazí v textovém editoru, kde ji můžete libovolně upravit:

- **Klikněte do textu** a upravte libovolnou část
- **Opravte překlepy** — přepis nemusí být 100% přesný u neobvyklých termínů
- **Doplňte informace** — přidejte detaily, které nebyly v nahrávce
- **Změňte formulaci** — přizpůsobte text vašemu stylu

### Kopírování do NIS

Text zprávy je v čistém formátu (bez formátování) pro snadný přenos:

- ++ctrl+a++ vybere celý text
- ++ctrl+c++ zkopíruje do schránky (na macOS ++cmd+c++)
- Vložte do vašeho nemocničního informačního systému pomocí ++ctrl+v++

!!! tip "Selektivní kopírování"
    Nemusíte kopírovat celou zprávu. Označte myší jen tu část, kterou potřebujete (např. jen Závěr a Doporučení), a zkopírujte.

---

## Kvalita výstupu

Kvalita zprávy závisí na:

| Faktor | Vliv na kvalitu |
|--------|----------------|
| **Kvalita mikrofonu** | Vysoký — lepší mikrofon = čistější přepis |
| **Hluk prostředí** | Vysoký — ticho = méně chyb v přepisu |
| **Zřetelnost řeči** | Střední — zřetelné diktování odborných termínů pomáhá |
| **Délka nahrávky** | Střední — velmi krátké nahrávky dávají méně kontextu |
| **Vzorová zpráva** | Střední — přizpůsobí formát vašemu stylu |

!!! info "Přesnost názvů léků"
    AI přepisuje a uvádí **přesné názvy léků a dávkování** tak, jak zazní v nahrávce. Pokud přepis obsahuje chybu v názvu léku, vždy ji ručně opravte.
