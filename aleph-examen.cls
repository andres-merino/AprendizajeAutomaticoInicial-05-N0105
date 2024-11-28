%%
%% This is file `aleph-examen.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% aleph-examen.dtx  (with options: `aleph-examen')
%% 
%% This is a generated file.
%% LaTeX class for typesetting exams
%% 
%% Copyright (C) 2020 by Andres Merino <mat.andresmerino@gmail.com>
%% 
%% Para un mejor uso y entendimiento de la actual clase,
%% consultar la documentación.
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Identificación
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[2009/09/24]
\ProvidesClass{aleph-examen}[2023/12/25 v2.0]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Inicialización
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Primero definimos una serie de comandos auxiliares para las opciones
\RequirePackage{ifthen}
\newboolean{resp}\setboolean{resp}{false}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Opciones
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Opciones de tamaño de letra.
\DeclareOption{10pt}{\PassOptionsToClass{10pt}{article}}
\DeclareOption{11pt}{\PassOptionsToClass{11pt}{article}}
\DeclareOption{12pt}{\PassOptionsToClass{12pt}{article}}
%%  Opciones de tamaño de página.
\DeclareOption{a4}{\PassOptionsToPackage{
    a4paper,left=1.5cm,right=1.5cm,top=1cm,bottom=1cm,includefoot}{geometry}
    }
\DeclareOption{a5}{\PassOptionsToPackage{
    a5paper,left=1cm,right=1cm,top=0.5cm,bottom=0.5cm,includefoot}{geometry}
    }
\DeclareOption{compacto}{\PassOptionsToPackage{
    paperwidth=160mm,paperheight=240mm,
    left=1cm,right=1cm,top=0.5cm,bottom=0.5cm,includefoot}{geometry}
    }
%%  Opción para desplegar respuestas
\DeclareOption{respuestas}{\setboolean{resp}{true}}
%%  Opciones predeterminadas son |a4| y |11pt|.
\ExecuteOptions{a4,11pt}
\ProcessOptions\relax
\LoadClass{article}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Paquetes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Son necesarios los siguientes paquetes para dar formato al documento.
\RequirePackage{iftex}
\ifPDFTeX % LaTeX y pdfLaTeX
    \RequirePackage[utf8]{inputenc}
\else % XeLaTeX
\fi
\RequirePackage[T1]{fontenc}
\RequirePackage[spanish,es-noitemize]{babel}
\RequirePackage{xcolor}
\RequirePackage{amsmath,amssymb,amsthm}
\RequirePackage{enumitem}
\RequirePackage[many]{tcolorbox}
\RequirePackage{fontawesome}
\RequirePackage{comment}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{tabularray}
\RequirePackage{etoolbox}
\RequirePackage{xparse}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Paquetes de tipografía
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% El siguiente comando define las opciones de tipografía a utilizar de acuerdo al tipo de compilador
\newcommand{\fuente}[1]{
    \ifthenelse{\equal{#1}{mathpazo}}
    {
        \ifPDFTeX % LaTeX y pdfLaTeX
            \RequirePackage{mathpazo}
        \else % XeLaTeX
            \RequirePackage{fontspec}
            \RequirePackage{mathpazo}
            \setmainfont
             [ BoldFont       = texgyrepagella-bold.otf ,
               ItalicFont     = texgyrepagella-italic.otf ,
               BoldItalicFont = texgyrepagella-bolditalic.otf ]
             {texgyrepagella-regular.otf}
            % \RequirePackage{newpxtext,newpxmath}
        \fi
    }{}
    \ifthenelse{\equal{#1}{montserrat}}
    {
        \ifPDFTeX % LaTeX y pdfLaTeX
            \RequirePackage[defaultfam,tabular,lining]{montserrat}
                \renewcommand*\oldstylenums[1]{{\fontfamily{Montserrat-TOsF}\selectfont #1}}
            \RequirePackage[OT1]{eulervm}
            \renewcommand{\labelitemi}{$\bullet$}
            \DeclareMathSizes{10}{10.78}{7}{7}
        \else % XeLaTeX
            \RequirePackage[OT1]{eulervm}
            \RequirePackage{fontspec}
            \setmainfont{montserrat}
            \DeclareSymbolFont{operators}{\encodingdefault}{\familydefault}{m}{n}
            \DeclareMathSizes{10}{10.78}{7}{7}
            \renewcommand{\labelitemi}{$\bullet$}
        \fi
    }{}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Variables internas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  La siguiente es la lista de las variables internas utilizadas para el formato.
\newcommand\@institucion{Alephsub0}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Colores predeterminados
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Los siguientes son los colores predefinidos de la clase.
\definecolor{colortext}{cmyk}{0.81,0.62,0.00,0.22}
\definecolor{coloropcion}{cmyk}{0.81,0.62,0.99,0.22}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Definición de comandos de datos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Institución
\newcommand{\institucion}[1]%
    {\renewcommand\@institucion{#1}}
%%  Autor: autor corto, autor normal
\newcommand{\autor}[2][]{\ifthenelse{\equal{#1}{}}
   {\newcommand\@autorcorto{#2}\newcommand\@autor{#2}}
   {\newcommand\@autorcorto{#1}\newcommand\@autor{#2}}}
%% Carrera
\newcommand{\carrera}[1]%
    {\newcommand\@carrera{#1}}
%%  Asginatura
\newcommand{\asignatura}[1]%
    {\newcommand\@asignatura{#1}}
%%  Tema
\newcommand{\tema}[1]%
    {\newcommand\@tema{#1}}
%%  Fecha
\newcommand{\fecha}[1]%
    {\newcommand\@fecha{#1}}
%%  Logo uno
\newcommand{\logouno}[2][0.1\linewidth]%
    {\newcommand\@logouno{#2}
    \newcommand\@longlogouno{#1}}
%%  Logo dos
\newcommand{\logodos}[2][0.1\linewidth]%
    {\newcommand\@logodos{#2}
    \newcommand\@longlogodos{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Espaciado
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Espacio interlineado
\setlength{\parskip}{0.2\baselineskip}
\renewcommand{\baselinestretch}{1.1}
%%  Espacio entre modo desplegado
\AtBeginDocument{
    \addtolength{\abovedisplayskip}{-1.5mm}
    \addtolength{\belowdisplayskip}{-1.5mm}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Encabezado
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Comando para generar el título
\newcommand\@titulo{
    \textbf{\textsc{\large\@institucion
    \normalsize
    \ifthenelse{
            \isundefined{\@carrera}
            \OR
            \isundefined{\@asignatura}
        }
        {
            \ifdef{\@carrera}{\\\@carrera}{}
            \ifdef{\@asignatura}{\\\@asignatura}{}
        }
        {\\\@carrera\ \ $\bullet$\ \ \@asignatura}}}
    \ifdef{\@tema}{\\\normalsize\textsc{\@tema}}{}
    \\\textsl{\@autor} \ifdef{\@fecha}{\ \ $\bullet$\ \ \ \textsl{\@fecha}}{}
    }
\newcommand\@inlogouno{
    \parbox{\@longlogouno}
        {\includegraphics[width=\linewidth]{\@logouno}}
    }
\newcommand\@inlogodos{
    \parbox{\@longlogodos}
        {\includegraphics[width=\linewidth]{\@logodos}}
    }
%%  Comando para generar el encabezado
\newcommand{\encabezado}{
    % \vspace*{-\voffset}
    \begingroup\color{colortext}
    \thispagestyle{plain}
    \noindent
    \begin{minipage}{\linewidth}
    \begin{tblr}{
      colspec = {Q[m,c]<{\hspace{.02\linewidth}}|[1.2pt]>{\hspace{.02\linewidth}}X[m,l]},
      colsep = 2pt
    }
        \@inlogouno
        \ifthenelse{\isundefined{\@logodos}}{}
            {\hspace{0.02\textwidth}\@inlogodos}
        & \parbox{.98\linewidth}{\@titulo}
    \end{tblr}
    \end{minipage}
    \endgroup
    \ifthenelse{\boolean{resp}}{\color{colortext}}{}
    \vspace{5mm}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Comando en examen y en respuestas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Para material que solo aparece en examen
\newcommand{\EnExamen}[1]{\ifthenelse{\boolean{resp}}{}{#1}}
%% Para material que solo aparece en respuesta
\newcommand{\EnRespuesta}[1]{\ifthenelse{\boolean{resp}}{#1}{}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Comando para linea de datos del estudiante
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NewDocumentCommand{\datosestudiante}{o O{2cm}}{%
    \EnExamen{%
        \vspace{5mm}%
        \noindent%
        Nombre: \hrulefill\ %
        \IfValueT{#1}{
            #1: \rule{#2}{0.4pt}
        }%
    }%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Comando para firma del estudiante
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\firmaestudiante}{%
    \EnExamen{%
    \begin{center}
        \vspace{2cm}
        \rule{4.5cm}{0.4pt}\\
        Firma del estudiante
    \end{center}
    }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Preguntas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Ambiente para preguntas
\newenvironment{preguntas}[1][]
    {\begin{enumerate}[leftmargin=*,listparindent=\parindent,#1]}
    {\end{enumerate}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Indicaciones
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Ambiente para indicaciones
\newenvironment{indicaciones}
    {\section*{Indicaciones}\begingroup\small
    \begin{itemize}[leftmargin=*,listparindent=\parindent]}
    {\end{itemize}\endgroup}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Respuestas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Ambiente para respuestas
\ifthenelse{\boolean{resp}}{
   \newenvironment{respuesta}[1][Solución]
      {\begingroup\color{black}\begin{proof}[#1]\hspace{0pt}\relax}
      {\end{proof}\endgroup}
   }
   {\excludecomment{respuesta}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Respuesta de opción múltiple
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Comando para opción múltiple
\NewDocumentCommand{\opciones}{O{0} m m m m}{
    \vspace{-1mm}
    \begin{enumerate}[leftmargin=*,label=\textit{\alph*)}]
        \item \IfValueTF{#1}{\ifnum#1=1 \textcolor{coloropcion}{#2}\else #2\fi}{#2}
        \item \IfValueTF{#1}{\ifnum#1=2 \textcolor{coloropcion}{#3}\else #3\fi}{#3}
        \item \IfValueTF{#1}{\ifnum#1=3 \textcolor{coloropcion}{#4}\else #4\fi}{#4}
        \item \IfValueTF{#1}{\ifnum#1=4 \textcolor{coloropcion}{#5}\else #5\fi}{#5}
    \end{enumerate}
}
%%  Comando para opción múltiple en linea
\NewDocumentCommand{\opcionesl}{O{0} m m m m}{
    \par\noindent
    \textit{a)} \IfValueTF{#1}{\ifnum#1=1 \textcolor{coloropcion}{#2}\else #2\fi}{#2} \hfill
    \textit{b)} \IfValueTF{#1}{\ifnum#1=2 \textcolor{coloropcion}{#3}\else #3\fi}{#3} \hfill
    \textit{c)} \IfValueTF{#1}{\ifnum#1=3 \textcolor{coloropcion}{#4}\else #4\fi}{#4} \hfill
    \textit{d)} \IfValueTF{#1}{\ifnum#1=4 \textcolor{coloropcion}{#5}\else #5\fi}{#5}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Puntaje
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Comando para puntaje
\newcommand{\puntaje}[1]{
    \hspace{\fill}{\footnotesize(#1pt)}
    }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Estilo página
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Encabezado y pie de página
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Estilo secciones
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Formato secciones
\titleformat{\section}
    {\normalfont\large\bfseries\scshape}{\thesection}{1em}{}
\titlespacing*{\section}{0pt}{2ex}{0.1ex}
%%  Formato subsecciones
\titleformat{\subsection}
    {\normalfontnormalsize\bfseries\scshape}{\thesubsection}{1em}{}
\titlespacing*{\subsection}{0pt}{2ex}{0.1ex}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Estilo teoremas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Keys temporales: |tipo|,|color|, |contador| e |icóno|.
\def\tcb@@tipo{}
    \tcbset{ tipo/.code = {\def\tcb@@tipo{#1} } }
\def\tcb@@contador{}
    \tcbset{ contador/.code = {\def\tcb@@contador{#1} } }
\def\tcb@@color{colordef}
    \tcbset{ color/.code = {\def\tcb@@color{#1} } }
\def\tcb@@icono{{\large\faWarning}}
    \tcbset{ icono/.code = {\def\tcb@@icono{#1} } }
%%  Estilo de teorema.
\newtheoremstyle{estiloteorema}%
    {9pt}{9pt}{}{0pt}
    {\bfseries\color{\tcb@@color}}
    {}{ }
    {\textsc{\thmname{#1}\thmnumber{ #2}}\thmnote{: #3}.}
%%  Formatos del estilo
%%
%%  Recuadro sin título aparte
\tcbset{ recuadrost/.style ={
    before skip=10pt,arc=0mm,breakable,enhanced,
    colback=\tcb@@color!7,colframe=\tcb@@color,
    boxrule=0pt,leftrule=2pt,
    top=0.5mm,bottom=0.5mm,left=2mm,right=2mm,
    fontupper=\normalsize,
    % parbox=false
    }
    }
%%  Estilo de post-it
\tcbset{ postit/.style ={
    % -> Opciones generales
    breakable,enhanced,
    before skip=2mm,after skip=3mm,
    colback=\tcb@@color!50,colframe=\tcb@@color!20!black,
    boxrule=0.4pt,
    drop fuzzy shadow,
    left=6mm,right=2mm,top=0.5mm,bottom=0.5mm,
    sharp corners,rounded corners=southeast,arc is angular,arc=3mm,
    % parbox=false,
    underlay unbroken and last = {%
        \path[fill=tcbcolback!80!black]
        ([yshift=3mm]interior.south east) --++ (-0.4,-0.1) --++ (0.1,-0.2);
        \path[draw=tcbcolframe,shorten <=-0.05mm,shorten >=-0.05mm]
        ([yshift=3mm]interior.south east) --++ (-0.4,-0.1) --++ (0.1,-0.2);
        \path[fill=\tcb@@color!50!black,draw=none]
        (interior.south west) rectangle node[white]{\tcb@@icono} ([xshift=5.5mm]interior.north west);
        },
    underlay = {%
        \path[fill=\tcb@@color!50!black,draw=none]
        (interior.south west) rectangle node[white]{\tcb@@icono} ([xshift=5.5mm]interior.north west);
        }
    }
    }
%%  Recuadro con título aparte interno
\tcbset{ recuadroctint/.style ={
    % -> Opciones generales
    before skip=10pt,arc=0mm,breakable,enhanced,
    colback=colordef!7,colframe=colordef!7,colbacktitle=colordef!7,
    boxrule=0pt,toprule=0.4pt,
    drop fuzzy shadow,
    top=0.5mm,bottom=0.5mm,left=2mm,right=2mm,
    fontupper=\normalsize,
    code={\refstepcounter{\tcb@@contador}},
    % parbox=false,
    % Dibujo del título
    overlay unbroken and first = {
        % Borde superior grueso
        \draw[\tcb@@color,line width =2.5cm]
            ([xshift=1.25cm, yshift=0cm]frame.north west)--+(0pt,3pt);
        },
    overlay middle and last = { },
    title={
            \color{\tcb@@color}\bfseries
            {\scshape\tcb@@tipo~\arabic{\tcb@@contador}}%
                %
            \ifthenelse{\equal{#1}{}}{.}{: #1.}%
        },
    }
    }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Definición de ambientes de teoremas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Ambientes sin recuadro: |ejem| y |obs|
\theoremstyle{estiloteorema}
    \newtheorem{ejem}{Ejemplo}
    \newtheorem*{obs}{\tikz \fill[colordef] (1ex,1ex) circle (.8ex); Observaci\'on}
%%  Ambientes con recuadrost: |prop|, |cor|, |lem|, |ejer|.
    \newtheorem{prop}{Proposici\'on}
        \tcolorboxenvironment{prop}{%
            color=colordef,recuadrost,colback=colordef!7,drop fuzzy shadow
        }
    \newtheorem{cor}[prop]{Corolario}
        \tcolorboxenvironment{cor}{%
            color=colordef,recuadrost,colback=colordef!7,drop fuzzy shadow
        }
    \newtheorem{lem}[prop]{Lema}
        \tcolorboxenvironment{lem}{%
            color=colordef,recuadrost,colback=colordef!7,drop fuzzy shadow
        }
    \newtheorem{ejer}{Ejercicio}
        \tcolorboxenvironment{ejer}{%
            color=colordef,recuadrost,colback=colordef!7,drop fuzzy shadow
        }
%%  Ambientes con título aparte: |teo|.
\newtcolorbox{teo}[1][]
    {tipo=Teorema,contador=prop,color=colordef,recuadroctint={#1}}
%%  Ambientes con título aparte: |defi|.
\newcounter{defi}
\renewcommand{\thedefi}{\arabic{defi}}
\newtcolorbox{defi}[1][]
    {tipo=Definici\'on,contador=defi,color=colordef,recuadroctint={#1}}
%%  Ambientes con título aparte: |axioma|.
\newcounter{axioma}
\renewcommand{\theaxioma}{\arabic{axioma}}
\newtcolorbox{axioma}[1][]
    {tipo=Axioma,contador=axioma,color=colordef,recuadroctint={#1}}
%%  Ambientes advertencia: |advertencia|.
\newtcolorbox{advertencia}
    {color=yellow,postit}
%%  Y ¡se acabó!
\endinput
%%
%% End of file `aleph-examen.cls'.
