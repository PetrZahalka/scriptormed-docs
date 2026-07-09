---
title: Zabezpečení účtu (2FA)
description: Dvoufaktorové ověření portálu — zapnutí, záložní kódy, důvěryhodná zařízení a postup při ztrátě authenticatoru.
---

# Zabezpečení účtu

Portál podporuje **dvoufaktorové ověření (2FA)** — po hesle zadáváte ještě 6místný kód z authenticator aplikace (Google Authenticator, Microsoft Authenticator, Apple Hesla a podobné). I kdyby heslo uniklo, útočník se bez vašeho telefonu nepřihlásí.

!!! warning "Pro modul Plenia je 2FA povinné"
    Modul [Plenia](plenia/index.md) pracuje s rodnými čísly pojištěnců. Uživatelé s aktivním modulem jsou po přihlášení vyzváni k nastavení 2FA a bez něj se k modulu nedostanou.

---

## Zapnutí 2FA { #zapnuti }

<div class="step" markdown>
<span class="step-number">1</span>
<div class="step-content" markdown>
**Otevřete Nastavení → Dvoufaktorové ověření** na portálu a klikněte na **Zapnout**.
</div>
</div>

<div class="step" markdown>
<span class="step-number">2</span>
<div class="step-content" markdown>
**Naskenujte QR kód** authenticator aplikací v telefonu a **potvrďte 6místným kódem**, který aplikace zobrazí.
</div>
</div>

<div class="step" markdown>
<span class="step-number">3</span>
<div class="step-content" markdown>
**Uložte si záložní kódy** — zobrazí se **jen jednou**. Vytiskněte je nebo uložte na bezpečné místo (ne do stejného telefonu). Každý kód lze použít jednou místo kódu z aplikace.
</div>
</div>

---

## Přihlašování s 2FA { #prihlaseni }

Při přihlášení zadáte po hesle 6místný kód z aplikace (nebo záložní kód).

Na vlastním počítači můžete po úspěšném ověření zaškrtnout **„Důvěřovat tomuto zařízení 30 dní"** — na daném prohlížeči se pak druhý faktor po tuto dobu znovu nevyžaduje. Důvěru zrušíte kdykoli v **Nastavení → 2FA** (odhlášení důvěryhodných zařízení); ruší se také automaticky při změně hesla nebo vypnutí 2FA.

!!! tip "Sdílené počítače"
    Na počítači v ordinaci, ke kterému má přístup víc lidí, volbu „Důvěřovat" nezaškrtávejte.

---

## Ztráta telefonu / authenticatoru { #ztrata }

1. Přihlaste se pomocí **záložního kódu**.
2. Pokud záložní kódy nemáte, použijte **reset 2FA na e-mail** — na registrovaný e-mail vám přijde odkaz pro obnovení přístupu.
3. Po přihlášení nastavte 2FA znovu s novým telefonem a uložte si nové záložní kódy.

---

## Související { #souvisejici }

- [Registrace a přihlášení](registrace.md)
- [Zapomenuté heslo](registrace.md#reset-hesla)
- Proč Plenia vyžaduje 2FA: [Plenia — přehled modulu](plenia/index.md#zaklad)
