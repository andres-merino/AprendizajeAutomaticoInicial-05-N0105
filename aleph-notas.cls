%%
%% This is file `aleph-notas.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% aleph-notas.dtx  (with options: `aleph-notas')
%% 
%% This is a generated file.
%% LaTeX class for typesetting notes
%% 
%% Copyright (C) 2024 by Andrés Merino <aemerinot@gmail.com>
%% 
%% Para un mejor uso y entendimiento de la actual clase,
%% consultar la documentación.
%% 
\NeedsTeXFormat{LaTeX2e}[2009/09/24]
\ProvidesClass{aleph-notas}[2023/11/27 v2.0]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Inicialización
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Primero definimos una serie de comandos auxiliares para las opciones
\newcommand\@idioma{spanish,es-noitemize}
\newcommand\@tipo{}
\RequirePackage{ifthen}
\newboolean{comentarios}\setboolean{comentarios}{false}
\newboolean{codigo}\setboolean{codigo}{false}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Opciones
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Opciones de tamaño de letra.
\DeclareOption{10pt}{\PassOptionsToClass{10pt}{article}}
\DeclareOption{11pt}{\PassOptionsToClass{11pt}{article}}
\DeclareOption{12pt}{\PassOptionsToClass{12pt}{article}}
%%  Opciones predeterminadas de tamaño de página |compacto| y |amplio|.
\DeclareOption{amplio}{
    \PassOptionsToPackage{paperwidth=195mm,paperheight=265mm,twoside,
    inner=2.2cm,outer=2.2cm,top=2.25cm,bottom=2.25cm,
    headsep=5mm}{geometry}}
\DeclareOption{compacto}{
    \PassOptionsToPackage{paperwidth=160mm,paperheight=240mm,twoside,
    inner=1.7cm,outer=1.7cm,top=2cm,bottom=2cm,
    headsep=5mm}{geometry}}
\DeclareOption{a4}{
    \PassOptionsToPackage{paperwidth=210mm,paperheight=297mm,twoside,
    inner=2.2cm,outer=2.2cm,top=2.25cm,bottom=2.25cm,
    headheight=14pt,headsep=5mm}{geometry}}
\DeclareOption{a5}{
    \PassOptionsToPackage{paperwidth=148mm,paperheight=210mm,twoside,
    inner=1cm,outer=1cm,top=2cm,bottom=2cm,
    headsep=5mm}{geometry}}
%%  Opción para desplegar comentarios
\DeclareOption{comentarios}{\setboolean{comentarios}{true}}
%%  Opción para desplegar códigos
\DeclareOption{codigo}{\setboolean{codigo}{true}}
%%  Opciones predeterminadas son |compacto|, y |10pt|.
\ExecuteOptions{compacto,10pt}
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
\RequirePackage[\@idioma]{babel}
\RequirePackage{xcolor}
\RequirePackage{amsmath,amsthm}
\RequirePackage{enumitem}
\RequirePackage[many]{tcolorbox}
\RequirePackage{fontawesome}
\RequirePackage{graphicx}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{titletoc}
\RequirePackage{comment}
\RequirePackage[font={small},labelfont={bf,small},
   justification=centerlast]{caption}
\RequirePackage{float}
\RequirePackage{geometry}
\RequirePackage{tabularray}
\RequirePackage[colorlinks,allcolors=.,breaklinks]{hyperref}
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
\newcommand\@temacorto{}
\newcommand\@interlineado{1.2}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Colores predeterminados
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Los siguientes son los colores predefinidos de la clase.
\definecolor{colordef}{cmyk}{0.81,0.62,0.00,0.22}
\definecolor{colortext}{cmyk}{0.81,0.62,0.00,0.22}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Espaciado
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Para mejorar la medida entre las ecuaciones.
\AtBeginDocument{
   \addtolength{\abovedisplayskip}{-0.5mm}
   \addtolength{\belowdisplayskip}{-0.5mm}
    }
%%  Interlineado
\newcommand{\interlineado}[1]{\renewcommand\@interlineado{#1}}
%%  Espacio para recuadro de teoremas
\newcommand{\espteo}[1]{\renewcommand\@espteo{#1}}
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
%%  Carrera
\newcommand{\carrera}[1]%
    {\newcommand\@carrera{#1}}
%%  Asignatura
\newcommand{\asignatura}[1]%
    {\newcommand\@asignatura{#1}}
%%  Tema
\newcommand{\tema}[2][]{\ifthenelse{\equal{#1}{}}
   {\renewcommand\@temacorto{#2}\newcommand\@tema{#2}}
   {\renewcommand\@temacorto{#1}\newcommand\@tema{#2}}}
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
    \vspace*{-15mm}
    \begingroup\color{colortext}
    \thispagestyle{plain}
    \noindent
    \begin{minipage}{\linewidth}
    \begin{tblr}{
      colspec = {Q[m,c]<{\hspace{.02\linewidth}}|[1.2pt]>{\hspace{.02\linewidth}}X[m,l]},
      colsep = 2pt
    }
        \ifthenelse{\isundefined{\@logouno}}{}{\@inlogouno}
        \ifthenelse{\isundefined{\@logodos}}{}
            {\hspace{0.02\textwidth}\@inlogodos}
        & \parbox{.98\linewidth}{\@titulo}
    \end{tblr}
    \end{minipage}
    \endgroup\\
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Estilo página
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Interlineado
\renewcommand{\baselinestretch}{\@interlineado}
%%  Encabezado y pie de página
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\thepage}
\fancyhead[LE,RO]{\bfseries\@autorcorto}
\fancyhead[LO,RE]{\bfseries\ifdef{\@temacorto}{\@temacorto}{}}
\renewcommand{\headrulewidth}{.2pt}
\renewcommand{\footrulewidth}{0pt}
\addtolength{\headheight}{.1pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Estilo títulos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Estilo de sección
\titleformat{\section}[display]
    {\bfseries\scshape\centering}
    {}{0ex}
    {\color{colortext}\large\titlerule\vspace{0.25ex}
    \thesection.\ }
    [\color{colortext}\titlerule]
\titlespacing{\section}
    {0pt}
    {-0.5ex plus 1ex}
    {2.3ex plus .5ex}
%%  Estilo de sección no numerada
\titleformat{name=\section,numberless}[display]
    {\bfseries\scshape\centering}
    {}{0ex}
    {\color{colortext}\large\titlerule\vspace{.25ex}}
    [\color{colortext}\titlerule]
%%  Estilo subsecciones
\titleformat{\subsection}
    {\color{colortext}\normalsize\bfseries}
    {\thesubsection}{1em}{}
%%  Estilo de subsubsecciones
\titleformat{\subsubsection}
    {\color{colortext}\normalsize\bfseries}
    {\thesubsubsection}{1em}{}
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Ambientes opcionales
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Estilo de comentarios para el docente
\ifthenelse{\boolean{comentarios}}{
    \newtcolorbox{comentarios}{
        breakable,
        enhanced,
        outer arc=0pt, arc=0pt,
        colframe=colordef!20,
        colback=white,
        attach boxed title to top left,
        boxed title style={
            colback=colordef!50,
            outer arc=0pt, arc=0pt,
            boxrule=0pt,
        },
        boxrule=0pt,
        borderline west = {1.5pt}{0pt}{colordef!50},
        borderline south = {1.5pt}{0pt}{colordef!50},
        left=1mm,
        fontlower=\small,
        title=\textbf{\textsc{\small \textcolor{black}{Sugerencias metodológicas:}}}
        }
    }
    {\excludecomment{comentarios}}
%%  Estilo de código para el docente
\ifthenelse{\boolean{codigo}}{
    \newtcolorbox{codigo}{
    blanker,breakable, left=3mm, before skip=10pt, after skip=10pt, borderline west={1mm}{0pt}{colordef!50}, fontlower=\small}
    }
    {\excludecomment{codigo}}
%%  Y ¡se acabó!
\endinput
%%
%% End of file `aleph-notas.cls'.
