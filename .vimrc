set nocompatible

let mapleader = " "
let maplocalleader = "\<space>"

" I hate myself already
call plug#begin('~/.vim/plugged')
" but it IS temporary
"Plug 'danth/pathfinder.vim'
Plug '~/vimscripts/pyrepl'
"Plug 'tmhedberg/SimpylFold'

call plug#end()
"let g:pf_autorun_delay = 1
"noremap <leader>pe :PathfinderExplain<CR>

"let g:SimpylFold_fold_import = 0

" set foldmethod=indent
" set foldcolumn=4
" set foldlevel=4

fun! SetFoldColors() abort
	hi FoldColumn ctermbg=black ctermfg=blue
	hi Folded ctermbg=black ctermfg=blue
endfun

au ColorScheme * call SetFoldColors()
call SetFoldColors()

set number
"au CmdwinEnter,FocusGained * :set norelativenumber
"au CursorHold,CursorHoldI * :set norelativenumber
"au CUrsorMoved,CursorMovedI * :set relativenumber
"set relativenumber
"source ~/vimscripts/linenums.vim

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

" nmap jj <nop>
" nmap kk <nop>
" nmap hh <nop>
" nmap ll <nop>
" 
" nmap bb <nop>
" nmap BB <nop>
" nmap ww <nop>
" nmap WW <nop>
" nmap ee <nop>
" nmap EE <nop>

"set timeout timeoutlen=40 ttimeoutlen=-1

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

" fun! CompileTex() abort
" 	execute "!pdflatex" expand("%")
" 	redraw!
" endfun
" 
" fun! SetTexFile() abort
" 	setlocal tabstop=2
" 	setlocal shiftwidth=2
" 
" 	au FileWritePost,BufWritePost <buffer> call CompileTex()
" endfun

"au FileType tex call SetTexFile()

"let g:pyrepl_set_colors = 1

" hi PyReplOut ctermfg=red ctermbg=green

" fun! PyFoldDepth(lineno) abort
" 	let l:prevline = getline(a:lineno-1)
" 	if prevline=~'^\t*\%\(@\I\+\)'
" 		return '='
" 	endif
" 
" 	let l:line = getline(a:lineno)
" 	if line=~'^\t*\%\(def\|class\)'
" 		return '>' . (len(matchlist(line, '^\(\t*\)')[1]) + 1)
" 	elseif line=~'^\t*\%\(@\I\+\)'
" 		return '>' . (len(matchlist(line, '^\(\t*\)')[1]) + 1)
" 	else
" 		return '='
" 	endif
" endfun
" 
" fun! PyFoldText() abort
" 	let l:lineno = v:foldstart
" 
" 	while l:lineno < v:foldend
" 		if prevline=!~'^\t*\%\(@\I\+\)'
" 			break
" 		endif
" 		let l:lineno += 1
" 	endwhile
" 
" 	v:foldstart = 2
" 	return foldtext()
" endfun
" set foldexpr=PyFoldDepth(v:lnum)
" 
" set fml=0
" 
" set foldmethod=expr
" set foldcolumn=4
" set foldtext=PyFoldText()
