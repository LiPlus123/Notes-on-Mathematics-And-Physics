
# 文档规范

## 约束

- **以 subsection 为单位**：编写的内容不能超出当前 subsection 的范围。
- **严谨准确**：知识点叙述必须严谨准确，不能臆造、不能有错误、不能模棱两可、不能有语病、不能有错别字。
- **证明思路而非完整证明**：定理、引理、推论、例子只需给出简明的证明思路，不写完整证明（供后续 Lean4 形式化验证参考）。
- **keypoint_id 唯一且不可修改**：每个知识点的 keypoint_id 必须全局唯一（用描述性 snake_case 命名），已存在的 keypoint_id 不能修改。
- **术语符号统一**：所有数学符号和术语必须与 `symbols_list.md` 保持一致。
- **公式格式**：多行公式统一使用 `$$` 独立成行，不使用编号环境（`equation`、`align` 等）；对齐环境改用 `\begin{align*}...\end{align*}` 嵌套在 `$$` 内；分段函数用 `\begin{cases}...\end{cases}` 嵌套在 `$$` 内。

## 数学环境

与 LaTeX 中的数学环境类似，文档中每个知识点都必须放在对应的引用块中。

### 数学文档按照以下格式编写

公理 Axiom 环境：
```markdown
<!-- keypoint_id -->
> [!Axiom]
> **公理名**：[公理内容]
```

定义 Definition 环境：
```markdown
<!-- keypoint_id -->
> [!Definition]
> **定义名**：[定义内容]
```

定理 Theorem 环境：
```markdown
<!-- keypoint_id -->
> [!Theorem]
> **定理名**：[定理内容]
```

引理 Lemma 环境：
```markdown
<!-- keypoint_id -->
> [!Lemma]
> **引理名**：[引理内容]
```

推论 Corollary 环境：
```markdown
<!-- keypoint_id -->
> [!Corollary]
> **推论名**：[推论内容]
```


### 物理文档按照以下格式编写

物理原理 Principle 环境：
```markdown
<!-- keypoint_id -->
> [!Principle]
> **物理原理名**：[物理原理内容]
```

物理定义 Definition 环境：
```markdown
<!-- keypoint_id -->
> [!Definition]
> **定义名**：[物理定义内容]
```

物理定律 Law 环境：
```markdown
<!-- keypoint_id -->
> [!Law]
> **物理定律名**：[物理定律内容]
```

物理方程 Equation 环境：
```markdown
<!-- keypoint_id -->
> [!Equation]
> **物理方程名**：[物理方程内容]
```

### 其他引用块

例子 Example 环境：
```markdown
> [!Example]+
> [例子内容]
```

说明 Remark 环境：
```markdown
> [说明内容]
```