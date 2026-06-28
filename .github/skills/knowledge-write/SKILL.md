---
name: knowledge-write
description: "用于撰写知识库内容。当用户提到知识撰写、知识补充、知识完善、知识修改时，使用本技能。"
---

## 执行流程

### 第一步：获取约束

1. 读取 `symbols_list.md` 确认项目内的术语和符号约定
2. 阅读 `specifications.md` 确认项目内的知识库文档规范

### 第二步：定位文档

1. 读取 `chapters_outline.yml` 确认章节结构
2. 定位 `knowledge/` 下，指定的 subsection 的文档，如果没有则创建

### 第三步：撰写知识点
1. 根据用户命令撰写、补充、完善或修改 subsection 文档，严格遵循 `specifications.md` 中的知识文档规范

### 第四步 更新 chapters_outline.yml content
1. 将新增的知识点的添加到 `content` 中
2. 将删除的知识点从 `content` 中删除
3. 将修改的知识点的更新到 `content` 中

### 第五步 更新 symbols_list.md
1. 如果新增了术语或符号，则将其添加到 `symbols_list.md` 中