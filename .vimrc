set nocompatible

let mapleader=","

set relativenumber                " Sets relative numbering
set number                        " Sets line numbers
syntax enable                     " Allows Colors for syntax
syntax on

set tabstop=2                     " When tab is pressed, insert two spaces
set shiftwidth=2
set softtabstop=2
set expandtab                     " Makes tab insert a space

set background=dark               " Makes the background black
set autoindent                    " Indents automatically based on before
set smartindent

" sets 'jj' to alternatively leave insert mode
imap jj <ESC>

set hls                           " set highlighting

execute pathogen#infect()        
filetype on
filetype plugin on
filetype indent on

set backspace=indent,eol,start

" Show whitespace MUST be inserted before colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red au InsertLeave * match ExtraWhitespace /\s\+$/
" colorscheme solarized           " works best w/ solarized installed and Linux
"colorscheme pablo                " works best for windows powershell

" auto close braces
inoremap { {}<Left>
inoremap {<CR> {<CR>}<C-c>O

"Traverse Buffer List
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"Explicitly Allow Hidden Buffers
set hidden

"allow for mouse to click on split windows
set mouse=a

"allow active file directory expansion on command line mode
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

"Remove arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Better copy * paste
set pastetoggle=<F2>
set clipboard=unnamed

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
vnoremap < <gv 
vnoremap > >gv 

"set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P
" Enable vim-powerline
set laststatus=2

" Settings for ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Settings for python-mode
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 1
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Omnicomplete option list
set completeopt=longest,menuone
function! OmniPopup(action)
  if pumvisible()
    if a:action == 'j'
      return "\<C-N>"
    elseif a:action == 'k'
      return "\<C-P>"
    endif
  endif
  return a:action
endfunction

inoremap <silent<C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent<C-k< <C-R>=OmniPopup('k')<CR>

" Python folding - Collapse and expand
s
