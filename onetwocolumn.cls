\RequirePackage{ifthen}

\ifthenelse{\equal{\manuscriptType}{draft}}
    {   \def\noColumns{onecolumn}
        \def\status{draftclsnofoot}
        \def\Fontsize{12pt}}
        \newenvironment{figureCol}[6] %if condition is true
        {
        \def\captionOne{#2}
        \def\captionTwo{#5}
        \def\labelOne{#3}
        \def\labelTwo{#6}
        \begin{figure}[t!]
            \begin{minipage}[t]{0.48\linewidth}
                \includegraphics[width=\linewidth]{#1}
                \small
                \caption{\captionOne}
                \label{\labelOne}
                \end{minipage}%
                \hfill%
            \begin{minipage}[t]{0.48\linewidth}
                \includegraphics[width=\linewidth]{#4}
        \caption{\captionTwo}
        \label{\labelTwo}
    \end{minipage} 
    \end{figure}
        }   
        {}
    }
    {\newenvironment{figureCol}[6] %else
        {\def\noColumns{twoside}
        \def\status{final}
        \def\Fontsize{}}%
        \def\captionOne{#2}
        \def\captionTwo{#5}
        \def\labelOne{#3}
        \def\labelTwo{#6}
        \def\imageWidth{8cm}
        \begin{figure}[t!]
            \includegraphics[width=\imageWidth]{#1}
            \caption{\captionOne}
            \label{\labelOne}
        \end{figure}
        \begin{figure}
            \includegraphics[width=\imageWidth]{#4}
            \caption{\captionTwo}
            \label{\labelTwo}
        \end{figure}
        }
        {}
    }
    
% in the main document (.tex): 
%\documentclass[journal,\Fontsize,\noColumns,\status]{IEEEtran}
%How to use the environment
%\begin{figureCol}{pathFig1}{captionFig1}{labelFig1}{pathFig2}{captionFig2}{labelFig2}
%\end{figureCol}
