% Configuration
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{htresume}[2019/05/29 htresume]
\LoadClass{extarticle}
\setlength{\parindent}{0mm}
\pagenumbering{gobble}

% Dependencies
\RequirePackage[utf8]{inputenc}
\RequirePackage[usenames, dvipsnames]{color}
\RequirePackage{enumitem}
\RequirePackage[sfdefault,light]{FiraSans}
\RequirePackage{fontawesome}
\RequirePackage[letterpaper,margin=2cm]{geometry}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{scrextend}

% Header macro
\newcommand{\header}[6]{
  \begin{minipage}[t]{0.4\textwidth}
    \vspace{-\baselineskip}
    \href{https://#2}{\fontsize{40}{\baselineskip}\selectfont\textbf{\MakeUppercase{#1}}}
  \end{minipage}
  \begin{minipage}[t]{0.25\textwidth}
    \boxedicon{PaperPlane}{\href{mailto:#4}{#4}}
    \boxedicon{Github}{\href{https://github.com/#6}{github.com/henrito}}
  \end{minipage}
  \begin{minipage}[t]{0.3\textwidth}
    \boxedicon{Phone}{\href{tel:#3}{#3}}
    \boxedicon{Linkedin}{\href{https://linkedin.com/in/#5}{linkedin.com/in/#5}}
  \end{minipage}
  \vspace{3\baselineskip}
}

% Section macro
\newcommand{\boxedsection}[1]{
  \colorbox{black}{\textcolor{white}{\Large\scshape\textbf{#1}}}
}

% Education macros
\newcommand{\educationitemize}[2]{
  \par\vspace{\baselineskip}\textbf{#1}
  \begin{itemize}[noitemsep]
    #2
  \end{itemize}
}

\newcommand{\educationitem}[3]{
  \item[#1]{\textbf{#2} #3}
}

% Work experience macros
\newcommand{\workitemize}[1]{
  \begin{labeling}{Present - Present}
    #1
  \end{labeling}
  \vspace{0.25\baselineskip}
}

\newcommand{\workitem}[5]{
  \item[#1 - #2] \textbf{#3} at \textbf{#4}
  \begin{itemize}[leftmargin=-5.75em,noitemsep]
    #5
  \end{itemize}
}

\newcommand{\freelanceitem}[4]{
  \item[#1 - #2] \textbf{#3}
  \begin{itemize}[leftmargin=-5.75em,noitemsep]
    #4
  \end{itemize}
}

% Skill macros
\newcommand{\skills}[2]{
  \begin{minipage}[t]{0.475\textwidth}
    #1
  \end{minipage}
  \begin{minipage}[t]{0.475\textwidth}
    #2
  \end{minipage}
  \vspace{\baselineskip}
}

\newcommand{\skillitemize}[2]{
  \begin{itemize}[leftmargin=#1,noitemsep]
  #2
  \end{itemize}
}

\newcommand{\skillitem}[2]{
  \item[\textbf{#1}]#2
}

% Project macros
\newcommand{\projectitemize}[1]{
  \begin{itemize}[leftmargin=12.75em,noitemsep]
  #1
  \end{itemize}
}

\newcommand{\projectitem}[2]{
  \item[\textbf{#1}]#2
}

% Font Awesome macros
\newcommand{\boxedicon}[2]{
  \colorbox{black}{\makebox(8,8){\textcolor{white}{\large\csname fa#1\endcsname}}}\hspace{0.25cm}\textcolor{black}{#2}\par
}
