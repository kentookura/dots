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
	Plug 'jiangmiao/auto-pairs'
	Plug 'sheerun/vim-polyglot'
	Plug 'scrooloose/nerdtree'
	Plug 'chrisbra/Colorizer'
	Plug 'vim-airline/vim-airline'
	Plug 'rhysd/vim-healthcheck'
	Plug 'tpope/vim-surround'
call plug#end()

"----------------------general-----------------------------

let mapleader = ","
set nocompatible
filetype indent plugin on
syntax on
set hidden
set number relativenumber
set encoding=utf-8
set fileencoding=utf-8
set ignorecase smartcase
set splitbelow
colo desert
set so=999
set splitright
set foldmethod=syntax
set path+=**
set clipboard=unnamed
set wildmenu
set hlsearch
set autoread
set wildignore+=*.opus,*.flac,*.pdf,*.jpg,*.png,*.so,*.swp,*.zip,*.gzip,*.bz2,*.tar,*.xz,*.lrzip,*.lrz,*.mp3,*.ogg,*.mp4,*.gif,*.jpeg,*.webm
set noswapfile
set nobackup
set nowritebackup

" open help vertically
command! -nargs=* -complete=help Help vertical belowright help <args>
autocmd FileType help wincmd L
	
"-------------------------------------remaps-------------------------------

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap - :vertical resize -5<CR>
nnoremap = :vertical resize +5<CR>

"----------------------------------autocmds--------------------------------

autocmd VimLeave *.tex !texclear %

"----------------------------------syntax----------------------------------

autocmd BufNewFile,BufRead *.hs set expandtab
autocmd BufNewFile,BufRead *.js set tabstop=2

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
