\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zzigak}[zzigak]

\LoadClass[9pt]{article}
\usepackage[margin=1.in]{geometry}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Package options and document metadata
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{xkeyval}

% Take key=val options from the \documentclass declaration
\DeclareOptionX{name}[]{\newcommand{\name}{#1}}
\DeclareOptionX{num}[]{\newcommand{\hwnum}{#1}}
\DeclareOptionX{course}[]{\newcommand{\course}{#1}}
\DeclareOptionX{andrewid}[]{\newcommand{\andrewid}{#1}}
\DeclareOptionX{type}[Homework]{\newcommand{\assignmenttype}{#1}}

\ProcessOptionsX\relax


% Define commands depending on components passed as key/values or default options
\newcommand{\assignmentname}{\assignmenttype{} HW\hwnum}
\newcommand{\netid}{\andrewid}

% Set the author and title in case the user wants to make a title page
\title{\course{} -- \assignmentname}
\author{\name}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Imports and formatting
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setlength{\parindent}{0em}
\setlength{\parskip}{1em}
%\justifying{}
% \setlength{\parskip}{5pt plus 1pt}
%\setlength{\headheight}{13.6pt}

% Page header
\RequirePackage{fancyhdr}
\lhead{\textbf{Author: }\texttt{\netid}}
\chead{\course{} -- \assignmentname}
\rhead{\today }
\pagestyle{fancyplain}
    


% ENVIRONMENTS

% 75% measure rules to split problems into sections
\newcommand{\separator}{\vfill \begin{center} \rule{0.75\linewidth}{0.5pt} \\ \end{center} \vfill}


\newcounter{problem}[section]
\newenvironment{problem}[1][]{\refstepcounter{problem}\par\medskip
   \noindent \textbf{Problem~\theproblem. #1} \rmfamily}{\medskip}

