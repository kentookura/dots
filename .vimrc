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
	Plug 'vimwiki/vimwiki'
		let g:vimwiki_list = [{'path': '~/wiki/',
					\ 'syntax': 'markdown', 'ext': '.md'}]
	Plug 'jiangmiao/auto-pairs'
	Plug 'sheerun/vim-polyglot'
	Plug 'scrooloose/nerdtree'
	Plug 'chrisbra/Colorizer'
	Plug 'vim-airline/vim-airline'
	Plug 'rhysd/vim-healthcheck'
	Plug 'tpope/vim-surround'
call plug#end()

"----------------------basics-----------------------------

colo desert
filetype indent plugin on
let mapleader = ","
set autoread
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

autocmd BufNewFile,BufRead *.hs set expandtab
autocmd FileType json setlocal ts=2 sts=2 sw=2
autocmd FileType html setlocal ts=2 sts=2 sw=2

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
