set helplang=cn
set encoding=utf-8
set number
set tabstop=4
set expandtab
set softtabstop=4
syntax on
set scrolloff=6
set shiftwidth=4
set smarttab
set history=1024
set nocursorline
filetype on
filetype plugin on
set autochdir
set ignorecase
set smartcase
set incsearch
set smartindent
set showmatch
set matchtime=5
colorscheme desert
set cmdheight=2
set mouse=a
let Tlist_Auto_Open=1
let Tlist_Ctags_Cmd='/home/z00438418/ctags/install/bin/ctags'
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
let g:miniBufExplMapCTabSwitchBufs=1
