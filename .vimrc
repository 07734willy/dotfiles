set nocompatible

let mapleader = " "
let maplocalleader = "\<space>"

silent! call plug#begin('~/.vim/plugged')
if exists("plug#begin")
	Plug '~/.vimplugins/PyRepl'
endif
silent! call plug#end()

fun! SetFoldColors() abort
	hi FoldColumn ctermbg=black ctermfg=blue
	hi Folded ctermbg=black ctermfg=blue
endfun

au ColorScheme * call SetFoldColors()
call SetFoldColors()

set number

filetype plugin on
autocmd FileType python setlocal noexpandtab shiftwidth=4 tabstop=4

set mouse=v
set virtualedit=onemore
set undolevels=1000
set backspace=indent,eol,start

" remember undo after quitting
set hidden
" enable keypad keys
set esckeys

map <silent> <C-j> :bprev<CR>
map <silent> <C-k> :bnext<CR>
set hidden " this will go along

noremap <up> <C-w><up>
noremap <down> <C-w><down>
noremap <left> <C-w><left>
noremap <right> <C-w><right>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

nnoremap <silent> <CR> :noh<CR><CR>

set tabstop=4
set noexpandtab
set smarttab
set shiftwidth=4
set autoindent

set wildmenu
set background=dark
colorscheme elflord
set hlsearch incsearch

silent! set syntax

set novb
set t_vb=
