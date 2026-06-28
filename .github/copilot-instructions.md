
# Notes on Mathematics and Physics

## 项目概览

- `knowledge/`：知识库的根目录，包含大纲目录、笔记文档、知识点清单
- `lean/`：Lean 代码，用于形式化验证知识库中的知识点
- `latex/`：latex 代码，最终用于生成完整的 PDF 文档

## 章节结构

知识体系的章节结构分为四个层级：
1. **部分 Part**：人为划分的知识体系的最顶层，是知识库下第一级目录
2. **章 Chapter**：一门具体的课程专题，比如：线性代数、数学分析、量子力学等。每章都有一个唯一的 `chapter_id` 作为标识，使用 snake_case 命名
3. **节 Section**：专题课程下一个边界明确的完整知识单元，比如：线性代数下的线性空间、数学分析下积分学等。每节都有一个唯一的 `section_id` 作为标识，使用 snake_case 命名
4. **小节 Subsection**：节下的一个内聚的知识模块，比如：线性空间下的基底与维数、积分学下的微积分基本定理等。每小节都有一个唯一的 `subsection_id` 作为标识，使用 snake_case 命名。markdown，latex 和 lean 代码都以小节为单位组织。

## 知识点

一个 subsection 包含多个知识点。项目中的数学文档中的知识点分为：
1. 公理 Axiom
2. 定义 Definition
3. 引理 Lemma
4. 命题 Proposition
5. 定理 Theorem
6. 推论 Corollary

项目中的物理中的知识点分为：
1. 物理原理 Principle
2. 物理定义 Definition
3. 物理定律 Law
4. 物理方程 Equation

其中，每个知识点都有一个唯一的 `keypoint_id` 作为标识，使用 snake_case 命名。每个知识点后可以辅以“例子 Example” 和“注解 Remark”，帮助理解知识点。