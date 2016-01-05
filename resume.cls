% Package setup
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{resume}[2014/01/01 v1 Resume class]
\PassOptionsToClass{11pt,12pt}{article}
\LoadClassWithOptions{article}
\usepackage[margin=.3in]{geometry}
\usepackage{bold-extra}

% Set up left margin
\newdimen\sectionwidth
\sectionwidth=.9in
\hoffset\sectionwidth
\advance\textwidth-\sectionwidth

% Tighten page up
\linespread{.86}
\parindent=0pt
\parskip=0pt
\topsep=0pt
\itemsep=0pt
\parsep=0pt
\def\@listI{}

% Remove line numbers
\pagestyle{empty}

% Don't generate .aux files
\nofiles

% Letterhead
% #1 - Name
% #2 - Address
% #3 - Other contact
\newcommand{\letterhead}[3]{
	\begingroup
		\leftskip=-\hoffset
		\advance\textwidth\hoffset
		\textbf{\Large#1}
		\vskip 2pt
		\nointerlineskip
		\moveleft\hoffset\vbox{\hrule width\textwidth}
		\nointerlineskip
		\vskip 1pt
		#2\hfill#3\par
	\endgroup
}

% A section with the given header
% #1 - section header
\renewenvironment{section}[1]{
	\addvspace{2ex}
	\hbox to 0pt{
		\hss
		\vtop to 0pt{
			\hsize=\sectionwidth
			\raggedright
			\textbf{\textsc{#1}}
		}%
	}
	\vskip-\baselineskip
}{
}

% A work experience
% #1 - Title
% #2 - Employer
% #3 - Date
% #4 - Location
\newenvironment{experience}[4]{
	\textbf{#1} \hfill #3\\
	\textbf{\textit{#2}} \hfill \textit{#4}
	\begin{itemize}
}{
	\end{itemize}
	\vspace{5pt}
}

% A project
% #1 - Name
% #2 - Description
% #3 - Date
\newenvironment{project}[3]{
	\textbf{#1} \textit{#2} \hfill #3
	\begin{itemize}
}{
	\end{itemize}
	\vspace{5pt}
}

% A club/activity
% #1 - Name
% #2 - Officer position
% #3 - Date
\newcommand{\activity}[3]{
	\textbf{#1} \, \textit{#2} \hfill #3\par
}

% An award
% #1 - Name
% #2 - Date
\newcommand{\award}[2]{
	\textbf{#1} \hfill #2\par
}
