% vim:tabstop=4 expandtab syntax=tex:
%
% nih.cls - class for preparing NIH (US National Institutes of Health)
% grant applications.
% 
% Copyright (C) 2003, 2004, 2005, 2006 Bruce Donald.
% 
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3c
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2003/12/01 or later.
%
% This work has the LPPL maintenance status "author-maintained".
% 
% The Current Maintainer of this work is Bruce Donald
% (http://www.cs.duke.edu/brd/).
%
% This work consists of only this one file, nih.cls.
% Accompanying example files are not under the LPPL.
%
% last changed by Bruce Donald in 2005
% to mimic the two PHS forms.
%
% Previous modified by Alan Shields, May 2003
% email: Alan-Shields2omrf.ouhsc.edu
% Heavily based upon (read: copied almost exactly from)
%    nih.sty by Bruce R. Donald and Matthew L. Fidler
%
\NeedsTeXFormat{LaTeX2e}
%\ProvidesClass{nih}[2005 NIH PHS 398 as of June 2005]
\ProvidesClass{nih}[2005/06/01 NIH PHS 398 as of June 2005]

% includes needed for preliminary code
\RequirePackage{ifthen}

% Preliminary code
\newcommand{\nih@kk}{~}

\newboolean{nih@blank}
\setboolean{nih@blank}{false}% not strictly necessary, but let's be clear about it

% Options
%%%% Changed by M A Lewis, Ph.D. (mal11 at alumni.cwru.edu)
%%%% NIH suggests Helvetica or Arial 12pt. Use Helvetica Postscript fonts for 12pt also.
\DeclareOption{12pt}{\AtEndOfClass{\RequirePackage{helvet}\renewcommand{\familydefault}{\sfdefault}}}
%\DeclareOption{12pt}{\AtEndOfClass{\RequirePackage{times}}}
%\DeclareOption{12pt}{\AtEndOfClass{\RequirePackage{arial}}}
\DeclareOption{11pt}{\AtEndOfClass{\RequirePackage{helvet}\renewcommand{\familydefault}{\sfdefault}}}
\DeclareOption{nihblank}{\setboolean{nih@blank}{true}}
\DeclareOption{kk}{\renewcommand{\nih@kk}{\small KK}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% The class we're overwriting
\LoadClassWithOptions{article}


% Begin Requirements
%%%% Changed by M A Lewis, Ph.D. (mal11 at alumni.cwru.edu)
%%%% PHS 398 allows 0.5in magins everywhere. Simplify page layout using geometry package.
%\RequirePackage{fullpage}
\RequirePackage[letterpaper,margin=0.5in,includeheadfoot]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{amsmath}

%%%% Changed by M A Lewis, Ph.D. (mal11 at alumni.cwru.edu)
%%%% Simplify page layout by using geometry package above.
% page dimensions (note: assumes 8.5x11)
%\setlength{\oddsidemargin}{31pt}
%\setlength{\textwidth}{8.5in}
%\addtolength{\textheight}{0in} % 0.5in margins on both sides
%\addtolength{\textwidth}{-1.1in}
%\setlength{\oddsidemargin}{-1in}
%\addtolength{\oddsidemargin}{0.505in}
%\setlength{\evensidemargin}{\oddsidemargin}
%\addtolength{\textheight}{0.2in}
%\addtolength{\topmargin}{-0.2in}
%\renewcommand{\baselinestretch}{.9}
%\headwidth=\textwidth

\addtolength{\headheight}{2.5pt}
\def\thesection{\Alph{section}}

% rename the bibliography section
\AtBeginDocument{\renewcommand{\refname}{Literature~Cited}}
%FIXME: something is going on with the bibliography style. Dunno what.
