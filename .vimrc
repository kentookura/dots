"	        _
"	 __   _(_)_ __ ___  _ __ ___ 
"	 \ \ / / | '_ ` _ \| '__/ __|
"	  \ V /| | | | | | | | | (__ 
"	   \_/ |_|_| |_| |_|_|  \___|


filetype indent plugin on
set nocompatible
colo desert
let mapleader = " "
syntax on
set autoread
set laststatus=2
set clipboard=unnamed
set encoding=utf-8
set fileencoding=utf-8
set foldmethod=syntax
set hidden
set nowrap
set hlsearch
set ignorecase smartcase
set expandtab ts=2 sts=2 sw=2
set autoindent
set smarttab
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set nobackup
set noswapfile
set nowritebackup
set number relativenumber
set path+=**
set so=30
set splitbelow
set splitright
set wildignore+=*.opus,*.flac,*.pdf,*.jpg,*.png,*.so,*.swp,*.zip,*.gzip,*.bz2,*.tar,*.xz,*.lrzip,*.lrz,*.mp3,*.ogg,*.mp4,*.gif,*.jpeg,*.webm
set wildmenu

" open help vertically
command! -nargs=* -complete=help Help vertical belowright help <args>
autocmd FileType help wincmd L
	
"-------------------------------------remaps-------------------------------

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap gn :bn<CR>
nmap gp :bp<CR>
nmap gd :bd<CR>

inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>a

nnoremap - :vertical resize -5<CR>
nnoremap = :vertical resize +5<CR>
nnoremap <leader><leader> /<++><CR>c4l 

map <C-n> :NERDTreeToggle<CR>
map <C-g> :Goyo<CR>
map <C-f> :Files<CR>
map <C-b> :Buffers<CR>

map <Leader>s :SyntasticToggleMode<CR>

"----------------------------------autocmds--------------------------------

autocmd VimLeave *.tex !texclear %
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight

"----------------------------------syntax----------------------------------
"
autocmd CursorHold * silent cal CocActionAsync('highlight')

autocmd FileType haskell setlocal expandtab ts=2 sts=2 sw=2
autocmd FileType json setlocal sw=2
autocmd FileType json setlocal ts=2 sts=2 sw=2
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal expandtab ts=2 sts=2 sw=2
autocmd FileType scss setlocal expandtab ts=2 sts=2 sw=2
autocmd FileType markdown setlocal ts=2 sts=2 sw=2 conceallevel=0

autocmd BufNewFile,BufRead *.md set conceallevel=0
autocmd BufNewFile,BufRead *.config set syntax=sh
autocmd BufNewFile,BufRead *.conf set syntax=sh
autocmd BufNewFile,BufRead *.cfg set syntax=sh
autocmd BufNewFile,BufRead *.rc set syntax=sh
autocmd BufNewFile,BufRead *.shellrc set syntax=sh
autocmd BufNewFile,BufRead .xinitrc set syntax=sh
autocmd BufNewFile,BufRead .xmobarrc set syntax=haskell
autocmd BufRead xmonad.hs set foldmethod=marker
autocmd BufNewFile,BufRead *.md set tabstop=4

hi CocErrorSign ctermfg=0
hi Pmenu ctermbg=3

call plug#begin('~/.vim/plugged')

"-------------------------------vim--------------------------------------
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': {->fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/limelight.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'morhetz/gruvbox'
Plug 'chrisbra/Colorizer'
Plug 'rhysd/vim-healthcheck'

"------------------------------writing----------------------------------
Plug 'geratheon/vim-translate'
Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'
Plug 'vimwiki/vimwiki'
Plug 'rhysd/vim-grammarous'
Plug 'mattn/emmet-vim'

"--------------------------------git------------------------------------
Plug 'tpope/vim-fugitive'

"--------------------------------IDE------------------------------------
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"Plug 'sheerun/vim-polyglot'

"------------------------------haskell----------------------------------
Plug 'eagletmt/ghcmod-vim'
Plug 'scrooloose/syntastic'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'ervandew/supertab'
Plug 'Shougo/neocomplete.vim'
Plug 'neovimhaskell/haskell-vim'
call plug#end()


let g:goyo_height = 100

let g:fzf_preview_window = ''	
let g:fzf_buffers_jump = 1	
let $FZF_DEFAULT_OPTS='--reverse'

let g:limelight_conceal_ctermfg = 'gray'
let g:lightline = {
	\ 'colorscheme': 'seoul256',
	\ 'separator': { 'left': '▓▒░', 'right': '░▒▓'  },
	\ 'subseparator': { 'left': '▒', 'right': '░'  }
	\ }

let g:vimwiki_list = [{'path': '~/wiki/',
			\ 'syntax': 'markdown', 'ext': '.md'},
	         	\ {'path': '~/site/src/',
		        \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_conceallevel=0

let g:translate_src = "en"
let g:translate_dst = "de"

:let g:languagetool_jar="/usr/share/java/languagetool/languagetool-commandline.jar"

let g:haskell_enable_quantification = 1
let g:haskell_enable_recurxivedo = 1
let g:haskell_enable_arrowxyntax = 1
let g:haskell_enable_pattern_synonyms = 1
let g:haskell_enable_typeroles = 1
let g:haskell_enable_staic_pointers = 1
let g:haskell_indent_if = 3
let g:haskell_indent_case=2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
