# vimLatexConfig
This repository contains a small example of installing and usage of Vim + Latex + Livepreview.

## Installation

1. Install pdflatex and tex packages. (1+ GB)

```
sudo apt-get install texlive-full
```

2. Install Vundle 

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

```

3. Install Zathura (PDF Viewer)
```
sudo apt-get install zathura

```
Done

## Configuration

 1. Copy / merge contents of latexrc into ~/.vimrc
 2. From the command line run
 
```
vim +PluginInstall +qall
```
Done
 
## Usage
 
 1. Copy the template directory to new document location
 2. From tex-minimum.tex the following can be used
  - F8 or :"LL" Start autocompilation and live preview
  - "\ll" - Full compilation using pdflatex
  - "\lv" - Full preview using default pdf viewer
  - "\lC" - Clean folder of all files except bib file (for references) and .tex file

  
  
