%general config
\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt]{article}
\ProvidesClass{core/letter}


%list of packages
\RequirePackage{tikz}% utile pour dessiner en LaTeX
\RequirePackage{graphicx}% utile pour les images
\RequirePackage{fancyhdr}% utile pour le style du document (header, footer)
\RequirePackage{etoolbox}% quelques outils utiles à d'autres packages
\RequirePackage[T1]{fontenc}% lettre en petit capitale
\RequirePackage[french]{babel}% support du français
\RequirePackage[utf8]{inputenc}% utf-8
\RequirePackage{geometry}% configuration du layout (marges etc)
\RequirePackage{xcolor}% couleurs personalisées
\RequirePackage{hyperref}% lien hypertexte dans le doc
\RequirePackage{changepage}% permet de définir des marges à un élément (entre autre)
\RequirePackage{eso-pic}% quelques outils utiles à d'autres packages
\RequirePackage{zi4}% style de l'affichage de code          


%fonts
\RequirePackage[scaled=.85]{helvet} 
\renewcommand{\familydefault}{\sfdefault}

\fontfamily{DejaVuSans}
\renewcommand{\familydefault}{\sfdefault}

%layout configuration
\usetikzlibrary{calc}
\renewcommand{\headrulewidth}{0pt}
 \geometry{
 a4paper,
 left=2cm,
 right=2cm,
 top=2cm,
 bottom=2cm,
 headheight=15pt,
 }

%config packages fancy
\patchcmd{\section}{\thispagestyle{plain}}{\thispagestyle{fancy}}{}{}
\pagestyle{fancy}
\fancyhf{}

%page numbering style
\cfoot{\footnotesize{\basDePage}}

%add of user info
\input{config.tex}

\def\expediteur{
    \noindent\nomExp\\
    \adresseExp,~\cpExp,~\villeExp\\
    \telExp\\
    \mailExp\\
}

\def\destinataire{
        \noindent\nomDest\\
        \nomEntrpDest\\
        \cpVilleDest\\
}

\def\dateLettre{
    Fait à~\villeExp,~le~\today
}

\def\entete{
    \expediteur

    \begin{flushright}
        \destinataire
        \vspace{.7cm}
        \dateLettre
    \end{flushright}
    \vspace{.7cm}

    \textbf{Objet :}~\objet

}

\hypersetup{pdfborder=0 0 0}
\makeatother