
set number
set showcmd
set cursorline         " Show a line marker to the current line.
set wildmenu
set lazyredraw
set showmatch
set viminfo='20,<1000  " Max 1000 lines are stored in the buffer.

set tabstop=2          " Tabs are at proper location.
set expandtab          " Don't use actual tab character (ctrl-v).
set shiftwidth=2       " Indenting is 2 spaces.
set autoindent         " Turns it on.
set smartindent        " Does the right thing (mostly) in programs.
set cindent            " Stricter rules for C programs..

hi clear
colorscheme elflord
"colorscheme distinguished

syntax on              " Turn the syntax highlighting on.
filetype indent on

" Highlight the chars in lines longer than 80 chars.
highlight OverLength ctermbg=red ctermfg=white guibg=#59292
match OverLength /\%81v.\+/

