" Brief help
"
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just
    " :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" 
" " see :h vundle for more details or wiki for FAQ

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

let g:ycm_server_python_interpreter = '/usr/bin/python'
call vundle#begin()

Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'xuhdev/vim-latex-live-preview'
call vundle#end()            " required

let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf,bibtex,pdf'
filetype plugin indent on    " required

"PDF Viewer
let g:livepreview_previewer = 'zathura'

"Update time for live preview (ms)
autocmd Filetype tex setl updatetime=500

"These are needed
set nocompatible
filetype plugin on
syntax on

"change tab character to 4 spaces
:set softtabstop=4 tabstop=4 shiftwidth=4 expandtab

"Toggles line numbers or relative line numbers
"set number "absolute
set relativenumber "relative

"Double tap of space bar navigates to insert point denoted by <++>
inoremap <Space>` <Esc>/<++><Enter>"_c4l

"Spell check on/off
map <F12> :set spell spelllang=en_au <Enter>

"Start auto-compilation
map <F8> <Esc> :LL<Enter>
inoremap <F8> <Esc> :LL<Enter>

"list commands
inoremap ;lb \begin{itemize}<Enter>\item <++><Enter>\end{itemize}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;le \begin{enumerate}<Enter>\item <++><Enter>\end{enumerate}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;ls \begin{itemize}[label={}]<Enter>\item <++><Enter>\end{itemize}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;li <Enter>\item 

"equation
inoremap ;en \begin{equation}<Enter><++><Enter>\end{equation}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;el \begin{equation}<Enter>\label{eq:<++>}<Enter><++><Enter>\end{equation}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;ec \begin{figure}[H]<Enter>\begin{equation}<Enter>\label{eq:<++>}<Enter><++><Enter>\end{equation}<Enter>\caption*{<++>}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;ed \begin{figure}[H]<Enter>\begin{equation}<Enter>\label{eq:<++>}<Enter><++><Enter>\end{equation}<Enter>\caption*{<++>}<Enter>\emph{where:}<Enter>\begin{itemize}[label={}]<Enter>\item <++><Enter>\end{itemize}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;es \begin{equation*}<Enter><++><Enter>\end{equation*}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;an \begin{align}<Enter><++> &= <++><Enter>\end{align}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;al \begin{align}<Enter>\label{eq:<++>}<Enter><++> &= <++><Enter>\end{align}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;ac \begin{figure}[H]<Enter>\begin{align}<Enter>\label{eq:<++>}<Enter><++> &= <++><Enter>\end{align}<Enter>\caption*{<++>}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;ad \begin{figure}[H]<Enter>\begin{align}<Enter>\label{eq:<++>}<Enter><++> &= <++><Enter>\end{align}<Enter>\caption*{<++>}<Enter>\emph{where:}<Enter>\begin{itemize}[label={}]<Enter>\item <++><Enter>\end{itemize}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;as \begin{align*}<Enter><++> &= <++><Enter>\end{align*}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;em \begin{split}<Enter><++> &= <++><Enter>\end{split}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;eu \\<Enter><++> &= <++><Esc>gg/<++><Enter>"_c4l
inoremap ;ma $<++>$ <++><Esc>gg/<++><Enter>"_c4l
inoremap ;er _{<++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;ef ^{<++>} <++><Esc>gg/<++><Enter>"_c4l

"Full equation definition
inoremap ;aa \subsubsection{<++>}<Enter>\begin{figure}[H]<Enter>\begin{align*}<Enter><++> &= <++><Enter>\end{align*}<Enter>\emph{where:}<Enter>\begin{table}[H]<Enter>\begin{tabular}{l l l}<Enter>$<++>$ &=& <++> \\ <++><Enter>$<++>$ &=& <++> \\<++><Enter>\end{tabular}<Enter>\end{table}\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;au <Esc>o$<++>$ &=& <++> \\ <++><Esc>gg/<++><Enter>"_c4l


"text modification
inoremap ;te \textbf{<++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;ti \textit{<++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;tu \underline{<++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;ts {\small <++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;tt {\tiny <++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;tl {\large <++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;th {\huge <++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;tL {\Large <++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;tH {\Huge <++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;tn \newline <Esc>o
inoremap ;tq \quad 
inoremap ;tt \text{<++>} <++><Esc>gg/<++><Enter>"_c4l

"sectioning
inoremap ;sj \section{<++>}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;sk \subsection{<++>}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;sm \subsubsection{<++>}<Enter><++><Esc>gg/<++><Enter>"_c4l

"tables
inoremap ;2t \begin{table}[H]<Enter>\centering<Enter>\begin{tabular}{l l}<Enter>\hline<Enter><++> & <++> \\<Enter>\hline<Enter><++> & <++> \\<Enter>\hline<Enter>\end{tabular}<Enter>\label{tab:<++>}<Enter>\caption{<++>}<Enter>\end{table}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;2n <Esc>o<++> & <++> \\<Esc>gg/<++><Enter>"_c4l
inoremap ;3t \begin{table}[H]<Enter>\centering<Enter>\begin{tabular}{l l l}<Enter>\hline<Enter><++> & <++> & <++> \\<Enter>\hline<Enter><++> & <++> & <++> \\<Enter>\hline<Enter>\end{tabular}<Enter>\label{tab:<++>}<Enter>\caption{<++>}<Enter>\end{table}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;3n <Esc>o<++> & <++> & <++> \\<Esc>gg/<++><Enter>"_c4l
inoremap ;4t \begin{table}[H]<Enter>\centering<Enter>\begin{tabular}{l l l l}<Enter>\hline<Enter><++> & <++> & <++> & <++> \\<Enter>\hline<Enter><++> & <++> & <++> & <++> \\<Enter>\hline<Enter>\end{tabular}<Enter>\label{tab:<++>}<Enter>\caption{<++>}<Enter>\end{table}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;4n <Esc>o<++> & <++> & <++> &<++> \\<Esc>gg/<++><Enter>"_c4l
inoremap ;5t \begin{table}[H]<Enter>\centering<Enter>\begin{tabular}{l l l l l}<Enter>\hline<Enter><++> & <++> & <++> & <++> & <++> \\<Enter>\hline<Enter><++> & <++> & <++> & <++> & <++> \\<Enter>\hline<Enter>\end{tabular}<Enter>\label{tab:<++>}<Enter>\caption{<++>}<Enter>\end{table}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;5n <Esc>o<++> & <++> & <++> &<++> & <++> \\<Esc>gg/<++><Enter>"_c4l
inoremap ;6t \begin{table}[H]<Enter>\centering<Enter>\begin{tabular}{l l l l l l}<Enter>\hline<Enter><++> & <++> & <++> & <++> & <++> & <++> \\<Enter>\hline<Enter><++> & <++> & <++> & <++> & <++> & <++> \\<Enter>\hline<Enter>\end{tabular}<Enter>\label{tab:<++>}<Enter>\caption{<++>}<Enter>\end{table}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;6n <Esc>o<++> & <++> & <++> & <++> &<++> & <++> \\<Esc>gg/<++><Enter>"_c4l

"formulas
inoremap ;ff \frac{<++>}{<++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;fi \int_{<++>}^{<++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;fe e^{<++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;fs \sum_{<++>}^{<++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;fa <Enter>\left\{\begin{array}{ll}<Enter><++> , & \quad <++> \\<Enter>\end{array}\right.<Esc>gg/<++><Enter>"_c4l
inoremap ;fp <Esc>$o<++> , & \quad <++> \\<Esc>gg/<++><Enter>"_c4l
inoremap ;fr \sqrt{<++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;fb \bar{<++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;fl \lim_{<++>} <++><Esc>gg/<++><Enter>"_c4l

"greek letters
inoremap ;ga \alpha  
inoremap ;gb \beta 
inoremap ;gg \gamma 
inoremap ;gG \Gamma 
inoremap ;gd \delta 
inoremap ;gD \Delta 
inoremap ;ge \epsilon 
inoremap ;gn \eta 
inoremap ;gl \lambda 
inoremap ;gm \mu 
inoremap ;gp \pi 
inoremap ;gr \rho 
inoremap ;gs \sigma 
inoremap ;gt \tau 
inoremap ;gx \chi 
inoremap ;gw \omega 
inoremap ;gO \Omega 
inoremap ;go \theta 
inoremap ;gz \zeta 

"symbols
inoremap ;si \infty 
inoremap ;sp \partial 
inoremap ;sal \leftarrow 
inoremap ;sar \rightarrow 
inoremap ;sl \leq 
inoremap ;sg \geq 
inoremap ;se \equiv
inoremap ;sn \neq
inoremap ;sap \approx
inoremap ;sd ^{\circ}

"code
inoremap ;cn \begin{figure}[H]<Enter>\lstset{frame=L,basicstyle={\small\ttfamily},numbers=left,tabsize=1,breaklines=true,showstringspaces=false}<Enter>\begin{lstlisting}<Enter><++><Enter>\end{lstlisting}<Enter>\label{cd:<++>}<Enter><++>%\caption{<++>}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;cb \lstset{frame=N,basicstyle={\small\ttfamily},numbers=none,tabsize=1,breaklines=true,showstringspaces=false}<Enter>\begin{lstlisting}<Enter><++><Enter>\end{lstlisting}<Enter><++><Esc>gg/<++><Enter>"_c4l

"figures
inoremap ;bfe \begin{figure}[H]<Enter>\centering<Enter>\captionsetup{justification=centering}<Enter>\includegraphics[width=<++>\linewidth]{<++>}<Enter>\label{fig:<++>}<Enter>\caption{<++>}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;bfn \begin{figure}[H]<Enter>\centering<Enter>\captionsetup{justification=centering}<Enter><++><Enter>\label{fig:<++>}<Enter>\caption{<++>}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l

"minipages
inoremap ;2em \begin{figure}[H]<Enter>\centering<Enter>\begin{minipage}{0.5\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{0.5\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;3em \begin{figure}[H]<Enter>\centering<Enter>\begin{minipage}{0.33\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{0.33\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{0.33\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;4em \begin{figure}[H]<Enter>\centering<Enter>\begin{minipage}{0.25\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{0.25\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{0.25\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{0.25\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;2sm \begin{figure}[H]<Enter>\centering<Enter>\begin{minipage}{0.48\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{0.04\textwidth}<Enter>\hfill<Enter>\end{minipage}%<Enter>\begin{minipage}{0.48\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;3sm \begin{figure}[H]<Enter>\centering<Enter>\begin{minipage}{0.31\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{0.03\textwidth}<Enter>\hfill<Enter>\end{minipage}%<Enter>\begin{minipage}{0.31\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{0.03\textwidth}<Enter>\hfill<Enter>\end{minipage}%<Enter>\begin{minipage}{0.31\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;4sm \begin{figure}[H]<Enter>\centering<Enter>\begin{minipage}{0.22\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{0.04\textwidth}<Enter>\hfill<Enter>\end{minipage}%<Enter>\begin{minipage}{0.22\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{0.04\textwidth}<Enter>\hfill<Enter>\end{minipage}%<Enter>\begin{minipage}{0.22\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{0.04\textwidth}<Enter>\hfill<Enter>\end{minipage}%<Enter>\begin{minipage}{0.22\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;2cm \begin{figure}[H]<Enter>\centering<Enter>\begin{minipage}{<++>\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{<++>\textwidth}<Enter>\hfill<Enter>\end{minipage}%<Enter>\begin{minipage}{<++>\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;3cm \begin{figure}[H]<Enter>\centering<Enter>\begin{minipage}{<++>\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{<++>\textwidth}<Enter>\hfill<Enter>\end{minipage}%<Enter>\begin{minipage}{<++>\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{<++>\textwidth}<Enter>\hfill<Enter>\end{minipage}%<Enter>\begin{minipage}{<++>\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l
inoremap ;4cm \begin{figure}[H]<Enter>\centering<Enter>\begin{minipage}{<++>\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{<++>\textwidth}<Enter>\hfill<Enter>\end{minipage}%<Enter>\begin{minipage}{<++>\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{<++>\textwidth}<Enter>\hfill<Enter>\end{minipage}%<Enter>\begin{minipage}{<++>\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}%<Enter>\begin{minipage}{<++>\textwidth}<Enter>\hfill<Enter>\end{minipage}%<Enter>\begin{minipage}{<++>\textwidth}<Enter>\centering<Enter><++><Enter>\end{minipage}<Enter>\end{figure}<Enter><++><Esc>gg/<++><Enter>"_c4l

"columns
inoremap ;mc \begin{multicols}{<++>}<Enter><++><Enter>\end{multicols}<Esc>gg/<++><Enter>"_c4l

"referencing
inoremap ;re \eqref{eq:<++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;rt \ref{<++>} <++><Esc>gg/<++><Enter>"_c4l
inoremap ;rr \cite{<++>} <++><Esc>gg/<++><Enter>"_c4l


