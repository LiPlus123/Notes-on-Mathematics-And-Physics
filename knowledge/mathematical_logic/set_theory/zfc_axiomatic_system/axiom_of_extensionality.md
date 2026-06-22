
# 外延公理



<!-- axiom_of_extensionality -->
> [!Axiom]
> **外延公理 Axiom of Extensionality**：设 $A,B$ 是任意两个集合，如果它们有相同的元素，那么它们相等，记为 $A = B$。用一阶语言表述为：
> $$
> \forall A \forall B \left( \forall x (x \in A \leftrightarrow x \in B) \to A = B \right)
> $$

> **注**：外延公理说明，一个集合完全由它的元素决定。

<!-- equivalence_of_sets_condition -->
> [!Proposition]
> **集合相等的等价条件**：集合 $A=B$ 当且仅当它们拥有相同的元素。用一阶语言形式化表述为：
> $$
> A = B \leftrightarrow \forall x (x \in A \leftrightarrow x \in B)
> $$

> **证明思路**：从右到左是外延公理，从左到右根据一阶语言公理系统的等词公理模式和 Gen 规则可以证明。

<!-- subset_definition -->
> [!Definition]
> **子集 Subset**：如果集合 $A$ 中的每个元素都是集合 $B$ 的元素，那么称 $A$ 是 $B$ 的子集，或 $B$ 包含 $A$，记为 $A \subseteq B$。用一阶语言表述为：
> $$
> \forall x (x \in A \to x \in B) \to A \subseteq B
> $$

<!-- proper_subset_definition -->
> [!Definition]
> **真子集 Proper Subset**：如果集合 $A$ 是集合 $B$ 的子集，且 $A \neq B$，那么称 $A$ 是 $B$ 的真子集，记为 $A \subset B$。

<!-- subset_condition -->
> [!Proposition]
> **子集的等价条件**：集合 $A$ 是集合 $B$ 的子集当且仅当 $A$ 中的每个元素都是 $B$ 的元素。用一阶语言形式化表述为：
> $$
> A \subseteq B \leftrightarrow \forall x (x \in A \to x \in B)
> $$

> **证明思路**：从右到左是子集的定义，从左到右根据一阶语言公理系统的等词公理模式和 Gen 规则可以证明。