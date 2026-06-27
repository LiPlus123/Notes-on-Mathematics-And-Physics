---
title: 公理系统
tags:
  - logic
  - mathematical_logic
  - propositional_logic
refs:
  - "[[propositional_language]]"
---

# 公理系统

公理系统 Axiom System 全称“希尔伯特公理演绎系统”，是由数学家大卫·希尔伯特（David Hilbert, 1862-1943）提出，用于描述形式化证明的系统。

<!-- axiom_schema_l0 -->
> [!Definition]
> **公理模式 Axiom Schema**：希尔伯特公理演绎系统包含如下三个公理模式：
> 1. 肯定后件模式：$\Phi \to (\Psi \to \Phi)$
> 2. 蕴含词分配模式：$(\Phi \to (\Psi \to \Theta)) \to ((\Phi \to \Psi) \to (\Phi \to \Theta))$
> 3. 换位模式：$(\neg \Phi \to \neg \Psi) \to (\Psi \to \Phi)$

> **注**：在希尔伯特公理演绎系统中：
> 1. 上述三条是公理模式，也即，将 $\Phi$、$\Psi$、$\Theta$ 替换为 $\mathcal{L}_0$ 的任意公式，得到的实例都是希尔伯特公理演绎系统的公理。因此，希尔伯特公理演绎系统包含无穷多个公理。
> 2. 肯定后件模式说明，如果 $\Phi$ 成立，那么无论 $\Psi$ 是什么，$\Psi \to \Phi$ 都成立。比如，“今天下雨$\to$(太阳从西边出来$\to$今天下雨)” 是一条公理，虽然“太阳从西边出来” 是一个荒谬的命题，但它并不影响这条公理在形式上成立
> 3. 蕴含词分配模式说明，如果 $\Phi$ 能推出 $\Psi \to \Theta$，那么如果 $\Phi$ 能推出 $\Psi$，就能推出 $\Theta$。比如，“(下雨$\to$(地面湿$\to$地面滑)) $\to$ ((下雨$\to$地面湿) $\to$ (下雨$\to$地面滑))”
> 4. 换位模式说明，逆否命题能推出原命题。比如，“(今天没下雨$\to$地面不湿) $\to$ (地面湿$\to$今天下雨)”
> 5. 事实上，希尔伯特公理演绎系统中的三条公理模式并不唯一，特别是换位模式。之所以选择这三种模式，是因为它们足以刻画命题逻辑的所有规律。在很多教科书中，都将第三条公理模式换成其他等价的公理模式，同样可以构建一个等价的希尔伯特公理演绎系统

<!-- modus_ponens -->
> [!Definition]
> **Modus Ponens 规则**：希尔伯特公理演绎系统只有一个推理规则：
> $$
> \frac{\varphi\qquad \varphi \to \psi}{\psi} 
> $$
> 称为 Modus Ponens 规则，记为 MP 规则。

> **注**：MP 规则，也称为“分离规则”，或“假言推理规则”，它来自重言式——[[satisfaction_and_tautology#^c1ebf9|分离律]]。说明如果 $\varphi$ 成立且 $\varphi$ 能推出 $\psi$，那么 $\psi$ 也成立。

<!-- formal_proof_l_0 -->
> [!Definition]
> **形式证明 Formal Proof**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的一个公式集，$\varphi_1,\cdots,\varphi_n$ 是一个 $\mathcal{L}_0$ 的公式序列，如果每个公式 $\varphi_k,k=1,\cdots,n$ 满足以下三个条件之一：
> 1. $\varphi_k$ 是 $\Gamma$ 中的一个公式
> 2. $\varphi_k$ 是一个公理模式的实例
> 3. $\varphi_k$ 是由前面的公式通过 MP 规则得到的，也即存在 $i,j < k$ 使得 $\varphi_j = (\varphi_i \to \varphi_k)$
> 
> 则称这个公式序列为一个以 $\Gamma$ 为假设的证明。

<!-- provable_l_0 -->
> [!Definition]
> **可证明 Provable**：如果以 $\Gamma$ 为假设的证明 $\varphi_1,\cdots,\varphi_n$ 满足 $\varphi_n = \varphi$，那么称 $\varphi$ 是在假设 $\Gamma$ 下的一个可证明式，记为：
> $$
> \Gamma \vdash \varphi
> $$

> **注**：在希尔伯特公理演绎系统中，“证明”是由公理、假设和 MP 规则生成的有限公式序列，是一个纯“语法”概念。满足关系 $\models$ 是一个语义概念，它与可证明关系  $\vdash$ 有重要的联系，在后面的内容详细介绍。

<!-- internal_theorem -->
> [!Definition]
> **内定理 Internal Theorem**：如果 $\Gamma = \varnothing$，并且存在一个$\mathcal{L}_0$ 的公式序列 $\varphi_1,\cdots,\varphi_n$ 满足以下两个条件之一：
> 1. $\varphi_k$ 是一个公理模式的实例
> 2. $\varphi_k$ 是由前面的公式通过 MP 规则得到的，也即存在 $i,j < k$ 使得 $\varphi_j = (\varphi_i \to \varphi_k)$ 
> 
> 并且 $\varphi_n = \varphi$ ，那么称 $\varphi$ 是 $\mathcal{L}_0$ 的内定理，记为：
> $$
> \vdash \varphi
> $$

> **注**：内定理可以看成是没有任何假设的可证明式，比如同一律就是 $\mathcal{L}_0$ 的一个内定理 $\vdash \varphi \to \varphi$

<!-- deduction_theorem -->
> [!Theorem]
> **演绎定理 Deduction Theorem**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的一个公式集，$\varphi,\psi$ 是 $\mathcal{L}_0$ 的公式，$\Gamma\cup \{\varphi\} \vdash \psi$ 当且仅当 $\Gamma \vdash \varphi \to \psi$

> **注**：演绎定理说明，如果在假设 $\Gamma$ 和 $\varphi$ 的前提下能证明 $\psi$，那么在假设 $\Gamma$ 的前提下能证明 $\varphi \to \psi$。反之，如果在假设 $\Gamma$ 的前提下能证明 $\varphi \to \psi$，那么在假设 $\Gamma$ 和 $\varphi$ 的前提下能证明 $\psi$。演绎定理是希尔伯特公理演绎系统的一个重要性质，它使得我们可以将一个以 $\Gamma\cup\{\varphi\}$ 为假设的证明转化为一个以 $\Gamma$ 为假设的证明，从而简化了证明的结构。

<!-- hypothetical_syllogism -->
> [!Corollary]
> **假言三段论 Hypothetical Syllogism**：设 $\varphi,\psi,\theta$ 是 $\mathcal{L}_0$ 的公式，
> $$
> \{\varphi\to \psi,\ \psi\to\theta\} \vdash \varphi \to \theta
> $$

> 假言三段论是演绎定理的一个直接推论，说明如果 $\varphi$ 能推出 $\psi$，$\psi$ 能推出 $\theta$，那么 $\varphi$ 能推出 $\theta$。比如，如果“下雨能导致地面湿”，“地面湿能导致地面滑”，那么“下雨能导致地面滑”。

<!-- law_of_contradiction -->
> [!Theorem]
> **反证律 Law of Contradiction**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的一个公式集，$\varphi,\psi$ 是 $\mathcal{L}_0$ 的公式。如果
> $$
> \begin{cases}
> \Gamma \cup \{\neg \varphi\} \vdash \psi \\
> \Gamma \cup \{\neg \varphi\} \vdash \neg \psi
> \end{cases}
> $$
> 
> 那么
> $$
> \Gamma \vdash \varphi
> $$

> **注**：反证律就是数学证明中常用的“反证法”，为了证明 $\Gamma \vdash \varphi$，我们先否定 $\varphi$，如果 $\Gamma \cup \{\neg \varphi\}$ 推出矛盾 $\psi \wedge \neg \psi$，那么 $\Gamma$ 就能推出 $\varphi$。

<!-- double_negation_law -->
> [!Corollary]
> **双重否定率 Double Negation Law**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的一个公式集，$\varphi$ 是 $\mathcal{L}_0$ 的一个公式，有：
> 1. $\{\neg\neg \varphi\} \vdash \varphi$
> 2. $\vdash \neg\neg \varphi \to \varphi$

> **注**：双重否定律说明，如果 $\neg\neg \varphi$ 成立，那么 $\varphi$ 也成立。比如，如果“不是不下雨”，那么“下雨”就成立。

<!-- reductio_ad_absurdum_law_l_0 -->
> [!Theorem]
> **归谬律 Reductio ad Absurdum Law**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的一个公式集，$\varphi,\psi$ 是 $\mathcal{L}_0$ 的公式。如果
> $$
> \begin{cases}
> \Gamma \cup \{ \varphi\} \vdash \psi \\
> \Gamma \cup \{ \varphi\} \vdash \neg \psi
> \end{cases}
> $$
> 
> 那么
> $$
> \Gamma \vdash \neg \varphi
> $$

> **注**：归谬律与反证律本质是相同的，只不过归谬律通过假设 $\varphi$ 成立，推出矛盾 $\psi \wedge \neg \psi$，从而得出 $\neg \varphi$ 成立。比如，如果假设“下雨”成立，能推出“地面湿”，又能推出“地面不湿”，那么就能得出“下雨”不成立。

<!-- second_double_negation_law -->
> [!Corollary]
> **第二双重否定率 2nd Double Negation Law**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的一个公式集，$\varphi$ 是 $\mathcal{L}_0$ 的一个公式，有：
> 1. $\{ \varphi\} \vdash \neg\neg \varphi$
> 2. $\vdash  \varphi \to \neg\neg \varphi$

> [!Example]+
> 常见的内定理有：
> - 同一律：$\vdash \varphi \to \varphi$
> - 否定前件：$\vdash \neg \varphi \to (\varphi \to \psi)$
> - 排中律：$\vdash \varphi \vee \neg \varphi$
> - 矛盾律：$\vdash \neg (\varphi \wedge \neg \varphi)$