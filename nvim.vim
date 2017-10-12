set nocompatible
set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
set t_Co=256

if (has("termguicolors"))
  set termguicolors
endif

set background=dark
set splitbelow
set splitright
set number relativenumber
set backspace=indent,eol,start
set autochdir
set encoding=utf8
set autoread
set scrolloff=5
set hidden
syntax on
set tabstop=4 softtabstop=2 shiftwidth=2 expandtab autoindent smarttab smartindent
" let g:loaded_python_provider = 0
" let g:loaded_python3_provider = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'oceanicnext'
let g:rooter_resolve_links = 1
let g:rooter_silent_chdir = 1
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_use_lcd = 1
let g:deoplete#enable_at_startup=1

call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'
Plug 'vim-syntastic/syntastic'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

" shugo stuff
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'ntpeters/vim-better-whitespace'
Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'tmux-plugins/vim-tmux'

" tips from https://bitboxer.de/2016/11/13/vim-for-elixir/
Plug 'sheerun/vim-polyglot'
Plug 'ludovicchabant/vim-gutentags'
Plug 'c-brenn/phoenix.vim'
Plug 'tpope/vim-projectionist'
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'Valloric/YouCompleteMe'

" Plug 'elxir-lang/vim-elixir'
" Plug 'thinca/vim-ref'
" Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }

"put after other IDEish plugins
Plug 'ryanoasis/vim-devicons'
Plug 'neomake/neomake'
call plug#end()

let g:alchemist_tag_map = '<C-]>'
let g:alchemist_tag_stack_map = '<S-t>'
let g:alchemist#elixir_erlang_src = "/home/jim/data/sources"
let g:gutentags_cache_dir = '~/.tags_cache'
autocmd! BufWritePost * Neomake

set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete:h13

syntax enable
colorscheme OceanicNext

map <silent> - :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeDirArrows=1
let g:NERDTreeAutoDeleteBuffer=1
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:WebDevIconsUnicodeDecorateFolderNodes=1
let g:DevIconsEnableFolderOpenClose=1

nnoremap ; :
" Align blocks of text and keep them selected
vnoremap <Tab> >gv
vnoremap <s-Tab> <gv
inoremap <s-Tab> <c-d>
inoremap <c-j> <down>
inoremap <c-k> <up>

map <Esc> :noh<cr>
nnoremap H ^
nnoremap L g_
nmap b B
nmap w W
nnoremap <c-n> :bnext<CR>
cnoremap <c-g> <c-c><Esc>
cnoremap K <UP>
cnoremap J <DOWN>
imap jk <Esc>
tmap jk <Esc>
tmap <Esc> <c-\><c-n>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
