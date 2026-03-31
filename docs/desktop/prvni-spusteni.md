---
title: První spuštění
description: Nastavení licenčního klíče a první konfigurace ScriptorMed Desktop
---

# První spuštění

Po instalaci je potřeba aplikaci propojit s vaším účtem pomocí **licenčního klíče**.

---

## Zadání licenčního klíče

<div class="step" markdown>
<span class="step-number">1</span>
<div class="step-content" markdown>
**Otevřete Nastavení** — klikněte na ikonu :material-cog: v pravém horním rohu hlavního okna.
</div>
</div>

<div class="step" markdown>
<span class="step-number">2</span>
<div class="step-content" markdown>
**Zadejte licenční klíč** — do pole „Licenční klíč" vložte klíč, který jste obdrželi e-mailem při registraci.
</div>
</div>

<div class="step" markdown>
<span class="step-number">3</span>
<div class="step-content" markdown>
**Ověřte připojení** — aplikace automaticky ověří platnost klíče. Zelený indikátor :material-check-circle:{ style="color: #43A65E" } znamená úspěšné připojení.
</div>
</div>

<div class="step" markdown>
<span class="step-number">4</span>
<div class="step-content" markdown>
**Nastavte vzor zprávy** *(volitelné)* — vložte vzor vaší typické klinické zprávy. Systém podle něj přizpůsobí výstupní formát. Více v sekci [Nastavení](nastaveni.md#prizpusobeni-vystupu).
</div>
</div>

---

## Formát licenčního klíče

Licenční klíč má formát:

```
sm_live_xxxxxxxxxxxxxxxxxxxxxxxx
```

- Prefix `sm_live_` označuje produkční klíč
- Klíč je unikátní pro vaši ordinaci
- Při kopírování zkontrolujte, že jste nevynechali žádné znaky

!!! warning "Vazba na zařízení"
    Licenční klíč se při prvním použití automaticky naváže na váš počítač. Pokud potřebujete aplikaci přesunout na jiný počítač, kontaktujte [podporu](../kontakt.md) — licenci uvolníme obvykle do jednoho pracovního dne.

---

## Ověření funkčnosti

Po úspěšném nastavení byste měli vidět:

| Indikátor | Stav | Význam |
|-----------|------|--------|
| :material-check-circle:{ style="color: #43A65E" } Zelený | Připojeno | Server je dostupný, klíč je platný |
| :material-close-circle:{ style="color: #D94040" } Červený | Nepřipojeno | Problém s připojením nebo klíčem |
| :material-progress-clock: Oranžový | Ověřování | Probíhá kontrola klíče |

Pokud se připojení nezdaří, zkontrolujte:

1. Internetové připojení
2. Správnost licenčního klíče (zkopírujte znovu z e-mailu)
3. Adresu serveru (ponechte výchozí, pokud vás podpora nevyzve jinak)

!!! tip "Nenašli jste e-mail s klíčem?"
    Zkontrolujte složku spam/nevyžádaná pošta. E-mail přichází z adresy `noreply@scriptormed.com`. Pokud klíč nemáte, [kontaktujte podporu](../kontakt.md).
