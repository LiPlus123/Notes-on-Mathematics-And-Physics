
# 相继式演算系统

“相继式演算系统 Sequent Calculus System” 是根岑（Gerhard Gentzen, 1909-1945）在自然演绎系统的基础上引入的一种新的演绎系统。相继式演算系统同样没有公理，只有推理规则，但是每个推理规则都是局部的，也即，每条推理规则只涉及一个公式的结构，而不涉及整个证明结构。相继式演算系统的证明结构更接近于自然语言中的推理方式，因此在实际应用中也非常常用。

> [!Definition]
> **相继式 Sequent**：设 $\Gamma$ 和 $\Delta$ 是 $\mathcal{L}_0$ 的有限序列、有限多重公式集，定义相继式为：
> $$
> \Gamma \Rightarrow \Delta
> $$

> **注**：相继式 $\Gamma \Rightarrow \Delta$ 的含义是：在已知 $\Gamma$ 中所有公式都成立的前提下，能推出 $\Delta$ 中至少一个公式成立：
> $$
> \bigwedge_{\varphi \in \Gamma} \varphi \to \bigvee_{\psi \in \Delta} \psi 
> $$
> 比如，相继式 $p, q \Rightarrow r, s$ 的含义是：在已知 $p$ 和 $q$ 都成立的前提下，能推出 $r$ 或者 $s$。

> [!Definition]
> **相继式演算系统的内定理 Internal Theorem**：如果 $\Gamma = \varnothing$，并且存在一个公式 $\varphi$，使得
> $$
> \Rightarrow \varphi
> $$
> 那么称 $\varphi$ 是相继式演算系统的一个内定理。

> [!Definition]
> **初始相继式 Initial Sequent**：设 $\Gamma$ 和 $\Delta$ 是 $\mathcal{L}_0$ 的有限序列、有限多重公式集，如果存在一个公式 $\varphi$，使得
> $$
> \Gamma, \varphi \Rightarrow \Delta, \varphi
> $$
> 也可以简写成
> $$
> \varphi \Rightarrow \varphi
> $$
> 那么称该式为一个初始相继式。

> [!Definition]
> 结构规则 Structural Rule：相继式演算系统的结构规则包括以下三条：
> 1. 弱化规则 Weakening Rule：
> $$
> \frac{\Gamma \Rightarrow \Delta}{\Gamma, \varphi \Rightarrow \Delta} \qquad \frac{\Gamma \Rightarrow \Delta}{\Gamma \Rightarrow \Delta, \varphi}
> $$
> 2. 收缩规则 Contraction Rule：
> $$
> \frac{\Gamma, \varphi, \varphi \Rightarrow \Delta}{\Gamma, \varphi \Rightarrow \Delta} \qquad \frac{\Gamma \Rightarrow \Delta, \varphi, \varphi}{\Gamma \Rightarrow \Delta, \varphi}
> $$
> 3. 切规则 Cut Rule：
> $$
> \frac{\Gamma \Rightarrow \varphi \qquad \Gamma, \varphi \Rightarrow \Delta}{\Gamma \Rightarrow \Delta}
> $$


每个命题连接词都分别有一个左规则和右规则。左规则说明，某个连接词出现在相继式的左边时，如何通过该连接词的结构来推导出新的相继式；右规则说明，某个连接词出现在相继式的右边时，如何通过该连接词的结构来推导出新的相继式。

> [!Definition]
> **合取左规则 Conjunction Left Rule**：设 $\Gamma$ 和 $\Delta$ 是 $\mathcal{L}_0$ 的有限序列、有限多重公式集，$\varphi$ 和 $\psi$ 是 $\mathcal{L}_0$ 的公式。合取左规则为：
> $$
> \frac{\Gamma, \varphi, \psi \Rightarrow \Delta}{\Gamma, \varphi \wedge \psi \Rightarrow \Delta}
> $$

> [!Definition]
> **合取右规则 Conjunction Right Rule**：设 $\Gamma$ 和 $\Delta$ 是 $\mathcal{L}_0$ 的有限序列、有限多重公式集，$\varphi$ 和 $\psi$ 是 $\mathcal{L}_0$ 的公式。合取右规则为：
> $$
> \frac{\Gamma \Rightarrow \Delta, \varphi \qquad \Gamma \Rightarrow \Delta, \psi}{\Gamma \Rightarrow \Delta, \varphi \wedge \psi}
> $$

> [!Definition]
> **析取左规则 Disjunction Left Rule**：设 $\Gamma$ 和 $\Delta$ 是 $\mathcal{L}_0$ 的有限序列、有限多重公式集，$\varphi$ 和 $\psi$ 是 $\mathcal{L}_0$ 的公式。析取左规则为：
> $$
> \frac{\Gamma, \varphi \Rightarrow \Delta \qquad \Gamma, \psi \Rightarrow \Delta}{\Gamma, \varphi \vee \psi \Rightarrow \Delta}
> $$

> [!Definition]
> **析取右规则 Disjunction Right Rule**：设 $\Gamma$ 和 $\Delta$ 是 $\mathcal{L}_0$ 的有限序列、有限多重公式集，$\varphi$ 和 $\psi$ 是 $\mathcal{L}_0$ 的公式。析取右规则为：
> $$
> \frac{\Gamma \Rightarrow \Delta, \varphi, \psi}{\Gamma \Rightarrow \Delta, \varphi \vee \psi}
> $$

> [!Definition]
> **蕴含左规则 Implication Left Rule**：设 $\Gamma$ 和 $\Delta$ 是 $\mathcal{L}_0$ 的有限序列、有限多重公式集，$\varphi$ 和 $\psi$ 是 $\mathcal{L}_0$ 的公式
> $$
> \frac{\Gamma \Rightarrow \Delta, \varphi \qquad \Gamma, \psi \Rightarrow \Delta}{\Gamma, \varphi \to \psi \Rightarrow \Delta}
> $$

> [!Definition]
> **蕴含右规则 Implication Right Rule**：设 $\Gamma$ 和 $\Delta$ 是 $\mathcal{L}_0$ 的有限序列、有限多重公式集，$\varphi$ 和 $\psi$ 是 $\mathcal{L}_0$ 的公式
> $$
> \frac{\Gamma, \varphi \Rightarrow \Delta, \psi}{\Gamma \Rightarrow \Delta, \varphi \to \psi}
> $$

> [!Definition]
> **否定左规则 Negation Left Rule**：设 $\Gamma$ 和 $\Delta$ 是 $\mathcal{L}_0$ 的有限序列、有限多重公式集，$\varphi$ 是 $\mathcal{L}_0$ 的公式
> $$
> \frac{\Gamma \Rightarrow \Delta, \varphi}{\Gamma, \neg \varphi \Rightarrow \Delta}
> $$

> [!Definition]
> **否定右规则 Negation Right Rule**：设 $\Gamma$ 和 $\Delta$ 是 $\mathcal{L}_0$ 的有限序列、有限多重公式集，$\varphi$ 是 $\mathcal{L}_0$ 的公式
> $$
> \frac{\Gamma, \varphi \Rightarrow \Delta}{\Gamma \Rightarrow \Delta, \neg \varphi}
> $$

> [!Definition]
> **相继式演算系统的形式证明**：设 $\Gamma \Rightarrow \Delta$ 是一个相继式，如果存在一个有限的树，满足以下条件：
> 1. 树的每一个节点都是一个相继式
> 2. 根节点是目标相继式 $\Gamma \Rightarrow \Delta$
> 3. 每个叶子节点是初始相继式
> 4. 每个非叶子节点都是由其子节点通过相继式演算系统的推理规则得到的
> 
> 那么称该树为 $\Gamma \Rightarrow \Delta$ 的一个形式证明