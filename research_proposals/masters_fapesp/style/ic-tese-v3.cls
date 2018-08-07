% Instituto de Computação - Unicamp
% LaTeX document class for theses and dissertations.
% ic-tese-v3 2016-01-05

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{style/ic-tese-v3}[]
\typeout{ic-tese-v3}

\def\thesislanguage#1{\gdef\@thesislanguage{#1}}
\DeclareOption{Ingles}{
  \thesislanguage{0}
  \typeout{ic-tese: ingles.}
}
\DeclareOption{Espanhol}{
  \thesislanguage{1}
  \typeout{ic-tese: espanhol.}
}
\DeclareOption{Portugues}{
  \thesislanguage{2}
  \typeout{ic-tese: portugues.}
}
\newif\iffinalversion
\DeclareOption{Final}{
  \finalversiontrue
  \typeout{ic-tese: versao final.}
}


\ProcessOptions\relax

\LoadClass[12pt,a4paper]{report}

\RequirePackage[english,spanish,brazil]{babel}
\usepackage[T1]{fontenc}
\RequirePackage{graphicx}
\PassOptionsToPackage{table}{xcolor}
\RequirePackage{pdfpages}
\RequirePackage{style/logo-ic-unicamp}
\RequirePackage{xspace}

\RequirePackage{setspace}
\RequirePackage{geometry}
\geometry{a4paper,top=30mm,bottom=20mm,left=30mm,right=20mm}

\RequirePackage{fancyhdr}

\newcommand{\@IC}{Instituto de Computa\c{c}\~ao}
\newcommand{\@UNICAMP}{Universidade Estadual de Campinas}

% User fields:
\let\@documento\relax
\def\documento#1{\gdef\@documento{#1}}
\author{\@documento}

\let\@autor\relax
\def\autor#1{\gdef\@autor{#1}}
\author{\@autor}

\let\@autora\relax
\def\autora#1{\gdef\@autora{#1}}

\let\@titulo\relax
\def\titulo#1{\gdef\@titulo{#1}}

\def\grau#1{\gdef\@grau{#1}}

\newif\ifmaster

\gdef\mestrado{
  \if\@autora\relax
  \gdef\@degnamept{Mestre}
  \gdef\@degnamees{Maestro}
  \else
  \gdef\@degnamept{Mestra}
  \gdef\@degnamees{Maestra}
  \fi
  \gdef\@degnameen{Master}
  \gdef\@monopt{Disserta\c{c}\~ao}
  \gdef\@monoes{Dissertac\'ion}
  \gdef\@monoen{Thesis}
}
\gdef\doutorado{
  \if\@autora\relax
  \gdef\@degnamept{Doutor}
  \gdef\@degnamees{Doctor}
  \else
  \gdef\@degnamept{Doutora}
  \gdef\@degnamees{Doctora}
  \fi
  \gdef\@degnameen{Doctor}
  \gdef\@monopt{Tese}
  \gdef\@monoes{Tesis}
  \gdef\@monoen{Dissertation}
}

\let\@orientador\relax
\def\orientador#1{\gdef\@orientador{#1}}

\let\@orientadora\relax
\def\orientadora#1{\gdef\@orientadora{#1}}

\gdef\@advisors{1}
\let\@coorientador\relax
\def\coorientador#1{\gdef\@coorientador{#1}\gdef\@advisors{2}}

\let\@coorientadora\relax
\def\coorientadora#1{\gdef\@coorientadora{#1}\gdef\@advisors{2}}

\def\datadadefesa#1#2#3{
  \gdef\@dia{#1}
  \gdef\@mes{#2}
  \gdef\@ano{#3}
}

\let\@fichacatalografica\relax
\def\fichacatalografica#1{\gdef\@fichacatalografica{#1}}

\let\@avalA\relax
\let\@avalB\relax
\let\@avalC\relax
\let\@avalD\relax
\let\@avalE\relax
\let\@avalF\relax
\let\@avalG\relax
\let\@avalH\relax
\let\@instavalA\relax
\let\@instavalB\relax
\let\@instavalC\relax
\let\@instavalD\relax
\let\@instavalE\relax
\let\@instavalF\relax
\let\@instavalG\relax
\let\@instavalH\relax

\def\avaliadorA#1#2{\gdef\@avalA{#1}\gdef\@instavalA{#2}}
\def\avaliadorB#1#2{\gdef\@avalB{#1}\gdef\@instavalB{#2}}
\def\avaliadorC#1#2{\gdef\@avalC{#1}\gdef\@instavalC{#2}}
\def\avaliadorD#1#2{\gdef\@avalD{#1}\gdef\@instavalD{#2}}
\def\avaliadorE#1#2{\gdef\@avalE{#1}\gdef\@instavalE{#2}}
\def\avaliadorF#1#2{\gdef\@avalF{#1}\gdef\@instavalF{#2}}
\def\avaliadorG#1#2{\gdef\@avalG{#1}\gdef\@instavalG{#2}}
\def\avaliadorH#1#2{\gdef\@avalH{#1}\gdef\@instavalH{#2}}

\let\@cotutela\relax
\def\cotutela#1{\gdef\@cotutela{#1}}


\def\paginasiniciais{
  \newlength{\oldparindent}
  \setlength{\oldparindent}{\parindent}
%  \setlength\parindent{0pt}
  \thispagestyle{empty}
  %\pagestyle{empty}
  \makeatletter
%  \let\ps@mystyle\ps@plain
%  \let\ps@plain\ps@empty
 % \makeatother
  \openningpage
%  \clearpage
%   \titlepage
%   \clearpage
%   \cathpage
%   \clearpage
%   \approvalpage
%   \clearpage
%  \setlength{\parindent}{\oldparindent}
%  \resetlang
}


\def\logos{
  \noindent
  \begin{center}
  \begin{tabular}{ccc}
    \raisebox{-.5\height}{\includegraphics[width=2.2cm]{style/logo-unicamp.pdf}}
    &
    \begin{minipage}{.6\textwidth}
      \centering
      \textbf{\@UNICAMP} \\
      \textbf{\@IC} \\
    \end{minipage}
    &
    \raisebox{-.45\height}{\scalebox{1.11}{\LogoIcUnicampWithName}}
  \end{tabular}
  \end{center}
}


\def\openningpage{
  \logos
  \vskip 25mm
  \begin{center}
    \Large
    {\bf \@titulo}
    \vskip 3mm
    \small
    {\if\@autora\relax\@autor\else\@autora\fi}
    \vskip 0mm
    \ifcase\@thesislanguage
      {\bf\@title}
      \vskip 3mm
    \or
      {\bf\@title}
      \vskip 3mm
    \fi
    \ifcase\@thesislanguage
        { Supervisor: }\hspace{-0.9ex}
    \or
        \if\@orientadora\relax {\bf Director/}\else {\bf Directora/}\fi\hspace{-0.9ex}
    \fi
        \if\@orientadora\relax {\bf Orientador: \@orientador}
        \else {\@orientadora}
    \fi
     \vskip 5mm
    %\vfill
    \large 
    \@documento\\
    \today\\
  \end{center}
}


\def\titlepage{
  \large\bf
  \vfill
  \begin{center}
    \if\@autora\relax\@autor\else\@autora\fi
    \vfill
    \ifcase\@thesislanguage
      \@title
      \vskip 8mm
    \or
      \@title
      \vskip 8mm
    \fi
    \@titulo
  \end{center}
  \vfill
  \normalfont
  \normalsize
  \hfill\begin{minipage}[t]{0.54\textwidth}
    \supresshyphen
    \@monopt\xspace apresentada ao Instituto de Computa\c{c}\~ao da
    Universidade Estadual de Campinas como parte dos requisitos para a
    obten\c{c}\~ao do t\'{\i}tulo de \@degnamept\xspace em Ci\^encia da
    Computa\c{c}\~ao\ifx\@cotutela\relax\else\xspace no \^ambito do acordo
    de Cotutela firmado entre a Unicamp e a \@cotutela\fi.
  \end{minipage}
  \ifcase\@thesislanguage
    \vskip 8mm
    \hfill\begin{minipage}[t]{0.54\textwidth}
      \supresshyphen
      \@monoen\xspace presented to the Institute of Computing of the
      University of Campinas in partial fulfillment of the requirements for
      the degree of \@degnameen\xspace in Computer
      Science\ifx\@cotutela\relax\else\xspace under the double-diploma
      agreement between Unicamp and \@cotutela\fi.
    \end{minipage}
  \or
    \vskip 8mm
    \hfill\begin{minipage}[t]{0.54\textwidth}
      \supresshyphen
      \@monoes\xspace presentada al Instituto de la Computaci\'on de la
      Universidad de Campinas para obtener el t\'{\i}tulo de
      \@degnamees\xspace en Ciencias de la
      Computaci\'on\ifx\@cotutela\relax\else\xspace en el \'ambito del
      acuerdo de Cotutela firmando entre la Universidad Estatal de Campinas
      y la \@cotutela\fi.
    \end{minipage}
  \fi
  \vfill
  \ifcase\@thesislanguage
    {\bf Supervisor/}\hspace{-0.9ex}
  \or
    \if\@orientadora\relax {\bf Director/}\else {\bf Directora/}\fi\hspace{-0.9ex}
  \fi
  \if\@orientadora\relax {\bf Orientador: \@orientador}
  \else {\bf Orientadora: \@orientadora}
  \fi
  \ifnum\@advisors=2
    \\
    \ifcase\@thesislanguage
      {\bf Co-supervisor/}\hspace{-0.7ex}
    \or
      \if\@coorientadora\relax {\bf Co-director/}\else {\bf Co-directora/}\fi\hspace{-0.7ex}
    \fi
    \if\@coorientadora\relax {\bf Coorientador: \@coorientador}
    \else {\bf Coorientadora: \@coorientadora}
    \fi
  \fi
  \vfill
  \iffinalversion
    \begin{minipage}[t]{0.5\textwidth}
      \supresshyphen
      Este exemplar corresponde \`{a} vers\~{a}o final da \@monopt\xspace defendida por
      \if\@autora\relax\@autor\else\@autora\fi\xspace e orientada
      \if\@orientadora\relax pelo \@orientador\else pela \@orientadora\fi.
    \end{minipage}
  \else
    \begin{minipage}[t]{0.5\textwidth}
      \supresshyphen
      Este exemplar corresponde \`{a} vers\~{a}o da \@monopt\xspace entregue
      \`{a} banca antes da defesa.
    \end{minipage}
  \fi
  \vfill
  \begin{center}
    \large
    CAMPINAS\\
    \@ano
  \end{center}
}


\def\cathpage{
  \ifx\@fichacatalografica\relax
  Na vers\~ao final, esta p\'agina ser\'a substitu\'{\i}da pela
  ficha catalogr{\'a}fica. \\\\
  De acordo com o padr\~ao da CCPG: ``Quando se tratar de Teses e
  Disserta\c{c}\~oes financiadas por ag\^encias de fomento, os beneficiados
  dever\~ao fazer refer\^encia ao apoio recebido e inserir esta
  informa\c{c}\~ao na ficha catalogr\'afica, al\'em do nome da ag\^encia, o
  n\'umero do processo pelo qual recebeu o aux\'{\i}lio.''\\e\\``caso a
  tese de doutorado seja feita em Cotutela, ser\'a necess\'ario informar na
  ficha catalogr\'afica o fato, a Universidade convenente, o pa\'{\i}s e o
  nome do orientador.''
  \else
  \includepdf[pagecommand={}]{\@fichacatalografica}
  \fi
}


\def\approvalpage{
  \iffinalversion
    \logos
    \vskip 20mm
    \begin{center}
      \large
      {\bf \if\@autora\relax\@autor\else\@autora\fi}
      \vskip 15mm
      \ifcase\@thesislanguage
        {\bf\@title}
        \vskip 8mm
      \or
        {\bf\@title}
        \vskip 8mm
      \fi
      {\bf \@titulo}
    \end{center}
    \vfill
    {\bf Banca Examinadora:}
    \ifx\@avalA\relax
    \else
      \begin{itemize}
      \item \@avalA\newline\@instavalA
      \ifx\@avalB\relax\else \item \@avalB\newline\@instavalB\fi
      \ifx\@avalC\relax\else \item \@avalC\newline\@instavalC\fi
      \ifx\@avalD\relax\else \item \@avalD\newline\@instavalD\fi
      \ifx\@avalE\relax\else \item \@avalE\newline\@instavalE\fi
      \ifx\@avalF\relax\else \item \@avalF\newline\@instavalF\fi
      \end{itemize}
    \fi
    \vfill
    \hfill\begin{minipage}[t]{\textwidth}
      \begin{center}
      \supresshyphen
      A ata da defesa com as respectivas assinaturas dos membros da banca
      encontra-se no processo de vida acad\^emica do aluno.
      \end{center}
    \end{minipage}
    \vfill
    \hfill\begin{minipage}[t]{\textwidth}
      \begin{center}
      Campinas, \@dia\xspace de
      \ifcase \@mes \or janeiro\or fevereiro\or mar\c{c}o\or abril\or maio\or
      junho\or julho\or agosto\or setembro\or outubro\or novembro\or
      dezembro\fi\xspace
      de \@ano
      \end{center}
    \end{minipage}
    \vfill
  \else
    Na vers\~ao final, esta p\'agina ser\'a substitu\'{\i}da por outra
    informando a composi\c{c}\~ao da banca e que a ata de defesa est\'a arquivada
    pela Unicamp.
  \fi
}


\def\prefacesection#1{
  \chapter{#1}
  \addcontentsline{toc}{chapter}{#1}
  %\pagestyle{empty}
 % \thispagestyle{empty}
}


\gdef\resetlang{
  \ifcase\@thesislanguage\relax
  \selectlanguage{english}
  \or\selectlanguage{spanish}
  \or\selectlanguage{brazil}
  \fi
}


\gdef\supresshyphen{
  \tolerance=1
  \emergencystretch=\maxdimen
  \hyphenpenalty=10000
  \hbadness=10000
}


\newenvironment{resumo}{\prefacesection{Resumo}\selectlanguage{brazil}}{\resetlang}
\renewenvironment{abstract}{\prefacesection{Abstract}\selectlanguage{english}}{\resetlang \newpage}
\newenvironment{resumen}{\prefacesection{Resumen}\selectlanguage{spanish}}{\resetlang \newpage}


\newenvironment{epigrafe}{\newpage\mbox{}\vfill\hfill\begin{minipage}[t]{0.5\textwidth}}
{\end{minipage}\newpage}


\newcommand{\fimdaspaginasiniciais}{
%\newpage
%\makeatletter
%\let\ps@plain\ps@mystyle
%\makeatother
%\pagestyle{fancy}
%\fancyhf{}
%\renewcommand{\headrulewidth}{0pt}
%\setlength{\headheight}{14.5pt}
%\fancyhead[R]{\thepage}
%\fancypagestyle{plain}{\fancyhf{}\fancyhead[R]{\thepage}}
\setstretch{1.5}
}


