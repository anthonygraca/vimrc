" This is the vimrc of Anthony Graca
" CS Undergrad of California State Polytechnic University, Pomona
" Class of 2018

set nocompatible


set relativenumber                " Sets relative numbering
set number                        " Sets line numbers
syntax enable                     " Allows Colors for syntax

set tabstop=2                     " When tab is pressed, insert two spaces
set shiftwidth=2
set softtabstop=2
set expandtab                     " Makes tab insert a space
"set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set background=dark               " Makes the background black
set autoindent                    " Indents automatically based on before

" sets 'jj' to alternatively leave insert mode
imap jj <ESC>

set hls                           " set highlighting
"set encoding=utf-8                " allow non-english characters

execute pathogen#infect()        
filetype plugin indent on
filetype plugin on

"let java_ignore_javadoc=1

"let g:solarized_termcolors=256
colorscheme solarized

" auto close braces
inoremap { {}<Left>
inoremap {<CR> {<CR>}<C-c>O
" auto close parenthesis
inoremap ( ()<Left>
