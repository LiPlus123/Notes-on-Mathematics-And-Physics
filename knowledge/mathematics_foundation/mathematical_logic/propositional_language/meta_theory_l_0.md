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

> [!Definition]
> 极大一致集：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集。$\Gamma$ 是极大一致的，当且仅当，$\Gamma$ 是一致的，且如果任意公式 $\varphi$ 满足 $\Gamma \cup \{\varphi\}$ 是一致的，那么 $\varphi\in\Gamma$。

## 可靠性和完全性

可靠性和完全性是语义和语法之间的桥梁。

<!-- soundness_l_0 -->
> [!Theorem]
> **可靠性 Soundness**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集，$\varphi$ 是 $\mathcal{L}_0$ 的一个公式。如果 $\Gamma \vdash \varphi$，那么 $\Gamma \models \varphi$。

> 证明思路：

> 命题逻辑 $\mathcal{L}_0$ 的可靠性说明，语法上，凡是能被演绎系统形式证明出来的公式，语义上都确实成立，形式证明不会证明出语义上错误的结论。

> [!Corollary]
> **内定理都是重言式**：特别地，当 $\Gamma = \varnothing$ 时，如果 $\vdash \varphi$，那么 $\models \varphi$。

<!-- completeness_l_0 -->
> [!Theorem]
> **完全性 Completeness**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集，$\varphi$ 是 $\mathcal{L}_0$ 的一个公式。如果 $\Gamma \models \varphi$，那么 $\Gamma \vdash \varphi$。

> 证明思路：

> 命题逻辑 $\mathcal{L}_0$ 的完全性说明，凡是语义上成立的公式，语法上都能被演绎系统形式证明出来。

<!-- completeness_corollary_l_0 -->
> [!Corollary]
> **重言式都是内定理**：特别地，当 $\Gamma = \varnothing$ 时，如果 $\models \varphi$，那么 $\vdash \varphi$。

## 紧致性

<!-- compactness_l_0 -->
> [!Theorem]
> **紧致性 Compactness**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集。$\Gamma$ 是可满足的，当且仅当，$\Gamma$ 的每个有限子集都是可满足的。

> 证明思路：

## 可判定性
<!-- decidability_l_0 -->
> [!Theorem]
> **可判定性 Decidability**：存在一个有限的算法，能够判定任意 $\mathcal{L}_0$ 的公式 $\varphi$ 是否是 $\mathcal{L}_0$ 的一个内定理。

> 证明思路：命题逻辑是可判定的，可以用“真值表法”判定一个 $\mathcal{L}_0$ 的公式是否是重言式。再根据 $\mathcal{L}_0$ 的完全性，如果 $\varphi$ 是重言式，那么 $\varphi$ 就是 $\mathcal{L}_0$ 的一个内定理。可判定性是命题逻辑的一个重要性质，与之相对的，“一阶逻辑是不可判定的”。