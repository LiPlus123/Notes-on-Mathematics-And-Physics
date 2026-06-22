---
title: 重言式
tags:
  - logic
  - propositional_logic
  - classical_logic
refs:
  - "[[truth_table]]"
  - "[[propositional_logic]]"
  - "[[connective]]"
---

# 重言式

**重言式 Tautology** 也称为永真式，是在任意赋值下，都为真的复合命题。下面给出一些重要的重言式。

> 与重言式相对的，称为“矛盾式 Contradiction”，是指在任意赋值下，都为假的复合命题。

> [!Example]+
> **同一律**：设 $p$ 是一个命题变元，那么 $p \to p$ 是一个重言式。

> [!Example]+
> **排中律**：设 $p$ 是一个命题变元，那么 $p \vee \neg p$ 是一个重言式。

> [!Example]+
> **矛盾律**：设 $p$ 是一个命题变元，那么 $\neg (p \wedge \neg p)$ 是一个重言式。

> 这三个重言式，正是逻辑思维基本规律的形式化表达。

> [!Example]+
> **假言易位**：设 $p$ 和 $q$ 是命题变元，那么 $(p \to q) \leftrightarrow (\neg q \to \neg p)$ 是一个重言式。