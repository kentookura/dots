"	        _
"	 __   _(_)_ __ ___  _ __ ___ 
"	 \ \ / / | '_ ` _ \| '__/ __|
"	  \ V /| | | | | | | | | (__ 
"	   \_/ |_|_| |_| |_|_|  \___|

"-----------------------plugins----------------------------

call plug#begin('~/.vim/plugged')
	Plug 'junegunn/goyo.vim'
		let g:goyo_height = 100
	Plug 'junegunn/fzf', { 'do': {->fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'itchyny/lightline.vim'
		let g:lightline = {
			\ 'colorscheme': 'seoul256',
			\ 'separator': { 'left': '▓▒░', 'right': '░▒▓'  },
			\ 'subseparator': { 'left': '▒', 'right': '░'  }
			\ }
	Plug 'vimwiki/vimwiki'
		let g:vimwiki_list = [{'path': '~/wiki/',
					\ 'syntax': 'markdown', 'ext': '.md'}]
	Plug 'jiangmiao/auto-pairs'
	Plug 'sheerun/vim-polyglot'
	Plug 'scrooloose/nerdtree'
	Plug 'chrisbra/Colorizer'
	Plug 'rhysd/vim-healthcheck'
	Plug 'tpope/vim-surround'
	
"        __                 __           __ __ 
" 	|  |--.---.-.-----.|  |--.-----.|  |  |
" 	|     |  _  |__ --||    <|  -__||  |  |
" 	|__|__|___._|_____||__|__|_____||__|__|
                                       
	"Plug 'eagletmt/ghcmod-vim'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'scrooloose/syntastic'
	Plug 'tomtom/tlib_vim'
	Plug 'MarcWeber/vim-addon-mw-utils'
	Plug 'garbas/vim-snipmate'
	Plug 'scrooloose/nerdcommenter'
	Plug 'godlygeek/tabular'
	Plug 'ervandew/supertab'
	Plug 'Shougo/neocomplete.vim'
"	Plug 'neovimhaskell/haskell-vim'
"		let g:haskell_enable_quantification = 1
"		let g:haskell_enable_recurxivedo = 1
"		let g:haskell_enable_arrowxyntax = 1
"		let g:haskell_enable_pattern_synonyms = 1
"		let g:haskell_enable_typeroles = 1
"		let g:haskell_enable_staic_pointers = 1
"		let g:haskell_indent_if = 3
"		let g:haskell_indent_case=2
"		let g:haskell_indent_let = 4
"		let g:haskell_indent_where = 6
"		let g:haskell_indent_before_where = 2
"		let g:haskell_indent_after_bare_where = 2
"		let g:haskell_indent_do = 3
"		let g:haskell_indent_in = 1
"		let g:haskell_indent_guard = 2
call plug#end()

"----------------------basics-----------------------------

colo desert
filetype indent plugin on
let mapleader = ","
set autoread
set laststatus=2
set clipboard=unnamed
set encoding=utf-8
set fileencoding=utf-8
set foldmethod=syntax
set hidden
set hlsearch
set ignorecase smartcase
set nobackup
set nocompatible
set noswapfile
set nowritebackup
set number relativenumber
set path+=**
set so=30
set splitbelow
set splitright
set wildignore+=*.opus,*.flac,*.pdf,*.jpg,*.png,*.so,*.swp,*.zip,*.gzip,*.bz2,*.tar,*.xz,*.lrzip,*.lrz,*.mp3,*.ogg,*.mp4,*.gif,*.jpeg,*.webm
set wildmenu
syntax on

" open help vertically
command! -nargs=* -complete=help Help vertical belowright help <args>
autocmd FileType help wincmd L
	
"-------------------------------------remaps-------------------------------

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>


inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>a

nnoremap - :vertical resize -5<CR>
nnoremap = :vertical resize +5<CR>

"----------------------------------autocmds--------------------------------

autocmd VimLeave *.tex !texclear %

"----------------------------------syntax----------------------------------

autocmd Filetype haskell setlocal expandtab
autocmd FileType json setlocal sw=2
autocmd FileType json setlocal ts=2 sts=2 sw=2
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType markdown setlocal ts=2 sts=2 sw=2

autocmd BufNewFile,BufRead *.config set syntax=sh
autocmd BufNewFile,BufRead *.conf set syntax=sh
autocmd BufNewFile,BufRead *.cfg set syntax=sh
autocmd BufNewFile,BufRead *.rc set syntax=sh
autocmd BufNewFile,BufRead *.shellrc set syntax=sh
autocmd BufNewFile,BufRead *.md set tabstop=4

"----------------------------plugin-configuration--------------------------

map <C-n> :NERDTreeToggle<CR>
map <C-g> :Goyo<CR>

autocmd FileType tex map <C-p> :LLPStartPreview<CR>
autocmd BufRead,BufNewFile *.tex hi clear Conceal
