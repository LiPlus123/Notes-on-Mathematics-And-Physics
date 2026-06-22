---
title: 二项式定理
tags:
  - combinatorics
refs:
  - "[[combinations]]"
---

# 二项式定理

<!-- binomial -->
> [!Definition]
> **二项式 Binomial**：含有两个单项式之和的代数式称为**二项式**，一般形如 $x + y$，其中 $x, y$ 可以是数、变量、单项式乃至更一般交换环中的元素。形如 $(x + y)^n$（$n \in \mathbb{N}$）的式子称为二项式的 $n$ 次幂，定义为：
> $$
> (x + y)^n := \underbrace{(x + y)(x + y) \cdots (x + y)}_{n \text{ 个}}.
> $$

<!-- binomial_theorem -->
> [!Theorem]
> **二项式定理 Binomial Theorem**：设 $(x + y)^n$ 是二项式的 $n$ 次幂，其中 $n \in \mathbb{N}$，那么：
> $$
> (x + y)^n = \sum_{k=0}^{n} \binom{n}{k} x^{n-k} y^k
> $$

> **证明思路（组合证明）**：将 $(x+y)^n$ 展开时，每个因子贡献 $x$ 或 $y$ 之一，得到形如 $x^{n-k} y^{k}$ 的单项式。要得到一项 $x^{n-k} y^{k}$，需要从 $n$ 个因子中**无序地**选出 $k$ 个贡献 $y$（其余贡献 $x$），方案数恰为[[combinations|组合数]] $\binom{n}{k}$。由[[counting_principles|加法原理]]合并所有相同单项式，即得展开式。

> **证明思路（归纳证明）**：对 $n$ 作归纳。$n = 0$ 时左右两端均为 $1$。设结论对 $n - 1$ 成立，则
> $$(x + y)^n = (x + y) \sum_{k=0}^{n-1} \binom{n-1}{k} x^{n-1-k} y^{k},$$
> 展开并合并 $x^{n-k}y^k$ 的系数，由[[combinations|帕斯卡恒等式]] $\binom{n-1}{k-1} + \binom{n-1}{k} = \binom{n}{k}$ 即得展开式。

> [!Example]+
> 由二项式定理：
> $$\begin{align*}
> (x+y)^0 &= 1, \\
> (x+y)^1 &= x + y \\
> (x+y)^2 &= x^2 + 2xy + y^2 \\
> (x+y)^3 &= x^3 + 3x^2 y + 3xy^2 + y^3 \\
> (x+y)^4 &= x^4 + 4x^3 y + 6x^2 y^2 + 4xy^3 + y^4\\
> &\ \ \vdots
> \end{align*}$$
> 将各次幂展开后的系数 $\binom{n}{k}$ 以三角形的形式排列，称为**帕斯卡三角形 Pascal's Triangle**或**杨辉三角 Yang Hui's Triangle**，其中第 $n$ 行（从 $0$ 开始计数）第 $k$ 列（从 $0$ 开始计数）的元素即为二项式系数 $\binom{n}{k}$：
> $$\begin{array}{cccccc}
> & & & & 1 & & \\
> & & & 1 & & 1 & \\
> & & 1 & & 2 & & 1 \\
> & 1 & & 3 & & 3 & & 1 \\
> 1 & & 4 & & 6 & & 4 & & 1 \\
> & \vdots & & \vdots & & \vdots & & \vdots \\
> \end{array}$$

<!-- sum_of_binomial_coefficients -->
> [!Corollary]
> **二项式系数之和 Sum of Binomial Coefficients**：设 $n,k \in \mathbb{N}$，则：
> $$
> \sum_{k=0}^{n} \binom{n}{k} = 2^n
> $$

> **证明思路**：根据二项式定理，令 $x=1,\ y = 1$，即可得到结论。

<!-- weighted_sum_of_binomial_coefficients -->
> [!Theorem]
> **二项式系数加权之和 Weighted Sum of Binomial Coefficients**：设 $n,k \in \mathbb{N}$，则：
> $$
> \sum_{k=0}^{n} k \binom{n}{k} = n 2^{n-1}
> $$

> **证明思路**：根据[[combinations|组合数的吸收恒等式]] $k \binom{n}{k} = n \binom{n-1}{k-1}$，等式两端同时求和得：
> $$
> \sum_{k=0}^{n} k \binom{n}{k} = n \sum_{k=0}^{n} \binom{n-1}{k-1}
> $$
> 再利用[[combinations|组合数的对称性]] $\binom{n-1}{n-k} = \binom{n-1}{k-1}$，以及二项式系数之和 $\sum_{k=0}^{n-1} \binom{n-1}{k} = 2^{n-1}$ 即得结论：
> $$
> n \sum_{k=0}^{n} \binom{n-1}{k-1} = n \sum_{k=0}^{n-1} \binom{n-1}{k} = n 2^{n-1}
> $$

<!-- alternating_sum_of_binomial_coefficients -->
> [!Corollary]
> **二项式系数交错和 Alternating Sum of Binomial Coefficients**：设 $n,k \in \mathbb{N}$，则：
> $$
> \sum_{k=0}^{n} (-1)^k \binom{n}{k} = 0
> $$

> **证明思路**：根据二项式定理，令 $x=1,\ y = -1$，即可得到结论。

> [!Corollary]
> 根据二项式系数之和与二项式系数交错和两条推论可知，二项式系数的偶数项之和与奇数项之和均为 $2^{n-1}$，即：
> $$
> \sum_{k \text{ 偶}} \binom{n}{k} = \sum_{k \text{ 奇}} \binom{n}{k} = 2^{n-1} \quad (n \geq 1)
> $$

<!-- weighted_alternating_sum_of_binomial_coefficients -->
> [!Theorem]
> **二项式系数加权交错和 Weighted Alternating Sum of Binomial Coefficients**：设 $n,k \in \mathbb{N}$，则：
> $$
> \sum_{k=0}^{n} (-1)^k k \binom{n}{k} = 0
> $$

> **证明思路**：根据[[combinations|组合数的吸收恒等式]] $k \binom{n}{k} = n \binom{n-1}{k-1}$，等式两端同时求和得：
> $$
> \sum_{k=0}^{n} (-1)^k k \binom{n}{k} = n \sum_{k=0}^{n} (-1)^k \binom{n-1}{k-1}
> $$
> 再利用[[combinations|组合数的对称性]] $\binom{n-1}{n-k} = \binom{n-1}{k-1}$，以及二项式系数交错和 $\sum_{k=0}^{n-1} (-1)^k \binom{n-1}{k} = 0$ 即得结论：
> $$
> n \sum_{k=0}^{n} (-1)^k \binom{n-1}{k-1} = n \sum_{k=0}^{n-1
} (-1)^k \binom{n-1}{k} = 0
> $$

<!-- vandermondes_identity -->
> [!Theorem]
> **范德蒙德恒等式 Vandermonde's Identity**：设 $m, n, r \in \mathbb{N}$，则：
> $$
> \binom{m + n}{r} = \sum_{k=0}^{r} \binom{m}{k} \binom{n}{r - k}.
> $$

> **证明思路（代数证明）**：比较等式 $(1 + x)^{m+n} = (1+x)^m (1+x)^n$ 两端 $x^r$ 项的系数：左端为 $\binom{m+n}{r}$，右端展开后 $x^r$ 项的系数为 $\sum_{k=0}^{r} \binom{m}{k} \binom{n}{r-k}$。

> **证明思路（组合证明）**：等式左端是从 $m + n$ 个对象（其中 $m$ 个"红"、$n$ 个"蓝"）中无序选出 $r$ 个的方案数。按"红色被选中的数量 $k$"分类（$k = 0, 1, \ldots, r$）：先在 $m$ 个红色中选 $k$ 个有 $\binom{m}{k}$ 种，再在 $n$ 个蓝色中选 $r - k$ 个有 $\binom{n}{r-k}$ 种。由[[counting_principles|加法原理]]与[[counting_principles|乘法原理]]即得。

<!-- sum_of_squares_of_binomial_coefficients -->
> [!Corollary]
> **二项式系数平方和 Sum of Squares of Binomial Coefficients**：设 $n \in \mathbb{N}$，则：
> $$
> \sum_{k=0}^{n} \binom{n}{k}^2 = \binom{2n}{n}.
> $$

> **证明思路**：根据范德蒙德恒等式中取 $m = n$，$r = n$，并利用[[combinations|组合数对称性]] $\binom{n}{n-k} = \binom{n}{k}$ 即得。

<!-- hockey_stick_identity -->
> [!Theorem]
> **曲棍球棒恒等式 Hockey Stick Identity**：对任意满足 $0 \leq k \leq n$ 的非负整数 $n, k$，
> $$\sum_{i=k}^{n} \binom{i}{k} = \binom{n+1}{k+1}.$$

> **注**：此恒等式得名于其在帕斯卡三角形中对应的图形——从 $\binom{k}{k}$ 出发沿一条斜线累加至 $\binom{n}{k}$，结果落在另一条斜线的 $\binom{n+1}{k+1}$ 处，三者相连形似一根曲棍球棒。

> **证明思路（归纳证明）**：对 $n$ 作归纳。$n = k$ 时，左端 $= \binom{k}{k} = 1 = \binom{k+1}{k+1}$，结论成立。设结论对 $n - 1$ 成立，则
> $$\sum_{i=k}^{n} \binom{i}{k} = \binom{n}{k+1} + \binom{n}{k} = \binom{n+1}{k+1},$$
> 末步用[[combinations|帕斯卡恒等式]]。

> **证明思路（组合证明）**：等式右端是从 $\{1, 2, \ldots, n+1\}$ 中选出 $k+1$ 个元素的方案数。按"所选元素中最大的那个"分类：若最大为 $i+1$（$i = k, k+1, \ldots, n$），其余 $k$ 个元素须从 $\{1, 2, \ldots, i\}$ 中选取，方案数为 $\binom{i}{k}$。由[[counting_principles|加法原理]]即得。

> [!Example]+
> **小数据验证**：取 $k = 2$，$n = 5$：
> $$\binom{2}{2} + \binom{3}{2} + \binom{4}{2} + \binom{5}{2} = 1 + 3 + 6 + 10 = 20 = \binom{6}{3}$$