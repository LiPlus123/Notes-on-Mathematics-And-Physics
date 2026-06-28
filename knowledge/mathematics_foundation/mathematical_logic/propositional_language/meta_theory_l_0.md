---
title: 元理论
tags:
  - logic
  - mathematical_logic
  - propositional_logic
refs:
  - "[[propositional_language]]"
  - "[[axiom_system_l_0]]"
  - "[[semantics_l_0]]"
---

# 元理论

[[axiom_system_l_0|上一节]]给出了命题逻辑 $\mathcal{L}_0$ 的形式证明系统，[[semantics_l_0|语义]]给出了满足关系与语义后承。本节讨论二者之间的关系，以及由此导出的几个基础元定理。

## 一致性

<!-- consistency_l_0 -->
> [!Definition]
> **一致性 Consistency**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集，如果存在 $\varphi$，使得：
> $$
> \Gamma \vdash \varphi \qquad \text{且} \qquad \Gamma \vdash \neg \varphi
> $$
> 那么称 $\Gamma$ 是不一致的；反之，则称 $\Gamma$ 是一致的。

> 公式集不一致，说明它能推出矛盾。在经典命题逻辑中，一旦推出矛盾，那么就能推出任意公式：
> $$
> \frac{\Gamma\vdash \bot}{\Gamma \vdash \psi}
> $$
> 其中，$\psi$ 是 $\mathcal{L}_0$ 的任意公式，这称为“爆炸原理 Principle of Explosion”。

> 上述定义与“$\Gamma \vdash \bot$” 是等价的。事实上，如果 $\Gamma \vdash \varphi$ 且 $\Gamma \vdash \neg\varphi$，那么由公理系统中的可导规律可得 $\Gamma \vdash \bot$；反之如果 $\Gamma \vdash \bot$，那么由爆炸原理立刻得到对任意 $\varphi$ 都有 $\Gamma \vdash \varphi$ 与 $\Gamma \vdash \neg\varphi$。

<!-- maximal_consistent_set_l_0 -->
> [!Definition]
> **极大一致集 Maximal Consistent Set**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集。称 $\Gamma$ 是极大一致的，当且仅当，$\Gamma$ 是一致的，且对任意公式 $\varphi$，只要 $\Gamma \cup \{\varphi\}$ 一致，就有 $\varphi \in \Gamma$。

## 可靠性和完全性

可靠性和完全性是语义和语法之间的桥梁。

<!-- soundness_l_0 -->
> [!Theorem]
> **可靠性 Soundness**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集，$\varphi$ 是 $\mathcal{L}_0$ 的一个公式。如果 $\Gamma \vdash \varphi$，那么 $\Gamma \models \varphi$。

> 证明思路：对 $\Gamma \vdash \varphi$ 的形式证明长度作归纳。证明中的每一行要么是来自 $\Gamma$ 的假设，此时任意满足 $\Gamma$ 的赋值都满足该行；要么是某个公理模式的实例，此时只需验证三个公理模式都是真值恒为 $\top$ 的重言式；要么是由前两行经 MP 规则得到。对于 MP 规则，若 $v \models \theta$ 且 $v \models \theta \to \psi$，则由蕴含的真值定义可得 $v \models \psi$。因此证明序列中的每一行都是 $\Gamma$ 的语义后承，特别最后一行 $\varphi$ 也是 $\Gamma$ 的语义后承。

> 命题逻辑 $\mathcal{L}_0$ 的可靠性说明，语法上，凡是能被演绎系统形式证明出来的公式，语义上都确实成立，形式证明不会证明出语义上错误的结论。

<!-- internal_theorem_tautology_l_0 -->
> [!Corollary]
> **内定理都是重言式**：特别地，当 $\Gamma = \varnothing$ 时，如果 $\vdash \varphi$，那么 $\models \varphi$。

<!-- lindenbaum_lemma_l_0 -->
> [!Lemma]
> **林登鲍姆引理 Lindenbaum's Lemma**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的一致公式集，则存在极大一致集 $\Delta$，使得 $\Gamma \subseteq \Delta$。

> 证明思路：将 $\mathcal{L}_0$ 的所有公式枚举为序列 $\varphi_0, \varphi_1, \varphi_2, \ldots$（命题逻辑的公式集是可数的）。归纳地定义公式集序列：令 $\Delta_0 = \Gamma$，对每个 $n$，令
> $$
> \Delta_{n+1} = \begin{cases} \Delta_n \cup \{\varphi_n\} & \text{若 } \Delta_n \cup \{\varphi_n\} \text{ 一致} \\ \Delta_n & \text{否则} \end{cases}
> $$
> 令 $\Delta = \bigcup_{n=0}^{\infty} \Delta_n$。归纳可验证每个 $\Delta_n$ 都一致，且任何有限子集都含于某个 $\Delta_n$，故 $\Delta$ 本身一致。对任意公式 $\varphi_n$，要么 $\varphi_n \in \Delta_{n+1} \subseteq \Delta$，要么 $\Delta_n \cup \{\varphi_n\}$ 不一致，进而 $\Delta \cup \{\varphi_n\}$ 不一致。因此 $\Delta$ 是极大一致的。

<!-- truth_lemma_l_0 -->
> [!Lemma]
> **真值引理 Truth Lemma**：设 $\Delta$ 是 $\mathcal{L}_0$ 的极大一致集，定义赋值 $v$ 使得对每个命题变元 $p$，当且仅当 $p \in \Delta$ 时取 $v(p) = \top$。则对任意公式 $\varphi$：
> $$
> v \models \varphi \qquad \Longleftrightarrow \qquad \varphi \in \Delta
> $$

> 证明思路：对公式 $\varphi$ 的结构作归纳。对于命题变元 $p$，由 $v$ 的定义直接成立。对于 $\bot$，由 $\Delta$ 一致知 $\bot \notin \Delta$，且 $v \not\models \bot$，故成立。对于 $\varphi = \psi \to \theta$，利用极大一致集在蕴含下的封闭性：$\psi \to \theta \in \Delta$ 当且仅当"若 $\psi \in \Delta$ 则 $\theta \in \Delta$"；再由归纳假设，这等价于"若 $v \models \psi$ 则 $v \models \theta$"，即 $v \models \psi \to \theta$。

<!-- completeness_l_0 -->
> [!Theorem]
> **完全性 Completeness**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集，$\varphi$ 是 $\mathcal{L}_0$ 的一个公式。如果 $\Gamma \models \varphi$，那么 $\Gamma \vdash \varphi$。

> 证明思路：用反证法证明。若 $\Gamma \nvdash \varphi$，则 $\Gamma \cup \{\neg\varphi\}$ 一致，否则 $\Gamma \cup \{\neg\varphi\} \vdash \bot$，由演绎定理得 $\Gamma \vdash \neg\varphi \to \bot$，再由双重否定律得 $\Gamma \vdash \varphi$，矛盾。由林登鲍姆引理，把 $\Gamma \cup \{\neg\varphi\}$ 扩张为极大一致集 $\Delta$。由真值引理，以 $\Delta$ 诱导的赋值 $v$ 满足：$v \models \psi$ 当且仅当 $\psi \in \Delta$。由于 $\Gamma \subseteq \Delta$，故 $v \models \Gamma$；又因为 $\neg\varphi \in \Delta$，故 $v \not\models \varphi$。这与 $\Gamma \models \varphi$ 矛盾，因此必有 $\Gamma \vdash \varphi$。

> 命题逻辑 $\mathcal{L}_0$ 的完全性说明，凡是语义上成立的公式，语法上都能被演绎系统形式证明出来。

<!-- completeness_corollary_l_0 -->
> [!Corollary]
> **重言式都是内定理**：特别地，当 $\Gamma = \varnothing$ 时，如果 $\models \varphi$，那么 $\vdash \varphi$。

<!-- satisfiability_consistency_l_0 -->
> [!Corollary]
> **可满足性与一致性的等价性**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集，则 $\Gamma$ 一致，当且仅当 $\Gamma$ 可满足。

> 证明思路：若 $\Gamma$ 可满足，取满足它的赋值 $v$。若 $\Gamma$ 不一致，则存在 $\varphi$ 使得 $\Gamma \vdash \varphi$ 与 $\Gamma \vdash \neg\varphi$。由可靠性可知 $\Gamma \models \varphi$ 且 $\Gamma \models \neg\varphi$，于是 $v$ 同时满足 $\varphi$ 与 $\neg\varphi$，矛盾，所以 $\Gamma$ 必一致。反过来，若 $\Gamma$ 一致而不可满足，则 $\Gamma \models \bot$，由完全性得 $\Gamma \vdash \bot$，这与一致性矛盾。因此 $\Gamma$ 可满足。

## 紧致性

<!-- compactness_l_0 -->
> [!Theorem]
> **紧致性 Compactness**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集。$\Gamma$ 是可满足的，当且仅当，$\Gamma$ 的每个有限子集都是可满足的。

> 证明思路：必要性是直接的，因为若某个赋值 $v$ 满足 $\Gamma$，那么它当然也满足 $\Gamma$ 的任意子集。充分性利用完全性证明。若 $\Gamma$ 不可满足，则 $\Gamma \models \bot$，由完全性得 $\Gamma \vdash \bot$。而一个形式证明只涉及有限多个假设，所以存在 $\Gamma$ 的有限子集 $\Delta \subseteq \Gamma$ 使得 $\Delta \vdash \bot$。再由可靠性得 $\Delta \models \bot$，即 $\Delta$ 不可满足。这与“每个有限子集都可满足”矛盾，因此 $\Gamma$ 必可满足。

<!-- finite_entailment_l_0 -->
> [!Corollary]
> **有限后承性**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集，$\varphi$ 是 $\mathcal{L}_0$ 的公式。如果 $\Gamma \models \varphi$，那么存在有限子集 $\Delta \subseteq \Gamma$ 使得 $\Delta \models \varphi$。

> 证明思路：由 $\Gamma \models \varphi$ 可知 $\Gamma \cup \{\neg\varphi\}$ 不可满足。根据紧致性，存在有限子集 $\Sigma \subseteq \Gamma \cup \{\neg\varphi\}$ 也不可满足。令 $\Delta = \Sigma \cap \Gamma \subseteq \Gamma$ 有限。若 $\neg\varphi \notin \Sigma$，则 $\Delta = \Sigma$ 不可满足，从而 $\Delta \models \varphi$（空真）。若 $\neg\varphi \in \Sigma$，则 $\Delta \cup \{\neg\varphi\}$ 不可满足，即任意满足 $\Delta$ 的赋值都不满足 $\neg\varphi$，故 $\Delta \models \varphi$。两种情况均得到有限子集 $\Delta \subseteq \Gamma$ 使得 $\Delta \models \varphi$。

## 可判定性
<!-- decidability_l_0 -->
> [!Theorem]
> **可判定性 Decidability**：存在一个有限的算法，能够判定任意 $\mathcal{L}_0$ 的公式 $\varphi$ 是否是 $\mathcal{L}_0$ 的一个内定理。

> 证明思路：设 $\varphi$ 中一共出现了 $n$ 个不同的命题变元，那么只需枚举这 $n$ 个命题变元的全部 $2^n$ 个赋值，并逐一计算 $\varphi$ 在这些赋值下的真值。如果每次计算结果都为 $\top$，则 $\varphi$ 是重言式；否则不是重言式。由“重言式都是内定理”与“内定理都是重言式”可知：
> $$
> \vdash \varphi \qquad \Longleftrightarrow \qquad \models \varphi
> $$
> 因而真值表法也就给出了一个判定“$\varphi$ 是否为内定理”的有限算法。可判定性是命题逻辑的一个重要性质，与之相对，一阶逻辑的有效公式集合不是可判定的。