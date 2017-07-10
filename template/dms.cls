%% Mises \`a jour:
%% janvier 2017 par Victor FARDEL:
%%    - mise en commentaire de la page listant les membres du jury, suppression à l'affichage
%%    - pagination du corps principal du document: de en haut à droite à en bas au centre
%%
%%
%%
%%
%% This is file `dms.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% dms.dtx  (with options: `classe')
%% 
%%% ====================================================================
%%%  @LaTeX-file{
%%%     filename  = "dms.cls",
%%%     author    = "Nicolas Beauchemin",
%%%     copyright = "Copyright (C) 2000 , Nicolas Beauchemin
%%%                  all rights reserved.  Copying of this file is
%%%                  authorized only if either:
%%%                  (1) you make absolutely no changes to your copy,
%%%                  including name; OR
%%%                  (2) if you do make changes, you first rename it
%%%                  to some other name.",
%%%     address   = "D\'epartement de Math\'ematiques et de Statistique",
%%%     telephone = "514-343-6705",
%%%     FAX       = "514-343-5700",
%%%     email     = "dms@dms.umontreal.ca (Internet)",clsguide.pdf
%%%     keywords  = "latex, amslatex, ams-latex, theorem",
%%%     abstract  = " Ce fichier est un package conçu pour être
%%%                  utilis\'e avec la version de LaTeX2e 1995/06/01. Il
%%%                  est pr\'evue pour la classe ``amsbook''. Il en
%%%                  modifie le format des pages, l'entête des
%%%                  sections, etc, afin d'être  conforme au mod\`ele de
%%%                  m\'emoire de maîtrise de l'Universit\'e de
%%%                  Montr\'eal. Finalement ce fichier est grandement
%%%                  inspir\'e du fichier amsclass.dtx.",
%%%     docstring = "The checksum field contains: CRC-16 checksum,
%%%                  word count, line count, and character count, as
%%%                  produced by Robert Solovay's checksum utility."}
%%%  ====================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dms}[2003/04/16 v1.5]
\newif\iftagsleft@
\newif\ifphd@
\newif\ifmaitrise@
\newif\ifrapport@
\newif\iftravail@
\newif\ifphdart@
\newif\ifnobabel@
\newif\ifrectoverso@
\newif\ifrecto@
\newif\ifinitial@
\newif\ifpoliceTNR@
\newif\ifnatbib@
 
\DeclareOption{twoside}{\rectoverso@true}
\DeclareOption{nobabel}{\nobabel@true}
\DeclareOption{anglais}{\nobabel@true}
\DeclareOption{phd}{\phd@true}
\DeclareOption{maitrise}{\maitrise@true}
\DeclareOption{rapport}{\rapport@true}
\DeclareOption{travaildirige}{\travail@true}
\DeclareOption{phdart}{\phdart@true\phd@true}
\DeclareOption{phdArt}{\phdart@true\phd@true}
\DeclareOption{initial}{\initial@true}
\DeclareOption{policeTNR}{\policeTNR@true}
\DeclareOption{natbib}{\natbib@true}
\DeclareOption{leqno}{\tagsleft@true}
\DeclareOption{reqno}{\tagsleft@false}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsbook}}

\ProcessOptions\relax


\iftagsleft@ {\PassOptionsToClass{leqno}{amsbook}}
\else{\PassOptionsToClass{reqno}{amsbook}}\fi

\ifrectoverso@{\PassOptionsToClass{twoside}{amsbook}}\else{\PassOptionsToClass{oneside}{amsbook}}\fi

\def\@tempa#1#2\@nil{\edef\@classname{#1}}
\expandafter\@tempa\@currnamestack{}{}{}\@nil
\ifx\@classname\@empty \edef\@classname{\@currname}\fi

\LoadClass{amsbook}
\newcommand\HUGE{\@xsetfontsize\HUGE{12}}

  %%% Packages à charger.
\RequirePackage[utf8]{inputenc} 	% N\'ecessaire pour adopter l'encodage UTF-8.
\RequirePackage[T1]{fontenc}
\RequirePackage{nextpage}  %De CTAN « Provides \clearpage and \newpage variants that guarantee to end up on even/odd num­bered pages »
\ifpoliceTNR@  % utiliser la police times new roman a la place de la police latex par defaut
  \RequirePackage{txfonts}
  \RequirePackage{times} 
\else
  \usepackage{lmodern}\normalfont   % Charge la fonte vectorielle "Latin Modern", une version 
				    % de la fonte par défaut "Computer Modern", qui supporte les caractères latins.
  \DeclareFontShape{T1}{lmr}{bx}{sc} { <-> ssub * cmr/bx/sc }{} % permet l'ecriture en gras de tableau.. figure...
\fi

% set the caption width to textwidth 
%\usepackage[labelfont=bf, width=\linewidth]{caption} 

\voffset=0pt %1 inch=2.54 cm de marge en haut
\headheight=12pt
\headsep=16pt
\footskip=52pt%44pt%20pt
\textheight=656pt
\topskip=10pt
\topmargin=-29pt
\textwidth=470pt%451pt%413pt
\columnsep=10pt
\columnseprule=0pt
\oddsidemargin=0pt%56pt
\evensidemargin=0pt
\hoffset=0pt
\marginparwidth=0pt%60pt
\marginparsep=0pt%10pt
\marginparpush=5pt

\ifnatbib@
  \RequirePackage{natbib}
\fi
\ifnobabel@\else
  \RequirePackage[frenchb]{babel}
\fi
\def\ps@headings{\ps@empty
  \def\@evenhead{\normalfont\normalsize\rm
      \hfil}%\rlap{\thepage}
  \def\@oddhead{\normalfont\normalsize\rm
      \hfil }%\llap{\thepage}
\def\@oddfoot{\normalfont\normalsize\rm
      \hfil {\thepage} \hfil}%
\def\@evenfoot{\normalfont\normalsize\rm
      \hfil {\thepage} \hfil}%\rlap{\thepage}
  \let\@mkboth\markboth
  \def\partmark{\@secmark\markboth\partrunhead\partname}%
  \def\chaptermark{%
    \@secmark\markboth\chapterrunhead{}}%
  \def\sectionmark{%
    \@secmark\markright\sectionrunhead\sectionname}%
}
\def\ps@firstheadings{\let\@mkboth\@gobbletwo
   \def\@oddhead{\hfil}%\rm\thepage}
   \def\@evenhead{\hfil}%\rm\thepage}
   \def\@oddfoot{\null\normalfont\normalsize\rm \hfil {\thepage}\hfil}
   \def\@evenfoot{\null\normalfont\normalsize\rm
     \hfil\null \thepage \hfil\null}
}
\def\ps@appendixheadings{\let\@mkboth\@gobbletwo
   \def\@oddhead{\hfil\rm\thechapter-\@roman\thepage}
   \def\@evenhead{\hfil\rm\thechapter-\@roman\thepage}
   \def\@oddfoot{\null\normalfont\normalsize\rm \hfil}%{\thepage}\hfil}
   \def\@evenfoot{\null\normalfont\normalsize\rm
     \hfil\null}%{\thepage}\hfil\null}
}
\def\ps@myheadings{\let\@mkboth\@gobbletwo
  \let\@oddfoot\@empty\let\@evenfoot\@empty
   \def\@oddhead{\null\\normalfont\normalsize\rm \hfil{\thepage}}
   \def\@evenhead{\null\\normalfont\normalsize\rm
     {\thepage}}%\hfil\null}
}

\def\sh@rtauthor{}
\def\sh@rttitle{}
\def\brouillon{
\def\ps@headings{\let\@mkboth\@gobbletwo
  \let\partmark\@gobble\let\sectionmark\@gobble
                       \let\chaptermark\@gobble
  \let\subsectionmark\@gobble
 \def\@oddfoot {\null\normalfont
                \footnotesize\hfil[Version\, \@version:
                \todayfr---\hhmm\,]\hfil}
 \def\@evenfoot{\null\normalfont
                \footnotesize\hfil[Version\, \@version:
                \todayfr---\hhmm\,]\hfil}
 \def\@evenhead{\normalfont\normalsize\rm
                \rlap{\thepage}\hfil{\sh@rtauthor}\hfil}%
 \def\@oddhead{\normalfont\normalsize\rm \hfil
               {\sh@rttitle}\hfil\llap{\thepage}}%
                 }
\def\ps@myheadings{\let\@mkboth\@gobbletwo
  \def\@oddfoot {\null\normalfont
                \footnotesize\hfil[Version\,\@version:
                \todayfr---\hhmm\,]\hfil}
  \def\@evenfoot{\null\normalfont
                \footnotesize\hfil[Version\,\@version:
                \todayfr---\hhmm\,]\hfil}
  \def\@oddhead{\null\normalfont
                \normalsize\rm
                \hfil\thepage}%
  \def\@evenhead{\normalfont
                \normalsize\rm
                \thepage \hfil\null}%
                }
\def\ps@firstheadings{\let\@mkboth\@gobbletwo
  \let\partmark\@gobble\let\sectionmark\@gobble
                       \let\chaptermark\@gobble
  \let\subsectionmark\@gobble
 \def\@oddfoot {\null\normalfont
                \footnotesize\hfil[Version\,\@version:
                \todayfr---\hhmm\,] \hfil}%\thepage\hfil
 \def\@evenfoot{\null\normalfont
                \footnotesize\hfil[Version\,\@version:
                \todayfr---\hhmm\,] \hfil}%\thepage\hfil
        \let\@evenhead\@empty \let\@oddhead\@empty
  }
\ps@headings
}
\def\hhmm{%
    \count1=\time                  % l'heure actuelle en minute 00:00
    \count2=\count1                % count2 contient l'heure en minutes
    \divide \count1 by 60          % count1 contient l'heure en heures
    \count3=\count1                % count3 contient hh en heures
    \multiply \count1 by 60        % count1 contient hh en minutes
    \advance\count2 by -\count1    % count2 contient mm en minutes
                                   % il ne doit pas y avoir d'espace
                                   % apr\`es<\advance>
    \number\count3:\number\count2  % affiche heures:minutes
   }


\renewcommand{\title}[1]{\gdef\@title{#1}}
\def\copyrightname#1{\def\@copyrightname{{\sc#1}}}
\renewcommand{\author}[1]{%
    \gdef\authors{#1}%
  \g@addto@macro\addresses{\author{}}%
\def\@copyrightname{#1}
}
\let\authors\@empty \let\addresses\@empty
\def\mdate#1{\def\@mdate{{#1}}}
\def\@mdate{}

\def\version#1{\def\@version{{#1}}}
\version{0}

\def\university#1{\def\@university{{\normalfont\bf\Large#1}}}
\university{{\bf\Large Universit\'e de Montr\'eal}}

\def\facultyto#1{\def\@facultyto{{\normalfont\rm#1}}}
\facultyto{{\rm Facult\'e des \'etudes sup\'erieures}}

\def\department#1{\def\@department{{\normalfont\rm#1}}}
\def\@department{D\'epartement de math\'ematiques et de statistique}

\def\faculty#1{\def\@faculty{{\normalfont\rm#1}}}
\def\@faculty{}

\def\date#1{\def\@date{{\normalfont\rm#1}}}
\def\@date{}

\def\copyrightyear#1{\def\@copyrightyear{{\normalfont\footnotesize#1}}}
\def\@copyrightyear{}

\def\copyrightline{%
                   \centerline{\footnotesize ${}^{\text{\copyright}}$
   \ifx\@copyrightname\empty{..........},\else
   {\@copyrightname},\fi%
   \ \@copyrightyear}
                  }

\def\prepresentedto{\vskip1.75pc}

\def\degree#1{\def\@degree{{\normalfont\rm\small#1}}}
\ifmaitrise@\def\@degree{Maître \`es sciences (M.Sc.)} \fi
\ifrapport@\def\@degree{Maître \`es sciences (M.Sc.)} \fi
\iftravail@\def\@degree{Maître \`es sciences (M.Sc.)} \fi
\ifphd@\def\@degree{Philosophi\ae\ Doctor (Ph.D.)} \fi

\def\orientation#1{\def\@orientation{{\normalfont\rm\small#1}}}
\def\@orientation{}

\def\sujet#1{\def\@sujet{{\normalfont\rm\small#1}}}
\def\@sujet{}

\def\president#1{\def\@president{{\normalfont\sl#1}}}
\def\@president{}

\def\directeur#1{\def\@directeur{{\normalfont\sl#1}}}
\def\@directeur{}

\def\codirecteur#1{\def\@codirecteur{{\normalfont\sl#1}}}
\def\@codirecteur{}

\def\membrejury#1{\def\@membrejury{{\normalfont\sl#1}}}
\def\@membrejury{}

\def\membresjury#1{\def\@membresjury{{\normalfont\sl#1}}}
\def\@membresjury{}

\def\plusmembresjury#1{\def\@plusmembresjury{{\normalfont\sl#1}}}
\def\@plusmembresjury{}

\def\examinateur#1{\def\@examinateur{{\normalfont\sl#1}}}
\def\@examinateur{}

\def\repdoyen#1{\def\@repdoyen{{\normalfont\sl#1}}}
\def\@repdoyen{}

\def\dateacceptation#1{\def\@dateacceptation{{\normalfont\sl#1}}}
\def\@dateacceptation{}

\def\Year{\number\year}

\def\todayfr{\space\number\day\space\MoYrfr}

\def\MoYrfr{%
    \ifcase\month\or
  janvier\or f\'evrier\or mars\or avril\or mai\or juin\or
  juillet\or août\or septembre\or octobre\or novembre\or d\'ecembre
    \fi%
    \space\number\year}%

\def\maketitle{\par
  \@topnum\z@
  \ifx\@empty\sh@rtauthor \let\sh@rtauthor\sh@rttitle\fi
  \begingroup
  \@maketitle
  \endgroup
  \thispagestyle{empty}%
  \c@footnote\z@
  \def\do##1{\let##1\relax}%
  \do\maketitle \do\@maketitle

  \do\address \do\@xaddress
  \do\email \do\@xemail \do\curraddr \do\@xcurraddr
  \do\department \do\@department
  \do\faculty \do\@faculty
  \do\degree \do\@degree
  \do\sujet \do\@sujet
  \do\orientation \do\@orientation
  \do\date \do\@date
  \do\copyrightyear \do\@copyrightyear
  \do\president \do\@president
  \do\directeur \do\@directeur
  \do\codirecteur \do\@codirecteur
  \do\membrejury \do\@membrejury
  \do\membresjury \do\@membresjury
  \do\plusmembresjury \do\@plusmembresjury
  \do\examinateur \do\@examinateur
  \do\repdoyen \do\@repdoyen
  \do\dateacceptation \do\@dateacceptation
}

%Changement de l'espace pour la num\'erotation romaine de la page des mati\`eres
  
\renewcommand{\@pnumwidth}{3.5em}% default is 1.55em


\def\@maketitle{%
 \ifinitial@\pagenumbering{alph}\cleardoublepage\thispagestyle{empty}\mbox{}\newpage\pagenumbering{roman}\setcounter{page}{0}\fi


\cleardoublepage \thispagestyle{empty}%
\begingroup
  \normalfont\normalsize
\topskip84\p@      %=7pc
  \advance\topskip-\headsep \advance\topskip-\headheight
\vskip12\p@\@plus12\p@
 \centerline{\bf\Large\@university}
\vskip42\p@
  \vtop{\centering{%
        \bf\Large\expandafter\upshape\expandafter{\@title}\@@par}%
        \global\dimen@i\prevdepth}%
   \prevdepth\dimen@i
  \vskip32pt\centerline{\rm par}\vskip20pt%
  \ifx\@empty\authors
  \else
    \vtop{
      \centering{%
       {\bf\Large\authors}\@@par}%
        \global\dimen@i\prevdepth}\relax%
   \prevdepth\dimen@i
  \fi
\vskip18\p@\@plus12\p@
  \vtop{\centering{\rm\footnotesize%
        \@department\\
        \ifx\@empty\@faculty {Facult\'e des arts et des sciences}
                \else\@faculty\fi
                  \endgraf}
       }
\vskip60\p@\@plus24\p@
\prepresentedto
    \baselineskip9\p@
    \vtop{\centering{\rm\small%
 \ifmaitrise@ M\'emoire pr\'esent\'e \`a la \@facultyto\\ \fi
 \ifrapport@ Rapport de stage pr\'esent\'e \`a la \@facultyto\\ \fi
 \iftravail@ Travail dirig\'e pr\'esent\'e \`a la \@facultyto\\ \fi
 \ifphd@ Th\`ese pr\'esent\'ee \`a la \@facultyto\\ \fi
                  en vue de l'obtention du grade de\\
                  \@degree\\
                  en \ifx\@empty\@sujet {.........\\}
                     \else\@sujet\\\fi
                  \ifx\@empty\@orientation {}
                  \else orientation \@orientation\\\fi}%%\\[\baselineskip] Orientation \@orientation\fi}%
       }
%\vskip36\p@\@plus14\p@
\vfill
\centerline{\rm\ifx\@empty\@date {\MoYrfr}
                  \else\@date\fi}
\vskip20\p@\@plus14\p@
\vfill
\copyrightline
\endgroup
%
% Deuxi\`eme page titre.
%
\cleardoublepage\thispagestyle{empty}
% \begingroup
% \topskip 5pc\relax
% \vskip12\p@\@plus6\p@
%   \normalfont\normalsize
% \centerline{\bf\Large\@university}
% \centerline{\rm\@facultyto}
% \vskip18\p@\@plus12\p@
% \ifmaitrise@ {\centerline{Ce m\'emoire intitul\'e}}\fi
% \ifrapport@ {\centerline{Ce rapport de stage intitul\'e}}\fi
% \iftravail@ {\centerline{Ce travail dirig\'e intitul\'e}}\fi
% \ifphd@ {\centerline{Cette th\`ese intitul\'ee}}\fi
% \vskip12\p@\@plus6\p@
%   \vtop{\centering{%
%         \bf\Large\expandafter\upshape\expandafter{\@title}\@@par}%
%    \global\dimen@i\prevdepth}\relax%
% \vskip18\p@\@plus12\p@
% 
% \ifmaitrise@\centerline{pr\'esent\'e par}\fi
% \ifrapport@\centerline{pr\'esent\'e par}\fi
% \iftravail@\centerline{pr\'esent\'e par}\fi
% \ifphd@\centerline{pr\'esent\'ee par}\fi
% \vskip18\p@\@plus6\p@
%   \ifx\@empty\authors
%   \else
%     \vtop{
%       \centering{%
%        {\bf\Large\authors}\@@par}%
%         \global\dimen@i\prevdepth}\relax%
%    \prevdepth\dimen@i
%   \fi
% \vskip18\p@\@plus6\p@
% \ifmaitrise@\centerline{a \'et\'e \'evalu\'e par un jury compos\'e des personnes suivantes :}\fi %
% \ifrapport@\centerline{a \'et\'e \'evalu\'e par un jury compos\'e des personnes suivantes :} \fi%
% \iftravail@\centerline{a \'et\'e \'evalu\'e par un jury compos\'e des personnes suivantes :} \fi%
% \ifphd@\centerline{a \'et\'e \'evalu\'ee par un jury compos\'e des personnes suivantes :}\fi %
% 
% \vskip18\p@\@plus6\p@
% \baselineskip9\p@
%        \ifx\@president\empty\vskip3\p@\else
% \vtop{\centering{
% \ifx\@president\empty\vskip14\p@\else
%            \@president\vskip3\p@\fi}}
% \centerline{\vbox{\hrule width 12pc}}%
% \vskip1pt
% \vtop{\centering{\footnotesize(pr\'esident-rapporteur)}}
% \fi
% \vskip15\p@\@plus6\p@
% \ifx\@directeur\empty\else
% \vtop{\centering{\@directeur\vskip3\p@}}
% \centerline{\vbox{\hrule width 12pc}}%
% \vskip1pt
% \vtop{\centering{\footnotesize(directeur de recherche)}}
% \vskip15\p@\@plus6\p@
% \fi
%        \ifx\@codirecteur\empty\else
% \vtop{\centering{\@codirecteur\vskip3\p@}}
% \centerline{\vbox{\hrule width 12pc}}%
% \vskip1pt
% \vtop{\centering{\footnotesize(codirecteur)}}
% \vskip15\p@\@plus6\p@
% \fi
%        \ifx\@membrejury\empty\else
% \vtop{\centering{\@membrejury\vskip3\p@}}
% \centerline{\vbox{\hrule width 12pc}}%
% \vskip1pt
% \vtop{\centering{\footnotesize(membre du jury)}}
% \vskip15\p@\@plus6\p@
% \fi
%        \ifx\@membresjury\empty\else
% \vtop{\centering{\@membresjury\vskip3\p@}}
% \centerline{\vbox{\hrule width 12pc}}%
% \vskip1pt
% \vtop{\centering{\footnotesize(membres du jury)}}
% \vskip15\p@\@plus6\p@
% \fi
%        \ifx\@plusmembresjury\empty\else
% \vtop{\centering{\@plusmembresjury\vskip3\p@}}
% \centerline{\vbox{\hrule width 12pc}}%
% \vskip1pt
% \vtop{\centering{\footnotesize(membres du jury)}}
% \vskip15\p@\@plus6\p@
% \fi
%        \ifx\@examinateur\empty\else
% \vtop{\centering{\@examinateur\vskip3\p@}}
% \centerline{\vbox{\hrule width 12pc}}%
% \vskip1pt
% \vtop{\centering{\footnotesize(examinateur externe)}}
% \vskip15\p@\@plus6\p@
% \fi
% \ifphd@
% \vtop{\centering{
%        \ifx\@repdoyen\empty\vskip14\p@\else
%            \@repdoyen\vskip3\p@\fi}}
% \centerline{\vbox{\hrule width 12pc}}%
% \vskip1pt
% \vtop{\centering{\footnotesize(repr\'esentant du doyen de la FAS)}}
% \vskip15\p@\@plus6\p@
% \fi
% \vfill
% \ifmaitrise@\centerline{M\'emoire accept\'e le}\fi
% \ifrapport@\centerline{Rapport de stage accept\'e le}\fi
% \iftravail@\centerline{Travail dirig\'e accept\'e le}\fi
% \ifphd@\centerline{Th\`ese accept\'ee le}\fi
% \vskip6\p@
% \vtop{\centering{
%        \ifx\@dateacceptation\empty\vskip14\p@\else
%            \@dateacceptation\vskip3\p@\fi}}
% \centerline{\vbox{\hrule width 9pc}}%
%\endgroup
  } % Fin de \@maketitle


\ifmaitrise@
\def\@settitle{\begin{center}
\baselineskip14\p@\relax
    \bfseries
\uppercasenonmath\@title
  \@title
  \end{center}%
}
\fi
\ifrapport@
\def\@settitle{\begin{center}
\baselineskip14\p@\relax
    \bfseries
\uppercasenonmath\@title
  \@title
  \end{center}%
}
\fi
\iftravail@
\def\@settitle{\begin{center}
\baselineskip14\p@\relax
    \bfseries
\uppercasenonmath\@title
  \@title
  \end{center}%
}
\fi

\def\titlepage{%
  \cleardoublepage
  \thispagestyle{empty}\setcounter{page}{0}}
\def\endtitlepage{\newpage}

\renewenvironment{enumerate}{%
  \ifnum \@enumdepth >3 \@toodeep\else
      \advance\@enumdepth \@ne
      \edef\@enumctr{enum\romannumeral\the\@enumdepth}\list
      {\csname label\@enumctr\endcsname}{\usecounter
        {\@enumctr}\def\makelabel##1{\hss\llap{\rmfamily##1}}}\fi
}{\endlist}
\renewcommand{\labelenumi}{\arabic{enumi}. }%changer le style de numerotation de la liste d'enumeration

\renewenvironment{itemize}{%
  \ifnum\@itemdepth>3 \@toodeep
  \else \advance\@itemdepth\@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \list{\csname\@itemitem\endcsname}%
      {\partopsep6\p@\def\makelabel##1{\hss\llap{\rmfamily##1}}}%
  	\setlength{\parsep}{100pt}
\fi
}{\endlist}

\renewenvironment{description}{%
  \ifnum\@itemdepth>3 \@toodeep
  \else \advance\@itemdepth\@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \list{\csname\@itemitem\endcsname}%
      {\partopsep6\p@\def\makelabel##1{\hss\llap{\rmfamily##1}}}%
  \fi}{\endlist}

\renewcommand{\descriptionlabel}[1]% Pour enlever les : a la fait de l'element de la description
{\hspace{\labelsep}\textbf{#1}}

\AtBeginDocument{%
  \settowidth\leftmargini{\labelenumi\hskip\labelsep}%
  \advance\leftmargini by \normalparindent
  \settowidth\leftmarginii{\labelenumii\hskip\labelsep}%
\ifphd@\advance\leftmarginii by 15pt\fi
\ifmaitrise@\advance\leftmarginii by 6pt\fi
\ifrapport@\advance\leftmarginii by 6pt\fi
\iftravail@\advance\leftmarginii by 6pt\fi
  \settowidth\leftmarginiii{\labelenumiii\hskip\labelsep}%
\ifphd@\advance\leftmarginiii by 12pt\fi
\ifmaitrise@\advance\leftmarginiii by 6pt\fi
\ifrapport@\advance\leftmarginiii by 6pt\fi
\iftravail@\advance\leftmarginiii by 6pt\fi
  \settowidth\leftmarginiv{\labelenumiv\hskip\labelsep}%
  \advance\leftmarginiv by 10pt
  \leftmarginv=10pt
  \leftmarginvi=10pt
  \leftmargin=\leftmargini
  \labelsep=5pt
  \labelwidth=\leftmargini \advance\labelwidth-\labelsep
  \@listi}
\newskip\listisep
\listisep\smallskipamount
\def\@listI{\leftmargin\leftmargini \parsep\z@skip
  \topsep\z@skip \itemsep\z@skip
  }
\let\@listi\@listI
\@listi
\let\c@part=\undefined
\let\c@chapter=\undefined
\let\c@section=\undefined
\let\c@subsection=\undefined
\let\c@subsubsection=\undefined
\let\c@paragraph=\undefined
\let\c@figure=\undefined
\let\c@table=\undefined
\newcounter{part}
\newcounter{chapter}
\newcounter{section}[chapter]
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\renewcommand\thepart          {\arabic{part}}
\renewcommand\thechapter{\arabic{chapter}}
\renewcommand\thesection       {\thechapter.\arabic{section}}
\renewcommand\thesubsection    {\thesection.\arabic{subsection}}
\renewcommand\thesubsubsection {\thesubsection .\arabic{subsubsection}}
\renewcommand\theparagraph     {\thesubsubsection.\arabic{paragraph}}
\setcounter{secnumdepth}{3}
\def\part{\cleardoublepage \thispagestyle{empty}%
  \null\vfil  \markboth{}{}\secdef\@part\@spart}
\def\@part[#1]#2{%
  \ifnum \c@secnumdepth >-2\relax \refstepcounter{part}%
    \addcontentsline{toc}{part}{\parttocentry
        \protect\enspace\protect\noindent#1}%
  \else
    \addcontentsline{toc}{part}{#1}
\fi
  \begingroup\centering
  \ifnum \c@secnumdepth >-2\relax
       {\fontsize{\@xviipt}{22}\bfseries
         \partname\ \thepart} \vskip 20\p@ \fi
  \fontsize{\@xxpt}{25}\bfseries
      #1\vfil\vfil\endgroup \newpage\thispagestyle{empty}}

\def\@spart#1{\addcontentsline{toc}{part}{\protect\noindent#1}%
  \begingroup\centering
  \fontsize{\@xxpt}{25}\bfseries
     #1\vfil\vfil\endgroup \newpage\thispagestyle{empty}}
\def\partrunhead#1#2#3{%
  \@ifnotempty{#2}{\uppercase{#1 #2}\@ifnotempty{#3}{. }}%
  \def\@tempa{#3}%
  \ifx\@empty\@tempa\else\uppercasenonmath\@tempa\@tempa\fi}
\let\chapterrunhead\partrunhead
\let\sectionrunhead\partrunhead
\def\section{\@startsection{section}{1}%
  \z@{.7\linespacing\@plus\linespacing}{.5\linespacing}%
  {\large\scshape}}
\def\subsection{\@startsection{subsection}{2}%
  \z@{.7\linespacing\@plus\linespacing}{.5\linespacing}%
%\normalparindent{6\p@\@plus2\p@}{1em}% Quand on veut indenter les titres des sous section, sinon la ligne au dessus (pas d'indentation)
  {\normalfont\bfseries}}
\def\subsubsection{\@startsection{subsubsection}{3}%
  \z@{.7\linespacing\@plus\linespacing}{.5\linespacing}%
%\normalparindent{6\p@\@plus2\p@}{1em}%Quand on veut indenter les titres des sous section, sinon la ligne au dessus (pas d'indentation)
  {\normalfont\itshape}}
\def\paragraph{\@startsection{paragraph}{4}%
  \z@\z@{-\fontdimen2\font}%
  \normalfont}
\def\subparagraph{\@startsection{subparagraph}{5}%
  \z@\z@{-\fontdimen2\font}%
  \normalfont}
\def\appendix{\par
  \c@chapter\z@ \c@section\z@
  \let\chaptername\appendixname
  \def\thechapter{\@Alph\c@chapter}
   \AppendixPageNumber}
\def\AppendixPageNumber{
\def\chapter{\cleardoublepage \setcounter{page}{1}\thispagestyle{empty}
  \def\thepage{\thechapter -\roman{page}}
  \global\@topnum\z@
  \@afterindentfalse \secdef\@chapter\@schapter}
}

\def\NoChapterPageNumber{
\def\chapter{\cleardoublepage
\thispagestyle{empty}\pagestyle{headings} \global\@topnum\z@
  \@afterindentfalse \secdef\@chapter\@schapter}}
\def\chapter{\cleardoublepage \thispagestyle{firstheadings}
  \pagestyle{headings}\global\@topnum\z@
  \@afterindentfalse \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\refstepcounter{chapter}%
  \def\next{#1}
  \ifnum\c@secnumdepth<\z@ \let\@secnumber\@empty
  \else \let\@secnumber\thechapter \fi
  \typeout{\chaptername\space\@secnumber}%
  \def\@toclevel{0}%
  \ifx\chaptername\appendixname \@tocwriteb\tocappendix{chapter}{#2}%
  \else \ifx\next\empty \@tocwriteb\tocchapter{chapter}{#2}
  \else \@tocwriteb\tocchapter{chapter}{#1}\fi \fi
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
 \@makechapterhead{#2}\@afterheading}
\def\@schapter#1{\typeout{#1}%
  \let\@secnumber\@empty
  \def\@toclevel{0}%
  \ifx\chaptername\appendixname \@tocwriteb\tocappendix{chapter}{#1}%
  \else \@tocwriteb\tocchapter{chapter}{#1}\fi
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \@makeschapterhead{#1}\@afterheading}
\ifnobabel@{
\def\chaptername{CHAPTER}
\def\thechapter{\arabic{chapter}}
\def\appendixname{APPENDIX}}
%\addto\captionsfrench{\def\tablename{Table}}
\else{
\def\chaptername{CHAPITRE}
\def\thechapter{\arabic{chapter}}
\def\appendixname{ANNEXE}}
\addto\captionsfrench{\def\tablename{Tableau}}
\fi

\def\@makechapterhead#1{\global \topskip 5pc\relax
  \begingroup
  \normalfont\Large\bfseries \centering
    \ifnum\c@secnumdepth>\m@ne
      \leavevmode \hskip-\leftskip
      \rlap{\vbox to\z@{\vss
          \leftline{\bfseries\LARGE\selectfont\@xp{\chaptername}
            \enspace\thechapter}
          \vskip 1pt}}\hskip\leftskip\fi
   \vskip 0pt \vbox{\hrule width \hsize height .1mm}    \vskip 9pt
    \uppercase{#1} \par
   \vskip 42pt \par \endgroup
  \skip@36\p@ \advance\skip@-\normalbaselineskip
  \vskip\skip@ }
\def\@makeschapterhead#1{\global\topskip 5pc\relax
 \begingroup
  \Large\bfseries
  \leftline{\uppercase{#1}}\vskip 0pt
   \vbox{\hrule width \hsize}
   \vskip 42pt \par \endgroup
\ifx#1\contentsname\skip@36\p@
        \else
\ifx#1\bibname\skip@36\p@
         \else
                 \skip@36\p@
        \fi
  \fi
\advance\skip@-\normalbaselineskip
  \vskip\skip@
}
\setcounter{tocdepth}{3}

\AtBeginDocument{
\ifnobabel@
\def\contentsname{Contents}
\def\listfigurename{List of figures}
\def\listtablename{List of tables}
\else
\def\contentsname{Table des mati\`eres}
\def\listfigurename{Liste des figures}
\def\listtablename{Liste des tableaux}
\fi
}
\def\@dottedtocline#1#2#3#4#5#6#7{\relax
  \ifnum #1>\c@tocdepth % then omit
  \else
    \par \addpenalty\@secpenalty\addvspace{#2}%
    \begingroup \hyphenpenalty\@M
    \@ifempty{#4}{%
      \@tempdima\csname r@tocindent\number#1\endcsname\relax
    }{%
      \@tempdima#4\relax
    }%
    \parindent\z@ \leftskip#3\relax \advance\leftskip\@tempdima\relax
    \rightskip\@pnumwidth plus1em \parfillskip-\@pnumwidth
    #5\leavevmode\hskip-\@tempdima #6\relax
    \dotfill\hbox to\@pnumwidth{\@tocpagenum{#7}}\par
    \nobreak
    \endgroup
  \fi}

\def\@tocwriteb#1#2#3{%
  \begingroup
    \def\@dottedtocline##1##2##3##4##5##6{%
      \ifnum##1>\c@tocdepth
      \else \sbox\z@{##5\let\indentlabel\@tochangmeasure##6}\fi}%
    \csname l@#2\endcsname{#1{\csname#2name\endcsname}{\@secnumber}{}}%
  \endgroup
\addcontentsline{toc}{#2}%
    {\protect#1{\csname#2name\endcsname}{\@secnumber}{#3}}}
\def\l@section{\@dottedtocline{1}{\medskipamount}{1.5em}{}{}}
\renewcommand{\tocsection}[3]{%
  \indentlabel{\@ifnotempty{#2}{\ignorespaces#1 #2.\quad}}#3}
\def\l@subsection{\@dottedtocline{2}{0pt}{2pc}{5pc}{}}
\let\tocsubsection\tocsection
\def\l@subsubsection{\@dottedtocline{3}{0pt}{3pc}{7pc}{}}
\let\tocsubsubsection\tocsection
\def\l@chapter{\@dottedtocline{0}{8pt plus1pt}{0pt}{}{\bfseries}}
\let\tocchapter\tocsection
\let\tocappendix\tocsection
\def\l@part{\@dottedtocline{0}{8pt plus1pt}{0pt}{}{\bfseries}}
\let\tocpart\tocsection
\def\l@figure{\@dottedtocline{0}{3pt plus2pt}{0pt}{2.8em}{}}
\let\l@table=\l@figure
\ifphdart@\else %si ce n'est pas une these par articles
    \def\bibname{References}
    \ifnobabel@\def\bibname{References}
    \else\def\bibname{R\'ef\'erences}
    \fi
    \ifnobabel@\def\bibname{Bibliography}
    \else\def\bibname{Bibliographie}
    \fi
\fi %fin du \ifphdart@

\renewenvironment{thebibliography}[1]{%
  %\cleardoublepage 	%la mettre sur un nouvelle page blanche
    \ifphdart@%
	    %Ici, \bibname est equivalent a \refname (par \let\bibname\refname  voir plus haut)
	\let\bibname\refname
	\@xp\section\@xp*\@xp{\bibname}% 
    \else%
	\@xp\chapter\@xp*\@xp{\bibname}%
    \fi
    \edef\@tempa{{\noexpand\@mkboth{\bibname}{\bibname}}}%
    \@tempa
    \normalfont\small\labelsep .5em\relax
    \renewcommand\theenumiv{\arabic{enumiv}}\let\p@enumiv\@empty
    \list{\@biblabel{\theenumiv}}{\settowidth\labelwidth{\@biblabel{#1}}%
%    \leftmargin\labelwidth \advance\leftmargin\labelsep
    \leftmargin=0pt % ne plus décaler la bibliographie vers la gauche
    \usecounter{enumiv}}%
    \sloppy \clubpenalty\@M \widowpenalty\clubpenalty
    \sfcode`\.=\@m
}{%
  \def\@noitemerr{\@latex@warning{L'environnement `thebibliography' %
      est vide}}%
  \endlist}
\@addtoreset{footnote}{chapter}
\setcounter{topnumber}{4}
\setcounter{bottomnumber}{4}
\setcounter{totalnumber}{4}
\setcounter{dbltopnumber}{4}
\renewcommand{\topfraction}{.97}
\renewcommand{\bottomfraction}{.97}
\renewcommand{\textfraction}{.03}
\renewcommand{\floatpagefraction}{.9}
\renewcommand{\dbltopfraction}{.97}
\renewcommand{\dblfloatpagefraction}{.9}
\setlength{\floatsep}{12pt plus 6pt minus 4pt}
\setlength{\textfloatsep}{15pt plus 8pt minus 5pt}
\setlength{\intextsep}{12pt plus 6pt minus 4pt}
\setlength{\dblfloatsep}{12pt plus 6pt minus 4pt}
\setlength{\dbltextfloatsep}{15pt plus 8pt minus 5pt}
\setlength{\@fptop}{0pt}% removed ``plus 1fil''
\setlength{\@fpsep}{8pt}% removed ``plus 2fil''
\setlength{\@fpbot}{0pt plus 1fil}
\setlength{\@dblfptop}{0pt}% removed ``plus 1fil''
\setlength{\@dblfpsep}{8pt}% removed ``plus 2fil''
\setlength{\@dblfpbot}{0pt plus 1fil}
\def\theindex{\@restonecoltrue\if@twocolumn\@restonecolfalse\fi
  \columnseprule\z@ \columnsep 35\p@
  \@xp\chapter\@xp*\@xp{\indexname}
  \thispagestyle{plain}%
  \let\item\@idxitem
  \parindent\z@  \parskip\z@\@plus.3\p@\relax
  \footnotesize}
\def\@starttoc#1#2{%
  \begingroup
  \let\secdef\@gobbletwo \chapter
  \let\@secnumber\@empty % pour \@tocwrite et \chaptermark
  \ifx\contentsname#2%
  \else \@tocwrite{chapter}{#2}\fi
  \typeout{#2}\@xp\chaptermark\@xp{#2}%
  \@xp\@makeschapterhead\@xp{#2}\@afterheading
  \makeatletter
  \@input{\jobname.#1}%
  \if@filesw
    \@xp\newwrite\csname tf@#1\endcsname
    \immediate\@xp\openout\csname tf@#1\endcsname \jobname.#1\relax
  \fi
  \global\@nobreakfalse \endgroup
  \newpage
}
\newcounter{figure}[chapter]
\def\captionheadfont@{\scshape}
\def\captionfont{\normalfont}
\def\captionseparator{}
\def\captionfont@{\normalfont}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\def\figurename{Fig.}
\def\figure{\@float{figure}}
\def\endfigure{\end@float}
%\let\endfigure=\end@float
\newcounter{table}[chapter]
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\ \thetable}
\def\tablename{Tab.}
\def\table{\@float{table}}
\def\endtable{\end@float}
%\let\endtable=\end@float
\renewenvironment{proof}[1][\proofname]{\par \normalfont \noindent
  \topsep6\p@\@plus6\p@ \trivlist \itemindent0pt
  \item[\hskip\labelsep\scshape
    #1\@addpunct{.}]\ignorespaces
}{%
  \qed\endtrivlist
}
\newenvironment{demo}[1][\proofname]{\par \normalfont \noindent
  \topsep6\p@\@plus6\p@ \trivlist \itemindent0pt
  \item[\hskip\labelsep\bfseries
    #1\@addpunct{.}]\ignorespaces
}{%
  \qed\endtrivlist
}
\ifnobabel@\def\proofname{Proof}
\def\parttocentry{\partname\ \thepart.}
\else\def\proofname{D\'emonstration}
\def\parttocentry{{\ifcase\value{part}\or Premi\`ere\or Deuxi\`eme\or
   Troisi\`eme\or Quatri\`eme\or Cinqui\`eme\or Sixi\`eme\or
   Septi\`eme\or Huiti\`eme\or Neuvi\`eme\or Dixi\`eme\or Onzi\`eme\or
   Douzi\`eme\or Treizi\`eme\or Quatorzi\`eme\or Quinzi\`eme\or
   Seizi\`eme\or Dix-septi\`eme\or Dix-huiti\`eme\or Dix-neuvi\`eme\or
   Vingti\`eme\fi}\space partie.}
\fi
\def\th@plain{%
\let\thm@indent\noindent % no indent
\thm@headfont{\bfseries}% heading font is bold
%%  \thm@notefont{}% same as heading font
\thm@headpunct{.}% add period after heading
%%  \let\thm@swap\@gobble
\thm@preskip.5\lineskip
\thm@postskip\thm@preskip
  \itshape % body font
}
\def\th@definition{%
\let\thm@indent\noindent % no indent
\thm@headfont{\bfseries}% heading font is bold
\thm@preskip.1\lineskip
\thm@postskip\thm@preskip
  \normalfont % body font
}
\def\th@remark{%
  \thm@headfont{\itshape}%
  \normalfont % body font
  \thm@preskip\topsep \divide\thm@preskip\tw@
  \thm@postskip\thm@preskip
}





\AtEndDocument{\ifinitial@\cleardoublepage\thispagestyle{empty}\mbox{} \newpage \setcounter{page}{0}\fi} %ajouter une double page blanche a la fin
\endinput
%%
%% End of file `dms.cls'.
