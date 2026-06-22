---
title: 组合
tags:
  - combinatorics
refs:
  - "[[counting_principles]]"
---

# 组合

<!-- combination -->
> [!Definition]
> **组合 Combination**：设 $S$ 为一个有限集，$|S|=n$。从 $S$ 中选出 $0 \le k \le n$ 个不同的元素，组成一个子集，称为 $S$ 的一个 $k$-组合。

> **注**：组合与[[permutations|排列]]的本质区别在于：组合**不考虑元素的次序**，只关心选出了哪些元素。全体 $k$-组合就是 $S$ 的一个 $k$ 元子集。$0$ 组合规定为唯一的空集 $\varnothing$。

> [!Example]+
> 设集合 $S = \{1, 2, 3\}$，则 $S$ 的 $2$-组合集为：
> $$
> \{ \{1,2\}, \{1,3\}, \{2,3\} \}
> $$

<!-- combination_formula -->
> [!Theorem]
> **组合数公式 Combination Formula**：设 $S$ 为一个有限集，$|S|=n$。全体 $k$-组合的集合的基数（元素个数）称为组合数，记为 $C(n,k)$，则：
> $$
> C(n,k) := |\{A : A \subseteq S, |A|=k\}|  = \frac{P(n,k)}{k!}= \frac{n!}{k!(n-k)!}
> $$

> **证明思路**：考虑从 $n$ 个不同元素中取 $k$ 个排成一列的所有 $k$ 排列。由[[permutations|排列数公式]]，共有 $P(n,k)$ 种。另一方面，可分两步完成此事：第一步先选出 $k$ 个元素构成 $k$ 子集，方案数记为 $C(n,k)$；第二步把这 $k$ 个元素排成一列，方案数为 $k!$。由[[counting_principles|乘法原理]]，
> $$P(n,k) = C(n,k) \cdot k!$$
> 故 $C(n,k) = \dfrac{P(n,k)}{k!} = \dfrac{n!}{k!\,(n-k)!}$。

> **注**：组合数 $C(n,k)$ 也称为“二项式系数 Binomial Coefficient”，记为 $\binom{n}{k}$，这与二项式定理有关。特别地，当 $k > n$ 或 $k \le 0$ 时约定 $\binom{n}{k} = 0$。

<!-- symmetry_of_combination -->
> [!Theorem]
> **组合数的对称性 Symmetry of Combination**：设 $n,k \in \mathbb{N},\ n > 0,\ 0 \le k \le n$，则：
> $$
> C(n,k) = C(n,n-k)
> $$

> **注**：组合数的对称性说明，从 $n$ 个元素中"选出 $k$ 个"与"剩下 $n-k$ 个"是同一件事，只是视角不同，故对应的方案数相等。

<!-- pascal_identity -->
> [!Theorem]
> **帕斯卡恒等式 Pascal's Identity**：设 $n,k \in \mathbb{N},\ n > 0,\ 1 \le k \le n-1$，则：
> $$
> C(n,k) = C(n-1,k-1) + C(n-1,k)
> $$

> **证明思路（组合证明）**：在 $n$ 个不同元素中固定一个元素 $a$。从 $n$ 个元素中取出 $k$ 个的组合，按"是否含元素 $a$"分两类：
> 1. 含 $a$ 的组合：另需从剩余 $n-1$ 个元素中取 $k-1$ 个，方案数为 $\binom{n-1}{k-1}$；
> 2. 不含 $a$ 的组合：需从剩余 $n-1$ 个元素中取 $k$ 个，方案数为 $\binom{n-1}{k}$。
> 
> 两类互不相容，由[[counting_principles|加法原理]]即得结论。代数上也可用阶乘表达式直接验证。

<!-- absorption_identity -->
> [!Proposition]
> **吸收恒等式 Absorption Identity**：设 $n,k \in \mathbb{N},\ n > 0,\ 1 \le k \le n$，则：
> $$
> k C(n,k) = n C(n-1,k-1)
> $$
> 等价地
> $$C(n,k) = \frac{n}{k} C(n-1,k-1)$$

> **证明思路**：由组合数公式直接证明：
> $$
> \begin{align*}
>  k C(n,k) &= k \cdot \frac{n!}{k!(n-k)!} = \frac{n!}{(k-1)!(n-k)!} \\
>  &= n \cdot \frac{(n-1)!}{(k-1)!(n-k)!} = n C(n-1,k-1)
> \end{align*}
> $$

> **注**：吸收恒等式说明，从 $n$ 人中选 $k$ 人组成委员会并指定一名主席，有两种计数方式：先选委员会再选主席（$C(n,k) \cdot k$）；先选主席再从剩余 $n-1$ 人中选 $k-1$ 名委员（$n \cdot C(n-1,k-1)$）。