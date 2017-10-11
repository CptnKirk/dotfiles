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
set autochdir
set encoding=utf8
let g:loaded_python_provider = 1
" let g:loaded_python3_provider = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'oceanicnext'
let g:rooter_resolve_links = 1
let g:rooter_silent_chdir = 1
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_use_lcd = 1

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

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'tmux-plugins/vim-tmux'

Plug 'elxir-lang/vim-elixir'
Plug 'thinca/vim-ref'
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }

"put after other IDEish plugins
Plug 'ryanoasis/vim-devicons'
call plug#end()

set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete:h13

syntax enable
colorscheme OceanicNext

map <C-m> :NERDTreeToggle<CR>
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
