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

公理系统 Axiom System 全称“希尔伯特公理演绎系统”，是由数学家大卫·希尔伯特（David Hilbert, 1862-1943）提出的[[formal_system|形式系统]]。

<!-- axiom_schema_l_0 -->
> [!Definition]
> **公理模式 Axiom Schema**：希尔伯特公理演绎系统包含如下三个公理模式：
> 1. 肯定后件模式：$\varphi \to (\psi \to \varphi)$
> 2. 蕴含词分配模式：$(\varphi \to (\psi \to \theta)) \to ((\varphi \to \psi) \to (\varphi \to \theta))$
> 3. 换位模式：$(\neg \varphi \to \neg \psi) \to (\psi \to \varphi)$

> 在希尔伯特公理演绎系统中：
> 1. 上述三条是公理模式，也即，将 $\varphi$、$\psi$、$\theta$ 替换为 $\mathcal{L}_0$ 的任意公式，得到的实例都是希尔伯特公理演绎系统的公理。因此，希尔伯特公理演绎系统包含无穷多个公理。
> 2. 通过真值表可以验证，这三条公理模式的实例都是“重言式”，也即在任何命题赋值下都为真，适合作为“推理的起点”，从“真前提”演绎出“真结论”。从元数学的角度，选择重言式作为公理，是为了保证公理系统具有“可靠性 Soundness”，这在后面的小节中详细说明。
> 2. 肯定后件模式说明，如果 $\varphi$ 成立，那么无论 $\psi$ 是什么，$\psi \to \varphi$ 都成立。比如，“今天下雨$\to$(太阳从西边出来$\to$今天下雨)” 是一条公理，虽然“太阳从西边出来” 是一个荒谬的命题，但它并不影响这条公理在形式上成立
> 3. 蕴含词分配模式说明，如果 $\varphi$ 能推出 $\psi \to \theta$，那么如果 $\varphi$ 能推出 $\psi$，就能推出 $\theta$。比如，“(下雨$\to$(地面湿$\to$地面滑)) $\to$ ((下雨$\to$地面湿) $\to$ (下雨$\to$地面滑))”
> 4. 换位模式说明，逆否命题能推出原命题。比如，“(今天没下雨$\to$地面不湿) $\to$ (地面湿$\to$今天下雨)”
> 5. 事实上，希尔伯特公理演绎系统中的三条公理模式并不唯一，特别是换位模式。之所以选择这三种模式，是因为它们足以刻画命题逻辑的所有规律。在很多教科书中，都将第三条公理模式换成其他等价的公理模式，同样可以构建一个等价的希尔伯特公理演绎系统

<!-- modus_ponens_l_0 -->
> [!Definition]
> **Modus Ponens 规则**：希尔伯特公理演绎系统只有一个推理规则：
> $$
> \frac{\varphi\qquad \varphi \to \psi}{\psi} 
> $$
> 称为 Modus Ponens 规则，记为 MP 规则。

> MP 规则，也称为“分离规则”，或“假言推理规则”，它能从蕴含式 $\varphi\to\psi$ 中，将结论 $\psi$ “提取出来”。它来自重言式——分离律 $\varphi \wedge (\varphi \to \psi) \to \psi$。说明如果 $\varphi$ 成立且 $\varphi$ 能推出 $\psi$，那么 $\psi$ 一定成立，这是“蕴含连接词作出的承诺”。

<!-- formal_proof_l_0 -->
> [!Definition]
> **形式证明 Formal Proof**：$\varphi_1,\cdots,\varphi_n$ 是一个 $\mathcal{L}_0$ 的有限的公式序列，如果每个公式 $\varphi_k,k=1,\cdots,n$ 满足以下两个条件之一：
> 1. $\varphi_k$ 是一个公理模式的实例
> 2. $\varphi_k$ 是由前面的公式通过 MP 规则得到的，也即存在 $i,j < k$ 使得 $\varphi_j = (\varphi_i \to \varphi_k)$
>
> 则称这个公式序列是一个形式证明。

> 在希尔伯特公理系统中，“证明”是一串公式序列，是一个纯“语法”概念。其中，MP 规则是从公理实例中产生新公式的唯一途径。在得到 $\varphi_k$ 之前，$\varphi_i$ 和 $\varphi_i\to\varphi_k$ 已经得到了证明且为真，那么推出的 $\varphi_k$ 也为真。从元数学的角度，公理模式和 MP 规则一起保证了公理系统的“可靠性 Soundness”。

<!-- formal_proof_with_assumptions_l_0 -->
> [!Definition]
> **带假设的形式证明 Formal Proof with Assumptions**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的一个公式集，$\varphi_1,\cdots,\varphi_n$ 是一个 $\mathcal{L}_0$ 的公式序列，如果每个公式 $\varphi_k,k=1,\cdots,n$ 满足以下三个条件之一：
> 1. $\varphi_k$ 是 $\Gamma$ 中的一个公式
> 2. $\varphi_k$ 是一个公理模式的实例
> 3. $\varphi_k$ 是由前面的公式通过 MP 规则得到的，也即存在 $i,j < k$ 使得 $\varphi_j = (\varphi_i \to \varphi_k)$
> 
> 则称这个公式序列为一个以 $\Gamma$ 为假设的形式证明。

<!-- provable_and_theorem_l_0 -->
> [!Definition]
> **可证明与定理 Provable And Theorem**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的一个公式集，$\varphi_1,\cdots,\varphi_n$ 是一个形式证明。如果 $\varphi_n = \varphi$，那么称 $\varphi$ 是在公式集 $\Gamma$ 下的一个可证明式，记为：
> $$
> \Gamma \vdash \varphi
> $$
> 特别地，如果 $\Gamma = \varnothing$，那么称 $\varphi$ 是公理系统的一个定理，记为：
> $$
> \vdash \varphi
> $$

> 可证明关系 $\vdash$ 是公式集与公式之间的关系，它是语法层面的概念，它与语义层面的满足关系 $\models$ 有着重要的联系；定理可以是没有任何假设的可证明式，它只依赖公理，与语义层面的重言式也有着重要的联系。在后面元数学小节会详细介绍

<!-- deduction_theorem_l_0 -->
> [!Theorem]
> **演绎定理 Deduction Theorem**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的一个公式集，$\varphi,\psi$ 是 $\mathcal{L}_0$ 的公式，$\Gamma\cup \{\varphi\} \vdash \psi$ 当且仅当 $\Gamma \vdash \varphi \to \psi$

> 证明思路：对 $\Gamma\cup\{\varphi\}$ 下 $\psi$ 的证明长度作归纳。设证明中的任意一行是 $\chi$，只需证明 $\Gamma \vdash \varphi\to\chi$：若 $\chi$ 是 $\Gamma$ 中的公式或公理模式实例，则由公理模式 $\chi \to (\varphi\to\chi)$ 与 MP 规则可得 $\Gamma \vdash \varphi\to\chi$；若 $\chi = \varphi$，则利用内定理 $\vdash \varphi\to\varphi$；若 $\chi$ 由前面两行 $\eta$ 与 $\eta\to\chi$ 经 MP 得到，则由归纳假设已有 $\Gamma \vdash \varphi\to\eta$ 和 $\Gamma \vdash \varphi\to(\eta\to\chi)$，再结合第二公理模式可得 $\Gamma \vdash \varphi\to\chi$。反向只需把 $\varphi$ 加入假设，再对 $\varphi$ 与 $\varphi\to\psi$ 应用一次 MP 规则即可推出 $\psi$。

> 演绎定理说明，如果在假设 $\Gamma$ 和 $\varphi$ 的前提下能证明 $\psi$，那么在假设 $\Gamma$ 的前提下能证明 $\varphi \to \psi$。反之，如果在假设 $\Gamma$ 的前提下能证明 $\varphi \to \psi$，那么在假设 $\Gamma$ 和 $\varphi$ 的前提下能证明 $\psi$。演绎定理是希尔伯特公理演绎系统的一个重要性质，它使得我们可以将一个以 $\Gamma\cup\{\varphi\}$ 为假设的证明转化为一个以 $\Gamma$ 为假设的证明，从而简化了证明的结构。

<!-- hypothetical_syllogism_l_0 -->
> [!Corollary]
> **假言三段论 Hypothetical Syllogism**：设 $\varphi,\psi,\theta$ 是 $\mathcal{L}_0$ 的公式，
> $$
> \{\varphi\to \psi,\ \psi\to\theta\} \vdash \varphi \to \theta
> $$

> 假言三段论是演绎定理的一个直接推论，说明如果 $\varphi$ 能推出 $\psi$，$\psi$ 能推出 $\theta$，那么 $\varphi$ 能推出 $\theta$。比如，如果“下雨能导致地面湿”，“地面湿能导致地面滑”，那么“下雨能导致地面滑”。

<!-- proof_by_contradiction_l_0 -->
> [!Theorem]
> **反证法 Proof by contradiction**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的一个公式集，$\varphi,\psi$ 是 $\mathcal{L}_0$ 的公式。如果
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

> 证明思路：先由演绎定理把前提改写为 $\Gamma \vdash \neg\varphi\to\psi$ 与 $\Gamma \vdash \neg\varphi\to\neg\psi$。再对第三公理模式取实例 $(\neg\varphi\to\neg\psi)\to(\psi\to\varphi)$，由 MP 规则得到 $\Gamma \vdash \psi\to\varphi$，再与 $\Gamma \vdash \neg\varphi\to\psi$ 结合，可推出 $\Gamma \vdash \neg\varphi\to\varphi$。最后利用希尔伯特系统中已可导出的结论“若 $\neg\varphi$ 推出 $\varphi$，则 $\varphi$ 成立”，便得 $\Gamma \vdash \varphi$。

> 反证法说明为了证明 $\Gamma \vdash \varphi$，我们先否定 $\varphi$，如果 $\Gamma \cup \{\neg \varphi\}$ 推出矛盾 $\psi \wedge \neg \psi$，那么 $\Gamma$ 就能推出 $\varphi$。

<!-- double_negation_law_l_0 -->
> [!Corollary]
> **双重否定律 Double Negation Law**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的一个公式集，$\varphi$ 是 $\mathcal{L}_0$ 的一个公式，有：
> 1. $\{\neg\neg \varphi\} \vdash \varphi$
> 2. $\vdash \neg\neg \varphi \to \varphi$

> 双重否定律说明，如果 $\neg\neg \varphi$ 成立，那么 $\varphi$ 也成立。比如，如果“不是不下雨”，那么“下雨”就成立。

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

> 证明思路：由演绎定理，前提等价于 $\Gamma \vdash \varphi\to\psi$ 与 $\Gamma \vdash \varphi\to\neg\psi$。这说明在假设 $\Gamma\cup\{\varphi\}$ 下可以同时推出 $\psi$ 和 $\neg\psi$，即假设 $\varphi$ 会导致矛盾。因此对公式 $\neg\varphi$ 应用前面的反证法定理，便可得到 $\Gamma \vdash \neg\varphi$。

> 归谬律与反证法本质是相同的，只不过归谬律通过假设 $\varphi$ 成立，推出矛盾 $\psi \wedge \neg \psi$，从而得出 $\neg \varphi$ 成立。比如，如果假设“下雨”成立，能推出“地面湿”，又能推出“地面不湿”，那么就能得出“下雨”不成立。

<!-- second_double_negation_law_l_0 -->
> [!Corollary]
> **第二双重否定律 2nd Double Negation Law**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的一个公式集，$\varphi$ 是 $\mathcal{L}_0$ 的一个公式，有：
> 1. $\{ \varphi\} \vdash \neg\neg \varphi$
> 2. $\vdash  \varphi \to \neg\neg \varphi$