set nocompatible
set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
set t_Co=256

if (has("termguicolors"))
  set termguicolors
endif

let mapleader=" "
set clipboard=unnamedplus
set background=dark
set splitbelow
set splitright
set number relativenumber
set backspace=indent,eol,start
" set autochdir
" set nowrap
set showbreak=↪
set encoding=utf-8
set autoread
set scrolloff=20
" set hidden
set title
" filetype plugin on
let python_highlight_all=1
syntax on
set tabstop=4 softtabstop=2 shiftwidth=2 expandtab autoindent smarttab smartindent
set hlsearch incsearch ignorecase smartcase

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" let g:loaded_python_provider = 0
" let g:loaded_python3_provider = 1

let g:gutentags_cache_dir = '~/.tags_cache'

call plug#begin('~/.vim/plugged')

"start scala support
" autocmd InsertLeave,TextChanged * update | Neomake! sbt
Plug 'ensime/ensime-vim', { 'do': ':UpdateRemotePlugins' }
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'cloudhead/neovim-fuzzy'
Plug 'neomake/neomake'
"Code completion with Deoplete - enabled by ensime
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources={} 
let g:deoplete#sources._=['buffer', 'member', 'tag', 'file', 'omni', 'ultisnips'] 
let g:deoplete#omni#input_patterns={} 
let g:deoplete#omni#input_patterns.scala='[^. *\t]\.\w*'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#sources={}
  let g:deoplete#sources._=['buffer', 'member', 'tag', 'file', 'omni', 'ultisnips']
  let g:deoplete#omni#input_patterns={}
  let g:deoplete#omni#input_patterns.scala='[^. *\t]\.\w*'

"start rust support
Plug 'rust-lang/rust.vim'
Plug 'autozimu/LanguageClient-neovim'
Plug 'rust-lang-nursery/rls'

Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
" Plug 'ctrlpvim/ctrlp.vim'
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
Plug 'tpope/vim-eunuch'

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

Plug 'wincent/terminus'
Plug 'airblade/vim-gitgutter'
set updatetime=200
let g:gitgutter_terminal_reports_focus=0

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
  let g:ycm_autoclose_preview_window_after_completion=1
  map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR><Paste>

Plug 'junegunn/vim-easy-align'
Plug 'powerman/vim-plugin-AnsiEsc'

Plug 'elixir-editors/vim-elixir'
" Plug 'thinca/vim-ref'
" Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }

Plug 'neomake/neomake'
  " let g:neomake_logfile = '/tmp/neomake.log'
  "Linting with neomake
  let g:neomake_sbt_maker = {
      \ 'exe': 'sbt',
      \ 'args': ['-Dsbt.log.noformat=true', 'compile'],
      \ 'append_file': 0,
      \ 'auto_enabled': 1,
      \ 'output_stream': 'stdout',
      \ 'errorformat':
          \ '%E[%trror]\ %f:%l:\ %m,' .
            \ '%-Z[error]\ %p^,' .
            \ '%-C%.%#,' .
            \ '%-G%.%#'
     \ }
  let g:neomake_markdown_enabled_makers = ['alex', 'markdownlint', 'proselint']
  let g:neomake_elixir_enabled_makers = ['mix', 'credo', 'dogma', 'elixir']
  let g:neomake_scala_enabled_makers = ['sbt']
  " let g:neomake_enabled_makers = ['sbt']
  " let g:neomake_verbose=3

Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'


"put after other IDEish plugins
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Use deoplete
let g:deoplete#enable_at_startup = 1

" start the neomake check as you go support
autocmd BufWritePost *.scala silent :EnTypeCheck
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

" map <Esc> :noh<cr>
map <CR> :nohl<cr>
nnoremap H ^
nnoremap L g_
" nmap b B
" nmap w W
nnoremap <c-n> :bnext!<CR>
nnoremap <c-p> :bprev!<CR>
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
