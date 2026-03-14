% 文档类定义
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mySimpleArticleCN}
[2025/09/15 v0.1.0 A Simple Article (CN) Class]

% 基类
\LoadClass[UTF8, a4paper, 12pt]{ctexart}


%%%%%%%%%% 依赖包加载 %%%%%%%%%%%%%%%
\RequirePackage{fontspec}       % 自定义字体
\RequirePackage{geometry}       % 页面大小与页边距设置
\RequirePackage{fancyhdr}       % 页眉页脚设置
\RequirePackage{setspace}       % 行距设置
\RequirePackage{graphicx}       % 图
\RequirePackage{booktabs, tabularx, array} % 表格
\RequirePackage{caption}        % 图表标题
\RequirePackage{float}          % 图表浮动设置


% 数学相关
\RequirePackage{amsmath, amssymb, amsthm, siunitx, mathrsfs} 


\RequirePackage{lipsum}         % 生成随机文字
\RequirePackage{gbt7714}        % 设置文献引用格式

\RequirePackage[hidelinks]{hyperref}       % 超链接 链接文字的颜色不变

%%%%%%%%%% 格式设置 %%%%%%%%%%%

% 页面边距
\geometry{hmargin=2.54cm, vmargin=3.18cm,
    headsep=1cm,    % 页眉和正文之间的距离
    footskip=1cm    % 页脚和正文之间的距离
}

% 1.5 倍行距
\onehalfspacing         

\graphicspath{{figures/}}           % 图片所在路径

% 设置表格格式
\renewcommand{\arraystretch}{1.2}   % 基础行距
\setlength{\defaultaddspace}{3pt}   % booktabs默认间距

% 去掉图/表编号与题注文字之间的冒号
\DeclareCaptionLabelSeparator{twospace}{~~}
\captionsetup{labelsep=twospace}


% 图编号格式：节编号.序号
\@addtoreset{figure}{section} 
\renewcommand{\thefigure}{\arabic{section}.\arabic{figure}} 

% 表编号格式：节编号.序号
\@addtoreset{table}{section} 
\renewcommand{\thetable}{\arabic{section}.\arabic{table}} 

% 数学公式编号格式：节编号.序号
\@addtoreset{equation}{section} 
\renewcommand{\theequation}{\arabic{section}.\arabic{equation}} 

% 设置一级标题、二级标题、三级标题的格式
\ctexset{%
  section = {
    format     = \centering\bfseries\fontsize{16bp}{20bp}\selectfont,
    aftername  = \quad,
    beforeskip = 25bp,
    afterskip  = 12bp,
    name = {,.}
  },
  subsection = {
    format     = \bfseries\fontsize{14bp}{18bp}\selectfont,
    aftername  = \quad,
    beforeskip = 12bp,
    afterskip  = 6bp,
  },
  subsubsection = {
    format     = \bfseries\fontsize{13bp}{15bp}\selectfont,
    aftername  = \quad,
    beforeskip = 12bp,
    afterskip  = 6bp,
  }
}

% 章节标题深度、目录深度
\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{4}

% 页眉页脚格式
\pagestyle{plain}

% 参考文献格式
\bibliographystyle{gbt7714-numerical} 

