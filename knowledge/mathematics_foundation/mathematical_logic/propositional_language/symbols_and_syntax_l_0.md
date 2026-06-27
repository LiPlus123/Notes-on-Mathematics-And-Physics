---
title: 符号和语法
tags:
  - logic
  - mathematical_logic
  - propositional_logic
refs:
  - "[[propositional_language]]"
---

# 符号和语法

命题逻辑语言是一门人工语言，准确地说是专门用来形式化经典命题逻辑的形式语言。根据[[thinking_and_language|语言的三要素]]，下面给出命题逻辑语言的初始符号和语法规则。

<!-- initial_symbols_l_0 -->
> [!Definition]
> **命题逻辑语言的初始符号**：命题逻辑语言记为 $\mathcal{L}_0$ ，其初始符号为：
> - 命题变元 Propositional Variable：$p_0,p_1,p_2,\cdots$
> - 初始连接词 Connective：$\neg$ 和 $\to$
> - 括号 Parentheses：$($ 和 $)$

> 在经典逻辑学中，命题逻辑研究复合命题及其推理规则。复合命题由命题变元和逻辑连接词构成，命题变元只是一个占位符，它可以被任何具体的命题所代替。

> 在经典命题逻辑学中，还有 $\wedge$、$\vee$、$\leftrightarrow$ 三个连接词，它们在 $\mathcal{L}_0$ 中可以通过 $\neg$ 和 $\to$ 定义出来，因此不是初始连接词。

> 括号用于明确表达式的结构，避免歧义。在不引起歧义的前提下，可以省略括号，但需要遵循一定的优先级和结合规则，后面会详细说明。

<!-- formula_l_0 -->
> [!Definition]
> **公式 Formula**：$\mathcal{L}_0$ 的公式有如下形成规则：
> 1. 任意命题变元 $p_0,p_1,\cdots$ 都是 $\mathcal{L}_0$ 的公式
> 2. 如果 $\varphi$ 是公式，那么 $\neg \varphi$ 也是公式
> 3. 如果 $\varphi$ 和 $\psi$ 是公式，那么 $(\varphi \to \psi)$ 也是公式
> 
> 只有根据以上规则有限次使用得到的字符串才是 $\mathcal{L}_0$ 的公式，除此之外没有别的公式。

> 符合语法规则的字符串，称为 $\mathcal{L}_0$ 的“公式”，通常记为 $\varphi_0,\varphi_1,\cdots$ 或 $\varphi,\psi$。由公式组成的集合，称为“公式集”，通常记为 $\Gamma_0,\Gamma_1,\ldots$ 或 $\Gamma,\Delta,\Sigma$。

> [!Example]+
> 以下是 $\mathcal{L}_0$ 的一些公式：
> - $p$
> - $\neg\neg p$
> - $(p \to q)$
> - $\neg (p \to q)$
> - $((p \to q) \to r)$
> - $\neg (p \to \neg q)$
> - $(\neg p \to q)$

> [!Example]+
> 以下不是 $\mathcal{L}_0$ 的公式：
> - $\neg$
> - $pq$
> - $p\to\to q$
> - $p \to$
> - $\neg \to p$
> - $\neg (p \to)$
> - $\neg (p \to q$
> - $\neg (p \to q))$
> - $\neg \neg \to p$

为了使表达式更加简洁，再定义一些“派生连接词”。需要注意的是，这些连接词都不是 $\mathcal{L}_0$ 的初始连接词，而是通过 $\neg$ 和 $\to$ 定义出来的，因此，它们并不增加 $\mathcal{L}_0$ 的表达能力。

<!-- conj_l_0 -->
> [!Definition] 
> **合取 Conjunction**：设 $\varphi$ 和 $\psi$ 是 $\mathcal{L}_0$ 的公式。$\varphi$ 和 $\psi$ 的合取记为 $\varphi \wedge \psi$，定义为：
> $$
> \varphi \wedge \psi := \neg (\varphi \to \neg \psi)
> $$

<!-- disj_l_0 -->
> [!Definition]
> **析取 Disjunction**：设 $\varphi$ 和 $\psi$ 是 $\mathcal{L}_0$ 的公式。$\varphi$ 和 $\psi$ 的析取记为 $\varphi \vee \psi$，定义为：
> $$
> \varphi \vee \psi := (\neg \varphi \to \psi)
> $$

<!-- bicon_l_0 -->
> [!Definition]
> **双条件 Bicondition**：设 $\varphi$ 和 $\psi$ 是 $\mathcal{L}_0$ 的公式。$\varphi$ 和 $\psi$ 的双条件记为 $\varphi \leftrightarrow \psi$，定义为：
> $$
> \varphi \leftrightarrow \psi := ((\varphi \to \psi) \wedge (\psi \to \varphi))
> $$

**括号的省略约定**：为了使表达式更加简洁，在不引起歧义的前提下，引入括号的省略约定：
1. 公式最外层的括号可以省略
2. 连接词的结合力依次递减为： $\neg$，$\wedge$，$\vee$，$\to$，$\leftrightarrow$
3. 相同优先级的连接词，从右向左结合
4. 其他情况下，括号不能省略

> [!Example]+
> 以下是一些根据上述省略约定得到的公式：
> - $p\to q \to r$ 等价于 $p\to (q \to r)$
> - $p\wedge q \vee r$ 等价于 $(p\wedge q) \vee r$
> - $r\to p \to p \leftrightarrow \neg \neg p \vee q$ 等价于 $(r\to (p \to p)) \leftrightarrow (\neg \neg p \vee q)$