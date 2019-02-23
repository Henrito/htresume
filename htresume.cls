% CLASS CONFIG %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{htresume}[2019/02/22 htresume]
\LoadClass{extarticle}
\setlength{\parindent}{0mm}
\pagenumbering{gobble}

% PACKAGES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[utf8]{inputenc}
\RequirePackage[sfdefault,light]{FiraSans}
\RequirePackage[T1]{fontenc}
\renewcommand*\oldstylenums[1]{{\firaoldstyle #1}}
\RequirePackage[paper=a4,margin=2cm]{geometry}
\RequirePackage{titlesec}
\RequirePackage{titling}
\RequirePackage[usenames, dvipsnames]{color}
\RequirePackage{enumitem}
\RequirePackage{anyfontsize}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fontawesome}

% SECTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\section}
{\bfseries}
{}
{0em}
{}

% SUBSECTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\subsection}
{\LARGE\bfseries\scshape}
{}
{0em}
{}

% SUBSUBSECTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\subsubsection}[runin]
{}
{}
{0em}
{}

% FONT AWESOME %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\boxedicon}[5]{
  \vcenteredhbox{\colorbox{#3}{\makebox({#2},{#2}){\textcolor{#4}{\large\csname fa#1\endcsname}}}}\hspace{0.25cm}\vcenteredhbox{\textcolor{#3}{#5}}
}

% FIRST LAST NAME %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\firstlastname}[1]{
  \fontsize{40}{\baselineskip}\selectfont\textbf{\MakeUppercase{#1}}
}

% CONTACT INFO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\contactinfo}[2]{
  \begin{itemize}[noitemsep]
  \item[]{#1}
  \item[]{#2}
  \end{itemize}
}

\newcommand{\phonenumber}[3]{
  \boxedicon{Phone}{8}{black}{white}{\fontsize{11}{\baselineskip}\selectfont{#1}\hspace{2mm}{#2}\hspace{2mm}{#3}}
}

\newcommand{\emailaddress}[1]{
  \boxedicon{At}{8}{black}{white}{\fontsize{10}{\baselineskip}\selectfont{\href{mailto:#1}{#1}}}
}

\newcommand{\website}[2]{
  \boxedicon{#2}{8}{black}{white}{\fontsize{10}{\baselineskip}\selectfont{\href{https://#1}{#1}}}
}

% COLORED SECTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\coloredsection}[1]{
  \subsection{\colorbox{black}{\textcolor{white}{#1}}}
}

% WORK EXPERIENCE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\workexperience}[4]{
  \begin{tabular}{ll}
  \large{{#1}\dotdivider{#2}} & \large{\textbf{#3} at \textbf{#4}}
  \end{tabular}
}

\newcommand{\freelancingexperience}[3]{
  \begin{tabular}{ll}
  \large{{#1}\dotdivider{#2}} & \large\textbf{#3}
  \end{tabular}
}

% DEGREE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\degreeitemize}[2]{
  \textbf{\large{#1}}
  \begin{itemize}[noitemsep]
  {#2}
  \end{itemize}
}

\newcommand{\degreeitem}[3]{
  \item[#1]{\textbf{#2} {#3}}
}

% SKILLS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\skillitemize}[2]{
  \begin{itemize}[leftmargin={#1},noitemsep]
  {#2}
  \end{itemize}
}

\newcommand{\skillitem}[2]{
  \item[\textbf{#1}]{#2}
}

% PROJECTS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\projectitemize}[1]{
  \begin{itemize}[leftmargin=12.5em,noitemsep]
  {#1}
  \end{itemize}
}

\newcommand{\projectitem}[2]{
  \item[\textbf{#1}]{#2}
}
% FORMATTING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\dotdivider}{\hspace{2mm}·\hspace{2mm}}
