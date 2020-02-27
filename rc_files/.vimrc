set nocompatible
syntax on
set showmode
set hidden
set wildmenu
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab
map Y y$
nnoremap <C-L> :nohl<CR><C-L>
set nocompatible
set relativenumber
set rnu
filetype off
set bg=dark
set rtp+=/home/twrdy/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'chriskempson/base16-vim'
Plugin 'python-mode/python-mode'
Plugin 'sheerun/vim-polyglot'
Plugin 'https://github.com/tpope/vim-eunuch.git'
Plugin 'itchyny/lightline.vim'
Plugin 'git://github.com/urso/haskell_syntax.vim.git'
Plugin 'scrooloose/nerdtree'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'airblade/vim-gitgutter'
Plugin 'yggdroot/indentline'
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/lifepillar/vim-mucomplete.git'
Plugin 'dense-analysis/ale'
Plugin 'tomasiser/vim-code-dark'
Plugin 'https://github.com/rafi/awesome-vim-colorschemes.git'
Plugin 'tpope/vim-surround'

call vundle#end() 
filetype plugin indent on

set term=screen-256color
inoremap kj <ESC>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

noremap % v%

set showmatch
set matchtime=3

autocmd VimEnter * NERDTree 

nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

set completeopt+=noinsert
set completeopt+=longest,menuone,noselect
let g:jedi#popup_on_dot = 0  
let g:mucomplete#enable_auto_at_startup = 1

let g:pymode_syntax_all = 1

let base16colorspace=256
colorscheme gruvbox 
