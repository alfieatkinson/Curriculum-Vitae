\def\lxdef{\long\xdef}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{curriculumvitae}

% Document Class Options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}

% Package Imports
\RequirePackage{latexsym, xcolor, float, ragged2e, fullpage, wrapfig, lipsum, tabularx, titlesec, geometry, marvosym, verbatim, enumitem, fancyhdr, multicol, graphicx, cfr-lm}
\RequirePackage[T1]{fontenc}
\RequirePackage{fontawesome5}
\RequirePackage[most]{tcolorbox}
\RequirePackage[hidelinks]{hyperref}

% Define personal details
\lxdef \@name         {Name Surname}
\newcommand{\name}[1]{\xdef\@name{#1}}

\lxdef \@phone        {+44 1234 567890}
\newcommand{\phone}[1]{\xdef\@phone{#1}}

\lxdef \@email        {example@email.com}
\newcommand{\email}[1]{\xdef\@email{#1}}

\lxdef \@website      {example.com}
\newcommand{\website}[1]{\xdef\@website{#1}}

\lxdef \@linkedin     {linkedin.com/in/example}
\newcommand{\linkedin}[1]{\xdef\@linkedin{#1}}

\lxdef \@github       {github.com/example}
\newcommand{\github}[1]{\xdef\@github{#1}}

\lxdef \@leetcode     {leetcode.com/example}
\newcommand{\leetcode}[1]{\xdef\@leetcode{#1}}

\lxdef \@city         {City}
\newcommand{\city}[1]{\xdef\@city{#1}}

\lxdef \@county       {County}
\newcommand{\county}[1]{\xdef\@county{#1}}

\lxdef \@country      {Country}
\newcommand{\country}[1]{\xdef\@country{#1}}

% Colour Definitions
\definecolor{accentcolor}{RGB}{106, 13, 173}
\definecolor{linkcolor}{RGB}{36, 0, 103}

% Page layout
\setlength{\multicolsep}{0pt} 
\pagestyle{fancy}
\fancyhf{} % clear all header and footer fields
\fancyfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\geometry{left=1.4cm, top=0.8cm, right=1.2cm, bottom=1cm}
\setlength{\footskip}{5pt} % Addressing fancyhdr warning

% Hyperlink setup (moved after fancyhdr to address warning)
\hypersetup{
    colorlinks=true,
    linkcolor=linkcolor,
    filecolor=linkcolor,
    urlcolor=linkcolor,
}

% Custom box settings
\usepackage[most]{tcolorbox}
\tcbset{
    frame code={},
    center title,
    left=0pt,
    right=0pt,
    top=0pt,
    bottom=0pt,
    colback=gray!20,
    colframe=white,
    width=\dimexpr\textwidth\relax,
    enlarge left by=-2mm,
    boxsep=4pt,
    arc=0pt,outer arc=0pt,
}

% URL style
\urlstyle{same}

% Text alignment
\raggedright
\setlength{\tabcolsep}{0in}

% Section formatting
\titleformat{\section}{
  \vspace{-4pt}\scshape\raggedright\large
}{}{0em}{}[\color{black}\titlerule \vspace{-7pt}]

% Custom commands

\newcommand{\keywordstyle}[1]{\textbf{\textcolor{accentcolor}{#1}}}
\newcommand{\linkstyle}[1]{\textcolor{linkcolor}{\underline{#1}}}

\newcommand{\resumeItem}[2]{
  \item{
    \textbf{#1}{\hspace{0.5mm}#2 \vspace{-0.5mm}}
  }
}

\newcommand{\resumePOR}[3]{
\vspace{0.5mm}\item
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
        \textbf{#1}\hspace{0.3mm}#2 & \textit{\small{#3}} 
    \end{tabular*}
    \vspace{-2mm}
}

\newcommand{\resumeSubheading}[4]{
\vspace{0.5mm}\item
    \begin{tabular*}{0.98\textwidth}[t]{l@{\extracolsep{\fill}}r}
        \textbf{#1} & \textit{\footnotesize{#4}} \\
        \textit{\footnotesize{#3}} &  \footnotesize{#2}\\
    \end{tabular*}
    \vspace{-2.4mm}
}

\newcommand{\resumeProject}[4]{
\vspace{0.5mm}\item
    \begin{tabular*}{0.98\textwidth}[t]{l@{\extracolsep{\fill}}r}
        \textbf{#1} & \textit{\footnotesize{#3}} \\
        \footnotesize{\textit{#2}} & \footnotesize{#4}
    \end{tabular*}
    \vspace{-2.4mm}
}

\newcommand{\resumeSubItem}[2]{\resumeItem{#1}{#2}\vspace{-4pt}}

\renewcommand{\labelitemi}{$\vcenter{\hbox{\tiny$\bullet$}}$}
\renewcommand{\labelitemii}{$\vcenter{\hbox{\tiny$\circ$}}$}

\newcommand{\resumeSubHeadingListStart}{\begin{itemize}[leftmargin=*,labelsep=1mm]}
\newcommand{\resumeHeadingSkillStart}{\begin{itemize}[leftmargin=*,itemsep=1.7mm, rightmargin=2ex]}
\newcommand{\resumeItemListStart}{\begin{itemize}[leftmargin=*,labelsep=1mm,itemsep=0.5mm]}

\newcommand{\resumeSubHeadingListEnd}{\end{itemize}\vspace{2mm}}
\newcommand{\resumeHeadingSkillEnd}{\end{itemize}\vspace{-2mm}}
\newcommand{\resumeItemListEnd}{\end{itemize}\vspace{-2mm}}
\newcommand{\cvsection}[1]{%
\vspace{2mm}
\begin{tcolorbox}
    \textbf{\large #1}
\end{tcolorbox}
    \vspace{-4mm}
}

\newcolumntype{L}{>{\raggedright\arraybackslash}X}%
\newcolumntype{R}{>{\raggedleft\arraybackslash}X}%
\newcolumntype{C}{>{\centering\arraybackslash}X}%

% Commands for icon sizing and positioning
\newcommand{\socialicon}[1]{\raisebox{-0.05em}{\resizebox{!}{1em}{#1}}}
\newcommand{\ieeeicon}[1]{\raisebox{-0.3em}{\resizebox{!}{1.3em}{#1}}}

% Font options
\newcommand{\headerfonti}{\fontfamily{phv}\selectfont} % Helvetica-like (similar to Arial/Calibri)
\newcommand{\headerfontii}{\fontfamily{ptm}\selectfont} % Times-like (similar to Times New Roman)
\newcommand{\headerfontiii}{\fontfamily{ppl}\selectfont} % Palatino (elegant serif)
\newcommand{\headerfontiv}{\fontfamily{pbk}\selectfont} % Bookman (readable serif)
\newcommand{\headerfontv}{\fontfamily{pag}\selectfont} % Avant Garde-like (similar to Trebuchet MS)
\newcommand{\headerfontvi}{\fontfamily{cmss}\selectfont} % Computer Modern Sans Serif
\newcommand{\headerfontvii}{\fontfamily{qhv}\selectfont} % Quasi-Helvetica (another Arial/Calibri alternative)
\newcommand{\headerfontviii}{\fontfamily{qpl}\selectfont} % Quasi-Palatino (another elegant serif option)
\newcommand{\headerfontix}{\fontfamily{qtm}\selectfont} % Quasi-Times (another Times New Roman alternative)
\newcommand{\headerfontx}{\fontfamily{bch}\selectfont} % Charter (clean serif font)



% Header
\newcommand{\makeheader}{
    \headerfontiii

    \begin{center}
        {\Huge{\keywordstyle{\@name}}}
    \end{center}
    \vspace{-6mm}

    \begin{center}
        \small{
        \@phone | \href{mailto:\@email}{\linkstyle{\@email}} | \href{https://www.\@website}{\linkstyle{\@website}}
        }
    \end{center}
    \vspace{-6mm}

    \begin{center}
        \small{
        \socialicon{\textcolor{accentcolor}{\faLinkedin}} \href{https://www.\@linkedin}{\linkstyle{\@linkedin}} | 
        \socialicon{\textcolor{accentcolor}{\faGithub}} \href{https://www.\@github}{\linkstyle{\@github}} |
        \socialicon{\textcolor{accentcolor}{\faCode}} \href{https://www.\@leetcode}{\linkstyle{\@leetcode}}
        }
    \end{center}
    \vspace{-6mm}

    \begin{center}
        \small{\@city, \@county, \@country}
    \end{center}

    \vspace{-4mm}
}

% Professional Summary
\newcommand{\makesummary}[1]{
    \section{\keywordstyle{Professional Summary}}
    \vspace{1mm}
    \small{
        #1
    }
    \vspace{-2mm}
}

% Experience
\newcommand{\makeexperience}[1]{
    \section{\keywordstyle{Experience}}
    \vspace{-0.4mm}
    \resumeSubHeadingListStart

    #1

    \resumeSubHeadingListEnd
    \vspace{-6mm}
}

\newcommand{\job}[7]{
    \resumeSubheading
        {{#1 [\href{#2}{\textcolor{accentcolor}{\faIcon{globe}}}]}}{#3}
        {#4}{#5 -- #6}
        \ifx&#7&
        \else
            \resumeItemListStart
                #7
            \resumeItemListEnd
        \fi
}

% Education
\newcommand{\makeeducation}[1]{
    \section{\keywordstyle{Education}}
    \vspace{-0.4mm}
    \resumeSubHeadingListStart

    #1

    \resumeSubHeadingListEnd
    \vspace{-6mm}
}

\newcommand{\degree}[9]{
    \resumeSubheading
        {#1}{#2}
        {#3}{#4 -- #5 \ifx&#6&\else (Grad. #6) \fi}
        \resumeItemListStart
            \item \textbf{Classification:} #7
            \ifx&#8&\else \item \textbf{Activities \& Societies:} #8 \fi
            \ifx&#9&\else \item \textbf{Relevant Modules:} #9 \fi
        \resumeItemListEnd
}

% Projects
\newcommand{\makeprojects}[1]{
    \section{\keywordstyle{Projects}}
    \vspace{-0.4mm}
    \resumeSubHeadingListStart

    #1

    \resumeSubHeadingListEnd
    \vspace{-6mm}
}

\newcommand{\project}[6]{
    \resumeProject
        {#1}
        {\ifx&#2&\vspace{-0.35cm}\else Tools: #2\fi}
        {#3 -- #4}
        {{}[\href{#5}{\textcolor{accentcolor}{\faGithub}}]}
        \ifx&#6&
        \else
            \resumeItemListStart
                #6
            \resumeItemListEnd
        \fi
}

% Skills
\newcommand{\makeskills}[1]{
    \section{\keywordstyle{Skills}}
    \vspace{0.4mm}
    \resumeHeadingSkillStart

    #1

    \resumeHeadingSkillEnd
}

\newcommand{\skillgroup}[2]{
    \resumeSubItem{#1: }{#2}
}

% Certifications
\newcommand{\makecertifications}[1]{
    \section{\keywordstyle{Courses \& Certifications}}
    \vspace{-0.4mm}
    \resumeSubHeadingListStart

    #1

    \resumeSubHeadingListEnd
    \vspace{-6mm}
}

\newcommand{\course}[4]{
    \resumePOR{}{
        \textbf{#1:} {{\href{#3}{\linkstyle{#2}}}}}{#4}
}

\newcommand{\certificate}[4]{
    \resumePOR{}{
        \textbf{#1:} {{\href{#3}{\linkstyle{#2}}}}}{#4}
}

% Awards
\newcommand{\makeawards}[1]{
    \section{\keywordstyle{Awards}}
    \vspace{-0.4mm}
    \resumeSubHeadingListStart
    
    #1

    \resumeSubHeadingListEnd
    \vspace{-6mm}
}

\newcommand{\award}[4]{
    \resumePOR{}{
        \textbf{#1:} {{\href{#3}{\linkstyle{#2}}}}}{#4}
}

% Volunteer Positions
\newcommand{\makevolunteerpositions}[1]{
    \section{\keywordstyle{Volunteer Positions}}
    \vspace{-0.4mm}
    \resumeSubHeadingListStart

    #1

    \resumeSubHeadingListEnd
    \vspace{-6mm}
}

\newcommand{\position}[7]{
    \resumeSubheading
        {{#1 [\href{#2}{\textcolor{accentcolor}{\faIcon{globe}}}]}}{#3}
        {#4}{#5 -- #6}
        \ifx&#7&
        \else
            \resumeItemListStart
                #7
            \resumeItemListEnd
        \fi
}

% Additional Information
\newcommand{\makeadditionalinfo}[1]{
    \section{\keywordstyle{Additional Information}}
    \vspace{-0.4mm}
    \resumeHeadingSkillStart

    #1

    \resumeHeadingSkillEnd
}

\newcommand{\infogroup}[2]{
    \resumeSubItem{#1: }{#2}
}

% References
\newcommand{\makereferences}[1]{
    \section{\keywordstyle{References}}
    \vspace{-0.2mm}
    \small{
        \begin{multicols}{2}
        \begin{enumerate}[leftmargin=*,labelsep=2mm]
        #1
        \end{enumerate}
        \end{multicols}
    }
    \vspace{-4mm}
}

\newcommand{\reference}[5]{
    \item \textbf{#1}\\
        #2\\
        #3\\
        Email: #4\\
        \textit{Relationship: #5}
}

% End of Class
\endinput