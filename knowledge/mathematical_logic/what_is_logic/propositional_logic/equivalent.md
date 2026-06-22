---
title: 等值
tags:
  - logic
  - propositional_logic
  - classical_logic
refs:
  - "[[tautology]]"
---


# 等值

**等值 Equivalent**：设 $\varphi$ 和 $\psi$ 是两个复合命题，如果它们含有相同的命题变元，并且在任意一种赋值下，具有相同的真值，那么称 $\varphi$ 和 $\psi$ 是等值的，记为
$$
\varphi \Leftrightarrow \psi
$$

> $\varphi$ 和 $\psi$ 是等值的，当且仅当 $\varphi \leftrightarrow \psi$ 是一个重言式，这也是等值符号用 $\Leftrightarrow$ 表示。

> [!Example]+
> 下面给出 $\neg (p \to \neg q)$ 的真值表：
>
> | $p$ | $q$ | $\neg (p \to \neg q)$ |
> | --- | --- | --- |
> | $\top$ | $\top$ | $\top$ |
> | $\top$ | $\bot$ | $\bot$ |
> | $\bot$ | $\top$ | $\bot$ |
> | $\bot$ | $\bot$ | $\top$ |
> 
> 可以发现，复合命题 $\neg (p \to \neg q)$ 的真值表与 $p \wedge q$ 的真值表完全相同，两者等值：
> $$
> (p \wedge q) \Leftrightarrow \neg (p \to \neg q)
> $$

> [!Example]+
> 下面给出 $\neg p \to q$ 的真值表：
>
> | $p$ | $q$ | $\neg p \to q$ |
> | --- | --- | --- |
> | $\top$ | $\top$ | $\top$ |
> | $\top$ | $\bot$ | $\bot$ |
> | $\bot$ | $\top$ | $\top$ |
> | $\bot$ | $\bot$ | $\bot$ |
> 
> 可以发现，复合命题 $\neg p \to q$ 的真值表与 $p \vee q$ 的真值表完全相同，两者等值：
> $$
> (p \vee q) \Leftrightarrow (\neg p \to q)
> $$

> [!Example]+
> 下面给出 $(p \to q) \wedge (q \to p)$ 的真值表：
>
> | $p$ | $q$ | $(p \to q) \wedge (q \to p)$ |
> | --- | --- | --- |
> | $\top$ | $\top$ | $\top$ |
> | $\top$ | $\bot$ | $\bot$ |
> | $\bot$ | $\top$ | $\bot$ |
> | $\bot$ | $\bot$ | $\top$ |
>
> 可以发现，复合命题 $(p \to q) \wedge (q \to p)$ 的真值表与 $p \leftrightarrow q$ 的真值表完全相同，两者等值：
> $$
> (p \leftrightarrow q) \Leftrightarrow ((p \to q) \wedge (q \to p))
> $$  