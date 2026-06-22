---
title: 多项式定理
tags:
  - combinatorics
  - permutations_and_combinations
refs:
  - "[[combinations]]"
  - "[[binomial_theorem]]"
---

# 多项式定理

二项式定理可以自然地推广到多个变量的情形。

<!-- multinomial -->
> [!Definition]
> **多项式 Multinomial**：含有 $m$ 个（$m \geq 2$）单项式之和的代数式称为**多项式**，一般形如 $x_1 + x_2 + \cdots + x_m$，其中各 $x_i$ 可以是数、变量、单项式乃至更一般交换环中的元素。$m = 2$ 时退化为[[binomial_theorem|二项式]]。

> **注**：本节"多项式" Multinomial 是相对于二项式而言的，强调"多个项之和"，与代数学中通常意义下的"多项式 Polynomial"（变量幂次的有限线性组合）有所不同，但概念相通。

<!-- multinomial_coefficient -->
> [!Definition]
> **多项式系数 Multinomial Coefficient**：设 $n$ 是非负整数，$k_1, k_2, \ldots, k_m$ 是非负整数且满足 $k_1 + k_2 + \cdots + k_m = n$，定义**多项式系数**为
> $$\binom{n}{k_1, k_2, \ldots, k_m} := \frac{n!}{k_1!\, k_2! \cdots k_m!}.$$

> **注**：当 $m = 2$ 时，$\binom{n}{k, n-k} = \binom{n}{k}$ 退化为二项式系数。多项式系数 $\binom{n}{k_1, \ldots, k_m}$ 也等于把 $n$ 个不同对象分入 $m$ 个有序组（第 $i$ 组装 $k_i$ 个）的方案数。

<!-- multinomial_coefficient_product_form -->
> [!Theorem]
> **多项式系数的连乘形式**：在 $k_1 + k_2 + \cdots + k_m = n$ 的条件下，
> $$\binom{n}{k_1, k_2, \ldots, k_m} = \binom{n}{k_1} \binom{n - k_1}{k_2} \binom{n - k_1 - k_2}{k_3} \cdots \binom{k_m}{k_m}.$$

> **证明思路**：把 $n$ 个不同对象依次分组：先从 $n$ 个中选 $k_1$ 个放入第 $1$ 组，方案数 $\binom{n}{k_1}$；再从剩下的 $n - k_1$ 个中选 $k_2$ 个放入第 $2$ 组，方案数 $\binom{n - k_1}{k_2}$；如此继续。由[[counting_principles|乘法原理]]，全部方案数等于上式右端，再用阶乘形式化简即得 $\dfrac{n!}{k_1! k_2! \cdots k_m!}$。

<!-- multinomial_theorem -->
> [!Theorem]
> **多项式定理 Multinomial Theorem**：设 $n$ 是非负整数，$x_1, x_2, \ldots, x_m$ 是任意实数（或交换环中的元素），则
> $$(x_1 + x_2 + \cdots + x_m)^n = \sum_{\substack{k_1 + k_2 + \cdots + k_m = n \\ k_i \geq 0}} \binom{n}{k_1, k_2, \ldots, k_m}\, x_1^{k_1} x_2^{k_2} \cdots x_m^{k_m},$$
> 求和号遍历所有满足 $k_1 + k_2 + \cdots + k_m = n$ 的非负整数 $m$ 元组 $(k_1, k_2, \ldots, k_m)$。

> **证明思路**：将 $(x_1 + \cdots + x_m)^n$ 视为 $n$ 个相同因子 $(x_1 + \cdots + x_m)$ 相乘，每个因子贡献 $x_1, x_2, \ldots, x_m$ 之一。要得到单项式 $x_1^{k_1} x_2^{k_2} \cdots x_m^{k_m}$，需要把 $n$ 个因子分成 $m$ 个有序组——其中 $k_1$ 个贡献 $x_1$、$k_2$ 个贡献 $x_2$、……、$k_m$ 个贡献 $x_m$，方案数恰为多项式系数 $\binom{n}{k_1, k_2, \ldots, k_m}$。由[[counting_principles|加法原理]]合并即得。

<!-- multinomial_term_count -->
> [!Corollary]
> **多项式展开式的项数**：$(x_1 + x_2 + \cdots + x_m)^n$ 合并同类项后，互不相同的单项式 $x_1^{k_1} x_2^{k_2} \cdots x_m^{k_m}$ 的个数为
> $$\binom{n + m - 1}{m - 1} = \binom{n + m - 1}{n}.$$

> **证明思路**：互不相同的单项式与方程 $k_1 + k_2 + \cdots + k_m = n$ 的非负整数解一一对应。由[[combinations|重复组合]]（隔板法），其解的个数为 $\binom{n + m - 1}{m - 1}$。

<!-- multinomial_sum -->
> [!Corollary]
> **多项式系数之和**：对任意正整数 $m$ 和非负整数 $n$，
> $$\sum_{\substack{k_1 + \cdots + k_m = n \\ k_i \geq 0}} \binom{n}{k_1, k_2, \ldots, k_m} = m^n.$$

> **证明思路**：在多项式定理中令 $x_1 = x_2 = \cdots = x_m = 1$，左端为 $m^n$，右端即为所有多项式系数之和。

> [!Example]+
> **三项式展开**：求 $(x + y + z)^3$ 的展开式。$(k_1, k_2, k_3)$ 的非负整数解共 $\binom{3+3-1}{3} = 10$ 组，由多项式定理：
> $$\begin{align*}
> (x + y + z)^3 = &\, x^3 + y^3 + z^3 \\
> &+ 3(x^2 y + x^2 z + y^2 x + y^2 z + z^2 x + z^2 y) \\
> &+ 6 xyz.
> \end{align*}$$

> [!Example]+
> **多项式中指定项的系数**：求 $(x + 2y - z)^6$ 展开式中 $x^3 y^2 z$ 的系数。在多项式定理中取 $m = 3$，$n = 6$，对应 $(k_1, k_2, k_3) = (3, 2, 1)$，系数为
> $$\binom{6}{3, 2, 1} \cdot 1^3 \cdot 2^2 \cdot (-1)^1 = \frac{6!}{3!\,2!\,1!} \cdot 4 \cdot (-1) = 60 \cdot (-4) = -240.$$