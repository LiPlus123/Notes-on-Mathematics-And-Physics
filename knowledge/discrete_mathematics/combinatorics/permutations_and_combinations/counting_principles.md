---
title: 计数原理
tags:
  - combinatorics
---

计数 Counting 是组合数学最基本的任务，其核心是确定满足某一条件的对象的个数。一切复杂的计数问题都可以归结为对若干基本计数原理的反复使用。本节介绍两个最基本的计数原理：**加法原理 Addition Principle** 和 **乘法原理 Multiplication Principle**。

# 加法原理

<!-- addition_principle -->
> [!Theorem]
> **加法原理 Addition Principle**：如果 $A_1, A_2, \ldots, A_n$ 是 $n$ 个两两不相交的有限集合，也就是说对于任意 $i\neq j$ 有 $A_i \cap A_j = \varnothing$，那么
> $$
> \left| A_1\cup A_2 \cup \cdots \cup A_n \right| = \sum_{i=1}^{n} |A_i|
> $$

> **注**：加法原则说明：如果完成一件事有若干类互不重叠的方法，那么总方法数=各类方法数之和。

> **注**：加法原理要求集合两两不相交，若 $A,B$ 有交集 $A \cap B \neq \varnothing$，则考虑[[inclusion_exclusion_principle|容斥原理]]。

> [!Example]+
> **按字数分类的书籍**：书架上有 $5$ 本不同的中文书、$3$ 本不同的英文书、$2$ 本不同的法文书。从中任取一本，共有多少种取法？由于"取中文书"、"取英文书"、"取法文书"三类方案两两互不相容，由加法原理（推广形式），取法共有：
> $$5 + 3 + 2 = 10$$

# 乘法原理

<!-- multiplication_principle -->
> [!Theorem]
> **乘法原理 Multiplication Principle**： 如果 $A_1, A_2, \ldots, A_n$ 是 $n$ 个有限集合，那么
> $$
> \left| A_1\times A_2 \times \cdots \times A_n \right| = \prod_{i=1}^{n} |A_i|
> $$

> **注**：乘法原则说明：如果完成一件事有若干个阶段，每个阶段有若干种方法，那么总方法数=各阶段方法数之积。

> **注**：乘法原则不要求集合两两不相交。

> [!Example]+
> **车牌号的方案数**：某地区车牌号由 $2$ 位英文字母后接 $4$ 位阿拉伯数字组成，且字母与数字均允许重复。每位字母有 $26$ 种选择，每位数字有 $10$ 种选择，由乘法原理，车牌号的总数为：
> $$26^2 \cdot 10^4 = 6\,760\,000$$