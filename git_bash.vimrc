set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/a.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,latin1
set number
set tabstop=4
set expandtab
set softtabstop=4
syntax enable
set scrolloff=6
set shiftwidth=4
set smarttab
set number
set ruler
set history=1024
"set nocursorline
set cursorline
filetype on
filetype plugin indent on
filetype plugin on
set nocp
"set hlsearch
nmap <F11> :set hlsearch<CR>
nmap <F12> :set nohlsearch<CR>
set autochdir
set ignorecase
set smartcase
set incsearch
set smartindent
set showmatch
set matchtime=5
set backspace=indent,eol,start
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

colorscheme solarized
set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"=======airline theme=======
let g:airline_theme= 'zenburn'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep ='⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮁' 
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.paste = 'ρ'
nmap <C-n> :bn<CR>
nmap <C-p> :bp<CR>
set cmdheight=2
set mouse=a
set completeopt=longest,menu
let Tlist_Auto_Open=1
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_WinWidth=35
"shortcut for tlist
map <F2> :TlistToggle <CR>
"shortcut for nerdtree
map <F3> :NERDTreeToggle <CR>
"NERDTree.vim
let g:NERDTreeWinPos="right"
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeWinSize=35
let g:NERDChristmasTree=0
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\~$', '\.pyc$', '\.o$']
let g:NERDTreeShowBookmarks=1
" if no argument, auto open nerdtree
autocmd vimenter * if !argc()| NERDTree| endif
" close vim if onlu nerdtree exist
autocmd bufenter * if (winnr("$")==1 && exists("b:NERDTreeType") && b:NERDTreeType=="primary")|q|endif
"switch buffer in current window
"let g:miniBufExplMapCTabSwitchBufs=1
"-----vim-markdown-----
let g:markdown_enable_spell_checking = 0
let g:markdown_enable_conceal = 1
"---python dictionary------
let g:pydiction_location = '/d/py_dictionary/pydiction_files/complete-dict'
"---python syntax------
"Python2Syntax	Switch to Python 2
"Python3Syntax	Switch to Python 3
let g:python_highlight_all = 1
"----cpp hightlight----
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
