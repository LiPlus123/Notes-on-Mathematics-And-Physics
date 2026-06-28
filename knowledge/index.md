
## 知识库结构

```
knowledge/
├── symbols_list.md
├── specifications.md
├── index.md
├── <part_id>/
│   ├── <chapter_id>/
│   │   ├── chapters_outline.yml
│   │   ├── keypoints_list.yml
│   │   ├── <section_id>/
│   │   │   ├── <subsection_id>.md
│   │   │   ├── ...
```

- `symbols_list.md`：符号和术语约定清单
- `specifications.md`：知识文档规范
- `index.md`：本文档，概述知识库结构
- `<part_id>/`：知识库的第一层目录，表示一个部分
- `<chapter_id>/`：知识库的第二层目录，表示一个章节
- `chapters_outline.yml`：章的大纲配置，指明这个 chapter 下由哪些 sections 和 subsections，sections/subsections 的逻辑顺序
- `keypoints_list.yml`：章的知识点清单，列出这个 chapter 下所有的知识点，知识点的 `belongs_to` 字段指明这个知识点的归属