"	        _
"	 __   _(_)_ __ ___  _ __ ___ 
"	 \ \ / / | '_ ` _ \| '__/ __|
"	  \ V /| | | | | | | | | (__ 
"	   \_/ |_|_| |_| |_|_|  \___|


"--------------------------------------plugins---------------------------------

call plug#begin('~/.vim/plugged')
"	Plug 'sirver/ultisnips' let g:UltiSnipsExpandTrigger='<shift>' let g:UltiSnipsJumpForwardTrigger='<shift>' let g:UltiSnipsJumpBackwardTrigger='<s-tab>' let g:UltiSnipsSnippetsDir = "~/.vim/UltiSnips/"
	Plug 'lervag/vimtex'
		let g:tex_flavor='latex'
		let g:vimtex_view_method='zathura'
		let g:vimtex_quickfix_mode=0
		set conceallevel=1
		let g:tex_conceal='abdmg'
	Plug 'vim-airline/vim-airline-themes'
		let g:airline_powerline_fonts = 1
		let g:airline_theme='base16_embers'
		let g:airline#extenstions#tabline#enabled = 1
	Plug 'vimwiki/vimwiki'
		let g:vimwiki_list = [{'path': '~/usr/wiki'}]
		let g:vimwiki_conceallevel=2
		let g:vimwiki_table_mappings = 0
	Plug 'scrooloose/nerdtree'
		let NERDTreeMapActivateNode='l'
	Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex'}
		let g:livepreview_previewer = 'zathura'
	Plug 'honza/vim-snippets'
	Plug 'junegunn/goyo.vim'
		let g:goyo_height = 100
	Plug 'mattn/calendar-vim'
	Plug 'baskerville/vim-sxhkdrc'
	Plug 'chrisbra/Colorizer'
	Plug 'vim-airline/vim-airline'
	Plug 'rhysd/vim-healthcheck'
	Plug 'tpope/vim-surround'
	Plug 'adelarsq/vim-matchit'
call plug#end()

"--------------------------------------general------------------------------

let mapleader = ","
set nocompatible
set hidden
syntax on
filetype indent plugin on
set number relativenumber
set encoding=utf-8
set fileencoding=utf-8
colo desert
set ignorecase smartcase
set splitbelow
set splitright
set foldmethod=syntax
set so=999
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

map Q @q

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap s ]s
nnoremap S [s
nnoremap = :vertical resize +5<CR>
nnoremap - :vertical resize -5<CR>

"----------------------------------autocmds--------------------------------

autocmd Filetype html inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
autocmd BufRead .aliases,.functions set syntax=sh
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
autocmd BufWritePost .bashrc !source ~/.bashrc
autocmd VimLeave *.tex !texclear %

"--------------------------------templates----------------------------------

if has("autocmd")
	augroup templates
		autocmd BufNewFile *.wiki 0r ~/.vim/templates/skeleton.wiki
		autocmd BufNewFile *.html 0r ~/.vim/templates/skeleton.html
	augroup end
endif

"----------------------------------syntax----------------------------------

autocmd BufNewFile,BufRead *.hs set expandtab

autocmd BufNewFile,BufRead *.config set syntax=sh
autocmd BufNewFile,BufRead *.conf set syntax=sh
autocmd BufNewFile,BufRead *.cfg set syntax=sh
autocmd BufNewFile,BufRead *.rc set syntax=sh

"----------------------------plugin-configuration--------------------------

map <C-n> :NERDTreeToggle<CR>
map <C-g> :Goyo<CR>

autocmd FileType tex map <C-p> :LLPStartPreview<CR>
autocmd BufRead,BufNewFile *.tex hi clear Conceal

autocmd FileType vimwiki map <C-c>c :call ToggleCalendar()<Enter> 
autocmd FileType vimwiki map <leader>u :call VimwikiDiaryGenerateLinks()<CR>
autocmd BufRead,BufNewFile /tmp/calcurse* set filetype=vimwiki

fun! s:CloseAddons()
    for w in range(1, winnr('$'))
        let l:name = bufname(winbufnr(w))
        if l:name !~? '[Plugins],__Calendar\|NERD_Tree_'
            return
        endif
    endfor

    if tabpagenr('$') ==? 1
        execute 'quitall'
    else
    execute 'tabclose'
    endif
endfun

augroup plugin_custom
    autocmd!
    autocmd WinEnter * silent! call <SID>CloseAddons()
augroup end
