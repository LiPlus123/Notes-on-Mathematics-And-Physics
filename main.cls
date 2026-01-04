\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{main}

% 基于 book 类
\LoadClass[11pt,a4paper]{book}
\RequirePackage{ctex}                     % 中文支持
\RequirePackage{amsmath, amssymb, amsthm} % 数学环境
\RequirePackage{tikz}                     % 绘图支持
\RequirePackage{tikz-3dplot}              % 三维绘图支持
\RequirePackage{pgfplots}                 % 绘图支持
\RequirePackage{pgfplotstable}            % 表格支持

% TikZ 扩展库（常用）
\usetikzlibrary{calc,arrows.meta,positioning}
\usetikzlibrary{decorations.pathmorphing,shapes.geometric,shapes.misc}
\RequirePackage{etoolbox}
\RequirePackage{mathtools}                % 增强数学环境
\RequirePackage{physics}                  % 物理学常用符号
\RequirePackage{bm}                       % 粗体数学符号
\RequirePackage{geometry}                 % 页面设置
\RequirePackage{hyperref}                 % 超链接
\RequirePackage{xcolor}                   % 颜色支持
\RequirePackage{graphicx}                 % 图片支持
\RequirePackage{tcolorbox}                % 盒子支持
\RequirePackage{enumitem}                 % 枚举环境自定义

\newtheorem{axiom}{公理}[section]           % 公理环境
\newtheorem{definition}{定义}[section]      % 定义环境
\newtheorem{theorem}{定理}[section]         % 定理环境
\newtheorem{proposition}{命题}[section]     % 命题环境
\newtheorem{lemma}{引理}[section]           % 引理环境
\newtheorem{corollary}{推论}[section]       % 推论环境
\newtheorem{example}{例}[section]           % 例环境
\newtheorem{law}{定律}[section]             % 物理定律环境
\newtheorem{principle}{物理原理}[section]    % 物理原理环境

% 设置 \newtheorem 块的前后间隔
\AtBeginEnvironment{axiom}{\vspace{0.8em}}
\AtEndEnvironment{axiom}{\vspace{0.0em}}
\AtBeginEnvironment{definition}{\vspace{0.8em}}
\AtEndEnvironment{definition}{\vspace{0.0em}}
\AtBeginEnvironment{theorem}{\vspace{0.8em}}
\AtEndEnvironment{theorem}{\vspace{0.0em}}
\AtBeginEnvironment{proposition}{\vspace{0.8em}}
\AtEndEnvironment{proposition}{\vspace{0.0em}}
\AtBeginEnvironment{lemma}{\vspace{0.8em}}
\AtEndEnvironment{lemma}{\vspace{0.0em}}
\AtBeginEnvironment{corollary}{\vspace{0.8em}}
\AtEndEnvironment{corollary}{\vspace{0.0em}}
\AtBeginEnvironment{example}{\vspace{0.8em}}
\AtEndEnvironment{example}{\vspace{0.0em}}
\AtBeginEnvironment{law}{\vspace{0.8em}}
\AtEndEnvironment{law}{\vspace{0.0em}}
\AtBeginEnvironment{principle}{\vspace{0.8em}}
\AtEndEnvironment{principle}{\vspace{0.0em}}

% 设置 proof 块的前后间距
\AtBeginEnvironment{proof}{\vspace{0.0em}}
\AtEndEnvironment{proof}{\vspace{0.0em}}

\geometry{
    left=1.5cm,    % 左边距
    right=1.5cm,   % 右边距
    top=2.5cm,     % 上边距
    bottom=3cm     % 下边距
}

\setlength{\parskip}{0em} % 段间距
\setlength{\parindent}{0em} % 首行缩进

% 枚举块设置
\setlist[enumerate]
{
    topsep=0.3em, % 块前后间隔
    itemsep=0.3em, % 枚举项之间的间隔
    partopsep=0em, % 段落前间隔
    parsep=0em    % 段落内间隔
}

% 说明盒子
\newtcolorbox{note}[1][]
{
    colback=gray!10!white, % 盒子背景色
    colframe=gray!50!black, % 盒子边框色
    title=说明, % 盒子标题
    before=\vspace{0.5em}, % 盒子前间距
    after=\vspace{1em}, % 盒子后间距
    #1
}

% 重要盒子
\newtcolorbox{important}[1][]
{
    colback=yellow!10!white, 
    colframe=gray!50!black, 
    title=注意,
    before=\vspace{0.5em}, % 盒子前间距
    after=\vspace{1em}, % 盒子后间距
    #1
}

\pgfplotsset{compat=1.18} % 关闭兼容性警告，并启用 pgfplots 的新特性和更好的标签显示。