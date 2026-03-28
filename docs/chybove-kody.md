---
title: Chybové kódy
description: Referenční přehled chybových kódů systému ScriptorMed (SM-*).
---

# Chybové kódy { #chybove-kody }

ScriptorMed používá strukturovaný systém chybových kódů ve formátu `SM-{DOMÉNA}-{NNN}`. Každý kód jednoznačně identifikuje typ chyby, oblast systému, kde k ní došlo, a to, zda je zobrazena lékaři nebo sledována pouze interně.

---

## Formát kódu { #format }

```
SM-UPLOAD-005
│  │       └── pořadové číslo (třímístné)
│  └────────── doména (oblast systému)
└──────────── prefix ScriptorMed
```

Kódy jsou **trvalé** — jednou přidělený kód není nikdy znovu použit. Zrušený kód zůstane reserved.

---

## Domény { #domeny }

| Doména | Oblast systému | Viditelnost |
|--------|---------------|-------------|
| `UPLOAD` | Upload a validace souboru | uživatel |
| `PREP` | Audio preprocessing | uživatel |
| `STT` | Speech-to-Text přepis | uživatel |
| `LLM` | Generování klinické zprávy | uživatel |
| `S3` | Úložiště (MinIO) | uživatel |
| `PIPE` | Obecný pipeline | uživatel |
| `SAVE` | Uložení výsledku | uživatel |
| `AUTH` | Autentizace | interní |
| `EMAIL` | Doručování e-mailů | interní |
| `PAY` | Platby | interní |
| `BILL` | Fakturace | interní |
| `ADMIN` | Admin operace | interní |
| `INFRA` | Infrastruktura | interní |

---

## Viditelnost { #viditelnost }

### Uživatelské kódy (domény UPLOAD – SAVE)

Lékaři tyto kódy vidí přímo v **Desktop aplikaci** — v dialogu chyby po neúspěšném zpracování konzultace.

!!! example "Ukázka zobrazení v Desktop aplikaci"
    ```
    Zpracování selhalo
    ──────────────────
    Překročen limit konzultací.
    Kód chyby: SM-UPLOAD-005

    Kontaktujte podporu nebo si zakupte doplněk konzultací.
    ```

Kód spolu se zprávou lze nahlásit podpoře, která tak okamžitě identifikuje příčinu problému.

### Interní kódy (domény AUTH – INFRA)

Tyto kódy se lékaři **nezobrazují**. Jsou dostupné výhradně v:

- **Admin panelu** — v detailu každé chyby v sekci *Logy & chyby*
- **Sentry** — v telemetrii jako tag `error_code`

---

## Přehled kódů { #prehled }

### UPLOAD — Upload a validace { #upload }

Chyby zachycené při příjmu nahrávky z Desktop aplikace.

| Kód | Zpráva | Znovu odeslat? | HTTP |
|-----|--------|:--------------:|:----:|
| `SM-UPLOAD-001` | Neplatný WAV soubor. | Ne | 400 |
| `SM-UPLOAD-002` | Neplatné audio parametry. | Ne | 400 |
| `SM-UPLOAD-003` | Chyba při sloučení audio souborů. | Ne | 400 |
| `SM-UPLOAD-004` | Chyba čtení nahraného souboru. | Ano | 500 |
| `SM-UPLOAD-005` | Překročen limit konzultací. | Ne | 429 |
| `SM-UPLOAD-006` | Selhalo nahrání do úložiště. | Ano | 503 |
| `SM-UPLOAD-007` | Chyba uložení do databáze. | Ano | 503 |
| `SM-UPLOAD-008` | Chyba odeslání do fronty zpracování. | Ano | 503 |

### PREP — Audio preprocessing { #prep }

Chyby při přípravě a normalizaci audia před přepisem.

| Kód | Zpráva | Znovu odeslat? |
|-----|--------|:--------------:|
| `SM-PREP-001` | Chyba načtení konfigurace preprocessoru. | Ano |
| `SM-PREP-002` | Neplatná vzorkovací frekvence. | Ne |
| `SM-PREP-003` | Chyba analýzy hlasitosti. | Ano |
| `SM-PREP-004` | Chyba zpracování audia. | Ano |
| `SM-PREP-005` | Preprocessing selhalo. | Ano |

### STT — Speech-to-Text { #stt }

Chyby přepisu řeči na text.

| Kód | Zpráva | Znovu odeslat? |
|-----|--------|:--------------:|
| `SM-STT-001` | Chyba čtení délky WAV. | Ne |
| `SM-STT-002` | Chyba inicializace STT providera. | Ano |
| `SM-STT-003` | Síťová chyba při přepisu řeči. | Ano |
| `SM-STT-004` | Timeout při přepisu řeči. | Ano |
| `SM-STT-005` | Azure STT cancel/error. | Ano |
| `SM-STT-006` | Chybí API klíč pro STT. | Ne |
| `SM-STT-007` | Neplatná HTTP odpověď z STT API. | Ano |
| `SM-STT-008` | Kvóta STT providera vyčerpána. | Ne |
| `SM-STT-009` | Přepis řeči selhal (všechny providery). | Ne |

### LLM — Generování zprávy { #llm }

Chyby při generování klinického záznamu jazykovým modelem.

| Kód | Zpráva | Znovu odeslat? |
|-----|--------|:--------------:|
| `SM-LLM-001` | API chyba LLM providera. | Ano |
| `SM-LLM-002` | Prázdná odpověď z LLM. | Ano |
| `SM-LLM-003` | Chyba parsování odpovědi LLM. | Ano |
| `SM-LLM-004` | Generování klinického záznamu selhalo. | Ano |
| `SM-LLM-005` | Chyba šablony pro LLM. | Ne |
| `SM-LLM-006` | Kvóta LLM providera vyčerpána. | Ne |
| `SM-LLM-007` | Generování selhalo (všechny providery). | Ne |

### S3 — Úložiště { #s3 }

Chyby práce se soubory v objektovém úložišti (MinIO).

| Kód | Zpráva | Znovu odeslat? |
|-----|--------|:--------------:|
| `SM-S3-001` | Chyba inicializace úložiště. | Ne |
| `SM-S3-002` | Bucket neexistuje. | Ano |
| `SM-S3-003` | Nahrání souboru do úložiště selhalo. | Ano |
| `SM-S3-004` | Stažení souboru z úložiště selhalo. | Ano |
| `SM-S3-005` | Soubor nenalezen v úložišti. | Ne |
| `SM-S3-006` | Smazání souboru z úložiště selhalo. | Ano |
| `SM-S3-007` | Generování URL pro stažení selhalo. | Ano |

### PIPE — Obecný pipeline { #pipe }

Chyby na úrovni orchestrace celého zpracovacího řetězce.

| Kód | Zpráva | Znovu odeslat? |
|-----|--------|:--------------:|
| `SM-PIPE-001` | Neočekávaná chyba v pipeline. | Ano |
| `SM-PIPE-002` | Maximální počet pokusů vyčerpán. | Ne |
| `SM-PIPE-003` | Chyba při úklidu. | Ano |

### SAVE — Uložení výsledku { #save }

Chyby při finálním uložení zprávy a usage záznamu.

| Kód | Zpráva | Znovu odeslat? |
|-----|--------|:--------------:|
| `SM-SAVE-001` | Chyba načtení šablony. | Ano |
| `SM-SAVE-002` | Chyba výpočtu nákladů. | Ne |
| `SM-SAVE-003` | Chyba zápisu usage logu. | Ne |
| `SM-SAVE-004` | Chyba finálního uložení. | Ano |

---

## Interní kódy { #interni }

Následující domény jsou viditelné pouze v admin panelu a Sentry. Lékaři tyto kódy nikdy nevidí.

### AUTH — Autentizace { #auth }

| Kód | Zpráva | Znovu odeslat? | HTTP |
|-----|--------|:--------------:|:----:|
| `SM-AUTH-001` | Neplatný přihlašovací token. | Ne | 401 |
| `SM-AUTH-002` | Neplatné přihlašovací údaje. | Ne | 401 |
| `SM-AUTH-003` | Účet je deaktivován. | Ne | 403 |
| `SM-AUTH-004` | Email není ověřen. | Ne | 403 |
| `SM-AUTH-005` | Překročen limit zařízení. | Ne | 403 |
| `SM-AUTH-006` | API klíč expiroval. | Ne | 401 |
| `SM-AUTH-007` | Neplatný refresh token. | Ne | 401 |

### EMAIL — Doručování e-mailů { #email }

| Kód | Zpráva | Znovu odeslat? |
|-----|--------|:--------------:|
| `SM-EMAIL-001` | Odeslání emailu selhalo. | Ano |
| `SM-EMAIL-002` | Redis fronta pro retry nedostupná. | Ne |
| `SM-EMAIL-003` | Poškozená zpráva v retry frontě. | Ne |
| `SM-EMAIL-004` | Email přesunut do dead queue. | Ne |
| `SM-EMAIL-005` | Chyba načtení email šablony. | Ne |
| `SM-EMAIL-006` | Retry email task selhala. | Ano |

### PAY — Platby { #pay }

| Kód | Zpráva | Znovu odeslat? |
|-----|--------|:--------------:|
| `SM-PAY-001` | Stripe API chyba. | Ano |
| `SM-PAY-002` | Neplatný webhook podpis. | Ne |
| `SM-PAY-003` | Webhook handler chyba. | Ano |
| `SM-PAY-004` | Fio API chyba. | Ano |
| `SM-PAY-005` | Fio JSON parse chyba. | Ano |

### BILL — Fakturace { #bill }

| Kód | Zpráva | Znovu odeslat? |
|-----|--------|:--------------:|
| `SM-BILL-001` | Trial plán nenalezen. | Ne |
| `SM-BILL-002` | Chyba generování čísla faktury. | Ne |
| `SM-BILL-003` | Chyba generování PDF faktury. | Ano |
| `SM-BILL-004` | Neznámý variabilní symbol. | Ne |
| `SM-BILL-005` | Nesedí částka platby. | Ne |
| `SM-BILL-006` | Dunning process chyba. | Ano |

### INFRA — Infrastruktura { #infra }

| Kód | Zpráva | Znovu odeslat? |
|-----|--------|:--------------:|
| `SM-INFRA-001` | Redis nedostupný. | Ano |
| `SM-INFRA-002` | Redis init fail. | Ne |
| `SM-INFRA-003` | DB commit selhání. | Ano |

---

## Co dělat při chybě { #co-delat }

=== "Lékař"

    Pokud Desktop aplikace zobrazí chybový kód, poznamenejte si ho a kontaktujte podporu:

    - **E-mail:** podpora@scriptormed.com
    - **Formulář:** [scriptormed.com/kontakt](https://www.scriptormed.com/kontakt)

    Kód nám umožní okamžitě identifikovat příčinu a navrhnout řešení. Pokud je u kódu uvedeno „Znovu odeslat: Ano", lze konzultaci zkusit zpracovat znovu — přejděte do seznamu konzultací a vyberte možnost *Zpracovat znovu*.

=== "Administrátor"

    V admin panelu jsou kódy zobrazeny v detailu každé chyby. Použijte kód jako filtr nebo vyhledejte incident v Sentry pomocí tagu `error_code`.

    Autoritativní seznam všech kódů a jejich definic je v souboru `app/core/errors.py` (třída `Errors`) v backendu.
