---
title: 语法
tags:
  - logic
  - mathematical_logic
  - propositional_logic
refs:
  - "[[propositional_language]]"
---

# 语义

[[symbols_and_syntax_l_0|上一节]]给出了[[thinking_and_language|命题逻辑语言三要素]]的前两个要素，本节会给出最后一个要素——“语义”。在经典命题逻辑中，一个命题只有两种取值，要么“真”，要么“假”，不会有其他的取值。在数理逻辑中，用符号 $\top$ 表示“真 True”，用 $\bot$ 表示“假 False”，命题逻辑语言的语义就是给每个命题公式赋予“真值”。首先给出真值函数的定义。

## 真值函数

<!-- truth_function_l_0 -->
> [!Definition]
> **真值函数 Truth Function**：设 $\{\bot,\top\}^n$ 为布尔值的 $n$ 元组集，函数 $f:\{\bot,\top\}^n \to \{\bot,\top\}$ 称为 $n$ 元真值函数，简称真值函数。

<!-- one_ary_truth_function_l_0 -->
> [!Definition]
> **一元真值函数 1-ary Truth Function**：函数 $f:\{\bot,\top\} \to \{\bot,\top\}$ 称为一元真值函数。一元真值函数分为四种：
> 1. $f_1(\bot) = \top$，$f_1(\top) = \top$
> 2. $f_2(\bot) = \bot$，$f_2(\top) = \bot$
> 3. $f_3(\bot) = \bot$，$f_3(\top) = \top$
> 4. $f_4(\bot) = \top$，$f_4(\top) = \bot$

<!-- neg_truth_func_l_0 -->
> [!Definition]
> **反同真值函数 Negation Truth Function**：将一元真值函数 $f_4$ 定义为 $f_{\neg}$
> $$
> f_{\neg}(b) := f_4(b) = \begin{cases}
> \bot & \text{if } b = \top \\
> \top & \text{if } b = \bot
> \end{cases}
> $$
> 称为反同真值函数。


> 否定连接词在自然语言中，对应 “并非……” 的形式。反同真值函数用一个单独的真值表表示为：
> 
> | $b$ | $f_{\neg}$ |
> | --- | --- |
> | $\top$ | $\bot$ |
> | $\bot$ | $\top$ |

<!-- two_ary_truth_function_l_0 -->
> [!Definition]
> **二元真值函数 2-ary Truth Function**：函数 $f:\{\bot,\top\}^2 \to \{\bot,\top\}$ 称为二元真值函数。二元真值函数分为 $2^4 = 16$ 种，编号为 $f_1,f_2,\cdots,f_{16}$。

设 $b_1,b_2 \in \{\bot,\top\}$ 为真值变量，二元真值函数表示为 $f_k(b_1,b_2),\ k=1,\cdots,16$，这 16 种二元真值函数的函数值可以用如下表格表示：

| $b_1, b_2$ | $f_1$ | $f_2$ | $f_3$ | $f_4$ | $f_5$ | $f_6$ | $f_7$ | $f_8$ | $f_9$ | $f_{10}$ | $f_{11}$ | $f_{12}$ | $f_{13}$ | $f_{14}$ | $f_{15}$ | $f_{16}$ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| $\top,\top$ | $\top$ | $\top$ | $\top$ | $\top$ | $\top$ | $\top$ | $\top$ | $\top$ | $\bot$ | $\bot$ | $\bot$ | $\bot$ | $\bot$ | $\bot$ | $\bot$ | $\bot$ | 
| $\top,\bot$ | $\top$ | $\top$ | $\top$ | $\top$ | $\bot$ | $\bot$ | $\bot$ | $\bot$ | $\top$ | $\top$ | $\top$ | $\top$ | $\bot$ | $\bot$ | $\bot$ | $\bot$ | 
| $\bot,\top$ | $\top$ | $\top$ | $\bot$ | $\bot$ | $\top$ | $\top$ | $\bot$ | $\bot$ | $\top$ | $\top$ | $\bot$ | $\bot$ | $\top$ | $\top$ | $\bot$ | $\bot$ | 
| $\bot,\bot$ | $\top$ | $\bot$ | $\top$ | $\bot$ | $\top$ | $\bot$ | $\top$ | $\bot$ | $\top$ | $\bot$ | $\top$ | $\bot$ | $\top$ | $\bot$ | $\top$ | $\bot$ | 
 
 <!-- imp_truth_func_l_0 -->
> [!Definition]
> **蕴含真值函数 Implication Truth Function**：定义二元真值函数 $f_{5}$ 为：
> $$
> f_{\to}(b_1, b_2) := f_{5}(b_1, b_2) = \begin{cases}
> \bot & \text{if } b_1 = \top \text{ and } b_2 = \bot \\
> \top & \text{otherwise}
> \end{cases}
> $$


> 蕴含连接词在自然语言中，对应 “如果...那么...” 的形式。蕴含真值函数用一个单独的真值表表示为：
> 
> | $b_1$ | $b_2$ | $f_{\to}$ |
> | --- | --- | --- |
> | $\top$ | $\top$ | $\top$ |
> | $\top$ | $\bot$ | $\bot$ |
> | $\bot$ | $\top$ | $\top$ |
> | $\bot$ | $\bot$ | $\top$ |

<!-- conj_truth_func_l_0 -->
> [!Definition]
> **合取真值函数 Conjunction Truth Function**：定义二元真值函数 $f_8$ 为：
> $$
> f_{\wedge}(b_1, b_2) := f_{8}(b_1, b_2) = \begin{cases}
> \top & \text{if } b_1 = \top \text{ and } b_2 = \top \\
> \bot & \text{otherwise}
> \end{cases}
> $$


> 合取连接词在自然语言中，对应 “...和...” 的形式。合取真值函数用一个单独的真值表表示为：
>
> | $b_1$ | $b_2$ | $f_{\wedge}$ |
> | --- | --- | --- |
> | $\top$ | $\top$ | $\top$ |
> | $\top$ | $\bot$ | $\bot$ |
> | $\bot$ | $\top$ | $\bot$ |
> | $\bot$ | $\bot$ | $\bot$ |

<!--disj_truth_func_l_0 -->
> [!Definition]
> **析取真值函数 Disjunction Truth Function**：定义二元真值函数 $f_2$ 为：
> $$
> f_{\vee}(b_1, b_2) := f_{2}(b_1, b_2) = \begin{cases}
> \top & \text{if } b_1 = \top \text{ or } b_2 = \top \\
> \bot & \text{otherwise}
> \end{cases}
> $$


> 析取连接词在自然语言中，对应 “...或者...” 的形式。析取真值函数用一个单独的真值表表示为：
>
> | $b_1$ | $b_2$ | $f_{\vee}$ |
> | --- | --- | --- |
> | $\top$ | $\top$ | $\top$ |
> | $\top$ | $\bot$ | $\top$ |
> | $\bot$ | $\top$ | $\top$ |
> | $\bot$ | $\bot$ | $\bot$ |

<!-- bicond_truth_func_l_0 -->
> [!Definition]
> 双条件真值函数 Biconditional Truth Function：定义二元真值函数 $f_{7}$ 为：
> $$
> f_{\leftrightarrow}(b_1, b_2) := f_{7}(b_1, b_2) = \begin{cases}
> \top & \text{if } b_1 = b_2 \\
> \bot & \text{otherwise}
> \end{cases}
> $$


> 双条件连接词在自然语言中，对应 “当且仅当...” 的形式。双条件真值函数用一个单独的真值表表示为：
>
> | $b_1$ | $b_2$ | $f_{\leftrightarrow}$ |
> | --- | --- | --- |
> | $\top$ | $\top$ | $\top$ |
> | $\top$ | $\bot$ | $\bot$ |
> | $\bot$ | $\top$ | $\bot$ |
> | $\bot$ | $\bot$ | $\top$ |


## 赋值函数

真值函数是从真值到真值的函数，它给出逻辑连接词对输入真值的影响。命题公式是由命题变元和逻辑连接词组成的，不仅逻辑连接词会决定命题公式的真值，命题变元也会决定命题公式的真值，下面给出命题变元的赋值函数的定义。

<!-- assignment_l_0 -->
> [!Definition]
> **赋值函数 Assignment Function**：是从命题变元集到集合 $\{\bot,\top\}$ 的函数，记为 $v$。


> 赋值函数为每个命题变元指定唯一真值，比如记命题“太阳从西边出来”为 $p$，那么 $v(p) = \bot$

<!-- formula_assignment_l_0 -->
> [!Definition]
> **公式赋值函数 Formula Assignment Function**：是从 $\mathcal{L}_0$ 公式集到集合 $\{\bot,\top\}$ 的函数，记为 $\bar{v}$。公式赋值函数 $\bar{v}$ 满足：
> 1. 对任意命题变元 $p$，$\bar{v}(p) = v(p)$
> 2. 设 $\varphi$ 是公式，那么 $\bar{v}(\neg \varphi) = f_{\neg}(\bar{v}(\varphi))$
> 3. 设 $\varphi,\psi$ 是公式，那么 $\bar{v}(\varphi \to \psi) = f_{\to}(\bar{v}(\varphi),\bar{v}(\psi))$


> 公式赋值函数 $\bar{v}$ 给出公式的真值，它不仅取决于组成命题变元的赋值函数 $v$，还取决于公式中逻辑连接词的真值函数。

<!-- conj_formula_assignment -->
> [!Theorem]
> **合取公式的赋值**：设 $\varphi,\psi$ 是 $\mathcal{L}_0$ 的公式，那么：
> $$
> \bar{v}(\varphi \wedge \psi) = f_{\wedge}(\bar{v}(\varphi),\bar{v}(\psi))
> $$

<!-- disj_formula_assignment -->
> [!Theorem]
> **析取公式的赋值**：设 $\varphi,\psi$ 是 $\mathcal{L}_0$ 的公式，那么：
> $$
> \bar{v}(\varphi \vee \psi) = f_{\vee}(\bar{v}(\varphi),\bar{v}(\psi))
> $$

<!-- bicond_formula_assignment -->
> [!Theorem]
> **双条件公式的赋值**：设 $\varphi,\psi$ 是 $\mathcal{L}_0$ 的公式，那么：
> $$
> \bar{v}(\varphi \leftrightarrow \psi) = f_{\leftrightarrow}(\bar{v}(\varphi),\bar{v}(\psi))
> $$


> 证明思路：根据合取、析取、双条件的定义与合取、析取、双条件的真值表，可以证明上述定理。

## 满足关系

<!-- satisfaction_l_0 -->
> [!Definition]
> **满足关系 Satisfaction Relation**：设 $\varphi$ 是 $\mathcal{L}_0$ 的一个公式，$v$ 是 $\varphi$ 中命题变元集的一个赋值，$\bar{v}$ 是由 $v$ 诱导的公式赋值函数。如果 $\bar{v}(\varphi) = \top$，那么称赋值 $v$ 满足 $\varphi$，记为：
> $$
> v \models \varphi
> $$
> 如果 $\Gamma$ 是 $\mathcal{L}_0$ 的一个公式集，如果任意 $\psi\in \Gamma$，都有赋值 $v$ 都满足，那么称 $v$ 满足 $\Gamma$，记为：
> $$
> v \models \Gamma
> $$

<!-- satisfiable_formula_l_0 -->
> [!Definition]
> **可满足式 Satisfiable Formula**：设 $\varphi$ 是 $\mathcal{L}_0$ 的一个公式，如果存在一个赋值 $v$ 满足 $\varphi$，那么称 $\varphi$ 是一个可满足式。

<!-- tautology_l_0 -->
> [!Definition]
> **重言式 Tautology**：设 $\varphi$ 是 $\mathcal{L}_0$ 的一个公式，如果任意赋值 $v$ 都满足 $\varphi$，那么称 $\varphi$ 是一个重言式，记为
> $$
> \models \varphi
> $$


> 重言式也称为“永真式”，指的是无论命题变元取什么真值，这个公式都为真。比如，公式 $p \vee \neg p$ 就是一个重言式，因为无论 $p$ 是真还是假，这个公式的真值都为真。与重言式相对的，称为“矛盾式”。

<!-- contradiction_formula_l_0 -->
> [!Definition]
> **矛盾式 Contradiction**：设 $\varphi$ 是 $\mathcal{L}_0$ 的一个公式，如果任意赋值 $v$ 都不满足 $\varphi$，那么称 $\varphi$ 是一个矛盾式。


> 矛盾式也称为“永假式”，指的是无论命题变元取什么真值，这个公式都为假。比如，公式 $p \wedge \neg p$ 就是一个矛盾式，因为无论 $p$ 是真还是假，这个公式的真值都为假。

<!-- common_tautologies_l_0 -->
> [!Theorem]
> **常见的重言式**：设 $\varphi,\psi,\theta$ 是 $\mathcal{L}_0$ 的公式，那么：
> 1. 同一律：$\varphi \to \varphi$
> 2. 排中律：$\varphi \vee \neg \varphi$
> 3. 矛盾律：$\neg (\varphi \wedge \neg \varphi)$
> 4. 分离律：$\varphi \wedge (\varphi \to \psi) \to \psi$
> 5. 交换律：$(\varphi \wedge \psi) \leftrightarrow (\psi \wedge \varphi)$ 与 $(\varphi \vee \psi) \leftrightarrow (\psi \vee \varphi)$
> 6. 结合律：$\varphi \wedge (\psi \wedge \theta) \leftrightarrow (\varphi \wedge \psi) \wedge \theta$ 与 $\varphi \vee (\psi \vee \theta) \leftrightarrow (\varphi \vee \psi) \vee \theta$
> 7. 分配律：$\varphi \wedge (\psi \vee \theta) \leftrightarrow (\varphi \wedge \psi) \vee (\varphi \wedge \theta)$ 与 $\varphi \vee (\psi \wedge \theta) \leftrightarrow (\varphi \vee \psi) \wedge (\varphi \vee \theta)$
> 8. 德摩根律：$\neg (\varphi \wedge \psi) \leftrightarrow (\neg \varphi \vee \neg \psi)$ 与 $\neg (\varphi \vee \psi) \leftrightarrow (\neg \varphi \wedge \neg \psi)$

## 语义后承

<!-- semantic_consequence_l_0 -->
> [!Definition]
> **语义后承 Semantic Consequence**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集，$\varphi$ 是 $\mathcal{L}_0$ 的一个公式。如果任意 $v\models \Gamma$ 也都 $v\models \varphi$，那么称 $\varphi$ 是 $\Gamma$ 的语义后承，记为：
> $$
> \Gamma \models \varphi
> $$

<!-- > [!Proposition]
> 如果 $\varphi$ 是 $\mathcal{L}_0$ 的重言式，那么 $\varnothing \models \varphi$。 -->