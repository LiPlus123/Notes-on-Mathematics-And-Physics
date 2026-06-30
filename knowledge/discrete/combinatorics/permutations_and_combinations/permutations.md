---
title: 排列
tags:
  - combinatorics
refs:
  - "[[counting_principles]]"
---

# 排列

排列 Permutation 关心的是**有序选取**的方案数：从给定集合中选出若干元素并按一定的顺序排成一列，问共有多少种不同的排法。本节基于[[counting_principles|计数原理]]，给出阶乘、排列数的精确定义，并讨论几种常见的排列模型。

<!-- factorial -->
> [!Definition]
> **阶乘 Factorial**：设 $n\in \mathbb{N}$ 是自然数，$n$ 的阶乘记为 $n!$，定义为：
> $$
> n! := \begin{cases} 1, & n = 0, \\ 1 \cdot 2 \cdot 3 \cdots n = \prod_{i=1}^{n} i, & n \geq 1. \end{cases}
> $$

<!-- permutation -->
> [!Definition]
> **排列 Permutation**：设 $S$ 为一个有限集，$|S|=n$。从 $S$ 中选出 $0 \le k \le n$ 个不同的元素，并按一定顺序排成一个有序组 $(a_1, a_2, \ldots, a_k)$，称为 $S$ 的一个 $k$-排列。全体 $k$-排列的集合记为 $S_k$，那么：
> $$
> S_k := \{(a_1, a_2, \ldots, a_k) : a_i \in S, a_i \neq a_j \text{ for } i\neq j\}
> $$
特别地，如果 $k=n$，则称为 $S$ 的一个全排列。全体全排列的集合记为 $S_n$

> [!Example]+
> 设集合 $S = \{1, 2, 3\}$，则 $S$ 的 $2$-排列集合为：
> $$
> S_2 = \{(1,2), (1,3), (2,1), (2,3), (3,1), (3,2)\}
> $$
> $S$ 的全排列集合为：
> $$
> S_3=\{(1,2,3), (1,3,2), (2,1,3), (2,3,1), (3,1,2), (3,2,1)\}
> $$

<!-- permutation_formula -->
> [!Theorem]
> **排列数公式 Permutation Formula**：设 $S$ 为一个有限集，$|S|=n$。全体 $k$-排列集合的基数（元素个数）称为排列数，记为 $P(n,k)$，则：
> $$
> P(n,k) := |S_k| = \frac{n!}{(n-k)!}
> $$
> 特别地，全排列数
> $$
> P(n,n) := |S_n| = n!
> $$

> **证明思路**：构造一个 $k$ 排列分成 $k$ 步：第 $1$ 步从 $n$ 个元素中选出第 $1$ 个位置的元素，有 $n$ 种选法；第 $2$ 步从剩余 $n-1$ 个元素中选出第 $2$ 个位置的元素，有 $n-1$ 种选法；……；第 $k$ 步在剩余 $n-k+1$ 个元素中选出第 $k$ 个位置的元素，有 $n-k+1$ 种选法。各步骤的方案数相互独立，由[[counting_principles|乘法原理]]，
> $$P(n,k) = n(n-1)(n-2)\cdots(n-k+1) = \frac{n!}{(n-k)!}$$

<!-- repeated_permutation -->
> [!Definition]
> **重复排列 Repeated Permutation**：设 $S$ 为一个有限集，$|S|=n$。从 $S$ 中选出 $0 \le k \le n$ 个元素，并按一定顺序排成一个有序组 $(a_1, a_2, \ldots, a_k)$，其中允许元素重复，称为 $S$ 的一个 $k$-重复排列。全体 $k$-重复排列的集合记为 $S^k$，那么：
> $$
> S^k := \{(a_1, a_2, \ldots, a_k) : a_i \in S\} = \underbrace{S \times S \times \cdots \times S}_{k \text{ 个}}.
> $$

<!-- repeated_permutation_formula -->
> [!Theorem]
> **重复排列数公式 Repeated Permutation Formula**：设 $S$ 为一个有限集，$|S|=n$。全体 $k$-重复排列集合的基数（元素个数）称为重复排列数，则：
> $$
> |S^k| = n^k
> $$

> **证明思路**：构造一个 $k$ 重复排列分成 $k$ 步：第 $1$ 步从 $n$ 个元素中选出第 $1$ 个位置的元素，有 $n$ 种选法；第 $2$ 步从 $n$ 个元素中选出第 $2$ 个位置的元素，有 $n$ 种选法；……；第 $k$ 步在 $n$ 个元素中选出第 $k$ 个位置的元素，有 $n$ 种选法。各步骤的方案数相互独立，由[[counting_principles|乘法原理]]，
> $$|S^k| = n \cdot n \cdot n \cdots \cdot n = n^k$$

> [!Example]+
> **二进制串的个数**：长度为 $k$ 的二进制串（每位为 $0$ 或 $1$）共有 $2^k$ 个，这是从 $\{0, 1\}$ 中有放回地取 $k$ 次形成的重复排列。

<!-- circular_permutation -->
> [!Definition]
> **圆排列 Circular Permutation**：设 $S$ 为一个有限集，$|S|=n$。从 $S$ 中选出 $0 \le k \le n$ 个不同的元素，放置在一个圆周的 $k$ 个位置上，若两个排列经过整体旋转可以重合，则视为同一种排列，由此得到的排列称为 $S$ 的一个 $k$-圆排列。

<!-- circular_permutation_formula -->
> [!Theorem]
> **圆排列数公式 Circular Permutation Formula**：设 $S$ 为一个有限集，$|S|=n$。全体 $k$-圆排列集合的基数（元素个数）称为圆排列数：
> $$
> \frac{P(n,k)}{k} = \frac{n!}{k \cdot (n-k)!}
> $$

> **证明思路**：考虑普通的 $k$ 排列总数为 $P(n,k)$，若将每个 $k$ 排列首尾相接构成圆周，则同一个圆排列对应于 $k$ 种不同的线性排列（由起点位置的 $k$ 种选择产生）。因此圆排列数等于 $P(n,k) / k$。

> [!Example]+
> **围圆桌就坐**：$5$ 人围一圆桌就座，本质不同的就座方式有：
> $$\frac{5!}{5} = 4! = 24\ (种)$$
