"Disable compatibility with vi which can cause unexpected issues"
set nocompatible

"Enable type file dectection. Vim will be able to try to detect the type of file is use"
filetype on

"Enable plugins and load plugins for the detected file type"
filetype plugin on

"Load an indent file for the detected file type"
filetype indent on

"Turn syntax highlighting on"
syntax on

"Add line numbers to the file
set number

"Add relative line numbers to the file
set relativenumber

"Highlight cursor line underneath the cursor horizontally"
set cursorline
hi CursorLine term=bold cterm=bold

"Highlight cursor line underneath the cursor vertically"
set cursorcolumn

"Set shift width to 4 spaces
set shiftwidth=4

"Set tab width to 4 columns
set tabstop=4

"Use space characters in place of tabs
set expandtab

"Disable automatic block indentation"
set noautoindent 

"Do not save backup files
set nobackup

"Do not wrap lines. Allow long lines to extend as far as the line goes
set nowrap

"Hide the mode from the bottom of the screen
set noshowmode

"While searching through a file, incrementally highlight matching characters as you type
set incsearch

"Ignore captial letters during search"
set ignorecase

"Override the ignore case option if searching for captial letters"
"This will allows you to search specifically for capital letters"
set smartcase

"Show partial command you type in the last line of the screen
set showcmd

"Allow backspace over everything
set backspace=indent,eol,start

"Show matching words during a search"
set showmatch

"Use highlighting when doing a search"
set hlsearch

"Enable auto completion menu after pressing <TAB>"
set wildmenu

"Make wildmenu behave similar to Bash completion"
set wildmode=list:longest

"There are certain files that we would never want to edit with Vim"
"Wildmen will ignore files with theses extensions
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*xlsx

"Plug ins"

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'luochen1990/rainbow'

Plug 'raimondi/delimitmate'

Plug 'itchyny/lightline.vim'

Plug 'ajmwagar/vim-dues'

Plug 'sheerun/vim-polyglot'

Plug 'dense-analysis/ale'

Plug 'valloric/youcompleteme'

call plug#end()

"rainbow"
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

"lightline"
let g:lightline = {
      \ 'colorscheme': 'deus',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'syntax' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent'  ],
      \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ]
      \            ]
      \ },
      \ 'component': {
      \    'charvaluehex': '0x%B'
      \ }
      \ }


"THEME"
colors deus

"STATUS LINE"

"Clear status line when vimrc is reloaded"
"set statusline=

"Status line left side"
"set statusline+=\ %f\ %m\ %y\ %r

"Use a divider to separate the left side from the right side"
"set statusline+=%=

"Status line right side"
"set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

"Show the status on the second to last line"
set laststatus=2
