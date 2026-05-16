\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ucy-thesis}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[a4paper,12pt,oneside]{book}
\usepackage{balance}
\usepackage{enumerate}
\usepackage{xltxtra}
\setmainfont[Mapping=tex-text]{Times New Roman}
\usepackage{graphicx}
\usepackage{booktabs}
\usepackage{setspace}
\usepackage{geometry}
\geometry{a4paper, textwidth=16cm, top=1.5cm, left=2.5cm, bottom=2.5cm, includehead, includefoot}
\usepackage{mathtools}
\usepackage{footnote}
\PassOptionsToPackage{hyphens}{url}
\usepackage[hidelinks]{hyperref}
\urlstyle{same}
\hypersetup{breaklinks=true}
\usepackage{cleveref}
\usepackage{mdframed}
\usepackage{listings}
\usepackage{wrapfig}
\usepackage{amsmath}
\usepackage{algorithm}
% \usepackage[utf8]{inputenc}
\usepackage{stackengine}
\usepackage{pbox}
\usepackage{graphicx}
\usepackage{subcaption}
\usepackage{stackengine}
\usepackage[noadjust]{cite}
\usepackage[table]{xcolor}
\usepackage{tabu}
\usepackage{tabulary}
\usepackage[newcommands]{ragged2e}
\usepackage[noend]{algpseudocode}
\usepackage{tocloft}
\usepackage{parskip}
\parskip 0.4em
\usepackage{etoc}      
\setcounter{secnumdepth}{4}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\definecolor{lightyellow}{rgb}{1.0,0.8,0.0}
\definecolor{lightblue}{rgb}{0.0,0.9,1.0}
\definecolor{lightcarminepink}{rgb}{0.9, 0.4, 0.38} 

\lstset{frame=tb,
  language=Python,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=flexible,
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{dkgreen},
  stringstyle=\color{mauve},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=3
}

\usepackage[toc,page]{appendix}
\usepackage{tocloft}
\usepackage{pgffor}


\usepackage{tocbibind}


\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
% \fancyhead[L]{\small{\leftmark}}
% \fancyhead[RO]{\small{\rightmark}}
\fancyfoot[R]{\small{\thepage}}

\renewcommand{\headrulewidth}{0.0pt}
\renewcommand{\footrulewidth}{0.0pt}

\usepackage{amssymb}
\usepackage{float}
\usepackage{makeidx} 

\setlength\parindent{0pt}

\usepackage{titlesec}
\titleformat{\chapter}[hang] 
{\normalfont\huge\bfseries}{\thechapter~}{1em}{} 
\titlespacing*{\chapter}{0pt}{-50pt}{40pt}

\renewcommand{\contentsname}{TABLE OF CONTENTS}
\renewcommand{\listfigurename}{LIST OF FIGURES}
\renewcommand{\listtablename}{LIST OF TABLES}
\renewcommand{\bibname}{BIBLIOGRAPHY}
\renewcommand{\appendixtocname}{APPENDICES}
\renewcommand{\appendixpagename}{APPENDICES}

\usepackage{ifthen}

\makeindex