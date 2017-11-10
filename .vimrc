"	:r $VIMRUNTIME/vimrc_example.vim
set nocompatible


set relativenumber                " Sets relative numbering
set number                        " Sets line numbers
syntax on                         " Allows Colors for syntax

set tabstop=2                     " When tab is pressed, insert two spaces
set shiftwidth=2
set expandtab                     " Makes tab insert a space
"set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set background=dark               " Makes the background black
set autoindent                    " Indents automatically based on before
imap jj <ESC>`^
set hls                           " set highlighting

"execute pathogen#infect()        
"filetype plugin indent on
"filetype plugin on

"let java_ignore_javadoc=1

