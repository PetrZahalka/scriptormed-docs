---
title: Klinická zpráva
description: Struktura výstupní klinické zprávy v ScriptorMed — přizpůsobená podle odbornosti
---

# Klinická zpráva

Výstupní zpráva se skládá ze dvou částí oddělených vodorovnou čarou (`---`). Struktura první části se přizpůsobí vaší odbornosti a zvyklostem.

---

## Část 1 — Klinická zpráva

Strukturovaná klinická zpráva ve formátu odpovídajícím vaší odbornosti. Níže jsou příklady typických struktur — skutečný formát závisí na vašem nastavení a odbornosti zvolené při registraci.

### Společné sekce (všechny odbornosti)

Většina odborností sdílí základní strukturu anamnézy a závěru:

| Zkratka | Sekce |
|---------|-------|
| **RA** | Rodinná anamnéza |
| **OA** | Osobní anamnéza |
| **FA** | Farmakologická anamnéza |
| **AA** | Alergická anamnéza |
| **GA** | Gynekologická anamnéza |
| **SPA** | Sociálně-pracovní anamnéza |
| **NO** | Nynější onemocnění |
| | **Vyšetření** (Subjektivně / Objektivně / Status localis) |
| | **Závěr** |
| | **Doporučení** |
| | **Kontrola** |

### Příklady podle odbornosti

=== "Dermatologie"

    Dermatologická zpráva klade důraz na kožní nález a lokální status:

    | Zkratka | Sekce |
    |---------|-------|
    | RA, OA, FA, AA, GA, SPA | Standardní anamnéza |
    | **OP** | Operační anamnéza |
    | **VA** | Venerologická anamnéza |
    | **KA** | Kožní anamnéza (dermatologická historie) |
    | **NO** | Nynější onemocnění — **klíčová sekce** |
    | | Vyšetření — **Status localis** (detailní popis lokálního nálezu) |
    | | Provedené výkony |
    | | Závěr, Doporučení, Kontrola |
    | | Poučení pacienta |
    | **ZP** | Zdravotní pojišťovna |

=== "Praktické lékařství"

    Praktický lékař pracuje s širší anamnézou a komplexnějším vyšetřením:

    | Zkratka | Sekce |
    |---------|-------|
    | RA, OA, FA, AA, GA, SPA | Standardní anamnéza |
    | **OP** | Operační anamnéza |
    | **EP** | Epidemiologická anamnéza |
    | **NO** | Nynější onemocnění |
    | | Vyšetření (fyzikální nález, vitální funkce) |
    | | Závěr, Doporučení, Kontrola |
    | | Předpis léků, Žádanky |

=== "Kardiologie"

    Kardiologická zpráva se zaměřuje na kardiovaskulární systém:

    | Zkratka | Sekce |
    |---------|-------|
    | RA, OA, FA, AA, SPA | Standardní anamnéza |
    | **KA** | Kardiologická anamnéza |
    | **NO** | Nynější onemocnění |
    | | Vyšetření (EKG, echokardiografie, auskultace) |
    | | Závěr, Doporučení, Kontrola |

=== "Jiná odbornost"

    Pokud vaše odbornost není v seznamu, systém použije univerzální šablonu. Tu si můžete přizpůsobit vložením vzorové zprávy v [nastavení](nastaveni.md#prizpusobeni-vystupu).

    Univerzální šablona obsahuje:

    - Standardní anamnézu (RA, OA, FA, AA, SPA)
    - Nynější onemocnění
    - Vyšetření
    - Závěr a Doporučení

!!! tip "Přizpůsobení"
    Struktura zprávy není pevně daná — můžete ji přizpůsobit svým zvyklostem vložením vzorové zprávy v [nastavení aplikace](nastaveni.md#prizpusobeni-vystupu). Systém se naučí váš styl a bude ho dodržovat.

---

## Část 2 — Návrhy umělé inteligence { #ai-navrhy }

Pod oddělovačem `---` naleznete nezávislé návrhy AI:

### Návrh LLM Diferenciální diagnóza

3–5 možných diagnóz seřazených podle pravděpodobnosti. AI navrhuje diagnózy nezávisle na lékaři — slouží jako kontrolní seznam.

### Návrh LLM Doporučený další postup

Návrhy dalších vyšetření nebo terapeutických kroků na základě přepisu konzultace.

!!! warning "Důležité upozornění"
    Návrhy umělé inteligence jsou **pouze podpůrné**. Slouží jako kontrolní seznam a inspirace — finální diagnózu a terapeutický plán vždy určuje lékař.
    
    AI návrhy **nejsou součástí** oficiální klinické zprávy a neměly by být přenášeny do NIS bez revize lékařem.

---

## Úprava zprávy { #uprava-zpravy }

Vygenerovaná zpráva se zobrazí v textovém editoru, kde ji můžete libovolně upravit. Text zprávy je v čistém formátu (bez formátování) pro snadný přenos do jakéhokoliv nemocničního informačního systému.

- **Klikněte do textu** a upravte libovolnou část
- **Opravte překlepy** — přepis nemusí být 100% přesný u neobvyklých termínů
- **Doplňte informace** — přidejte detaily, které nebyly v nahrávce
- **Změňte formulaci** — přizpůsobte text vašemu stylu

### Kopírování do NIS

Text zprávy je v čistém formátu pro snadný přenos:

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
| **Kvalita mikrofonu** | Vysoký — Jabra konferenční mikrofon dává nejlepší výsledky |
| **Hluk prostředí** | Vysoký — ticho = méně chyb v přepisu |
| **Zřetelnost řeči** | Střední — zřetelné diktování odborných termínů pomáhá |
| **Délka nahrávky** | Střední — velmi krátké nahrávky dávají méně kontextu |
| **Vzorová zpráva** | Střední — přizpůsobí formát vašemu stylu a odbornosti |

!!! info "Přesnost názvů léků"
    AI přepisuje a uvádí **přesné názvy léků a dávkování** tak, jak zazní v nahrávce. Pokud přepis obsahuje chybu v názvu léku, vždy ji ručně opravte.
