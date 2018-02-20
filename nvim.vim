set nocompatible
set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
set t_Co=256

if (has("termguicolors"))
  set termguicolors
endif

set clipboard=unnamedplus
set background=dark
set splitbelow
set splitright
set number relativenumber
set backspace=indent,eol,start
" set autochdir
" set nowrap
set showbreak=↪
set encoding=utf8
set autoread
set scrolloff=20
" set hidden
set title
" filetype plugin on
syntax on
set tabstop=4 softtabstop=2 shiftwidth=2 expandtab autoindent smarttab smartindent
" let g:loaded_python_provider = 0
" let g:loaded_python3_provider = 1

let g:gutentags_cache_dir = '~/.tags_cache'

call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_powerline_fonts = 1
  let g:airline_theme = 'oceanicnext'
Plug 'vim-airline/vim-airline-themes'
" Plug 'enricobacis/vim-airline-clock'
Plug 'mhartington/oceanic-next'
" Plug 'vim-syntastic/syntastic'
"     " ** Don't set these if using airline
"     " set statusline+=%#warningmsg#
"     " set statusline+=%{SyntasticStatuslineFlag()}
"     " set statusline+=%*

"     let g:syntastic_always_populate_loc_list = 1
"     let g:syntastic_auto_loc_list = 1
"     let g:syntastic_check_on_open = 1
"     let g:syntastic_check_on_wq = 0
"     let g:syntastic_shell = "/usr/bin/zsh"
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

" shugo stuff
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" let g:deoplete#enable_at_startup = 1

Plug 'ntpeters/vim-better-whitespace'
" Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdtree'
  noremap - :NERDTreeToggle<CR>
  let NERDTreeShowHidden=1
  let NERDTreeQuitOnOpen=1
  let NERDTreeDirArrows=1
  let g:NERDTreeAutoDeleteBuffer=1
  let g:WebDevIconsUnicodeDecorateFolderNodes=1
  let g:DevIconsEnableFolderOpenClose=1
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'airblade/vim-gitgutter'
" set updatetime=10000

Plug 'airblade/vim-rooter'
  let g:rooter_patterns = ['mix.exs']
  let g:rooter_resolve_links = 1
  let g:rooter_silent_chdir = 1
  let g:rooter_change_directory_for_non_project_files = 'current'
  let g:rooter_use_lcd = 1
Plug 'tmux-plugins/vim-tmux'

" tips from https://bitboxer.de/2016/11/13/vim-for-elixir/
Plug 'sheerun/vim-polyglot'
Plug 'ludovicchabant/vim-gutentags'
" Plug 'c-brenn/phoenix.vim'
" Plug 'tpope/vim-projectionist'
Plug 'slashmili/alchemist.vim'
  " disabled below
  " let g:alchemist_tag_disable=1
  let g:alchemist_tag_map = '<C-]>'
  let g:alchemist_tag_stack_map = '<C-[>'
  let g:alchemist#elixir_erlang_src = "/home/jim/data/sources"
Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/vim-easy-align'
Plug 'powerman/vim-plugin-AnsiEsc'

" Plug 'elixir-editors/vim-elixir'
" Plug 'thinca/vim-ref'
" Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }

Plug 'neomake/neomake'
  " let g:neomake_logfile = '/tmp/neomake.log'
  let g:neomake_markdown_enabled_makers = ['alex', 'markdownlint', 'proselint']
  let g:neomake_elixir_enabled_makers = ['mix', 'credo', 'dogma']

"put after other IDEish plugins
Plug 'ryanoasis/vim-devicons'
call plug#end()

" start the neomake check as you go support
call neomake#configure#automake('rwn')

set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete:h13

syntax enable
" colorscheme OceanicNext
colorscheme OceanicJim


nnoremap ; :

" fix tag navigation
noremap ] <c-]>
noremap <c-]> :pop<cr>

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
cnoremap ee e!
