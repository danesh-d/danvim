
set number
set showcmd
set cursorline           " Show a line marker to the current line.
set wildmenu
set lazyredraw
set showmatch
set viminfo='20,<1000    " Max 1000 lines are stored in the buffer.

set tabstop=2            " Tabs are at proper location.
set expandtab            " Don't use actual tab character (ctrl-v).
set shiftwidth=2         " Indenting is 2 spaces.
set autoindent           " Turns it on.
set smartindent          " Does the right thing (mostly) in programs.
set cindent              " Stricter rules for C programs..
set hlsearch             " Highlight all search results
set bs=indent,eol,start  " Backspace over everything in insert mode
set ruler                " Show current row, column, and page percentage.
set hlsearch             " Highlight search results

au BufWinEnter * let w:m1=matchadd('Todo', 'HACK\|BUG\|REVIEW\|FIXME\|TODO\|NOTE', -1)

hi clear
colorscheme elflord
"colorscheme distinguished

syntax on                " Turn the syntax highlighting on.
filetype indent on

" Highlight the chars in lines longer than 80 chars.
highlight OverLength ctermbg=red ctermfg=white guibg=#FFFFFF
match OverLength /\%81v.\+/

" Remember the last position of the cursor when a file is re-opened.
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
