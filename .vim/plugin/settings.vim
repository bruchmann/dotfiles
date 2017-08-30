" Enable wildmenu
set wildmenu

" Show current cursor position
set ruler

" Show partial command in statusline
set showcmd

" Show current mode in statusline
set showmode

" Disable search result highlights
set nohlsearch

" Highlight non-printable characters
set list
set listchars=tab:\→\ ,trail:·,precedes:←,extends:→

" Hide buffers instead deleting them
set hidden

" Do not redraw automatically
set lazyredraw

" Show matching braces, quotes, etc.
set showmatch
set matchtime=5

" Always report how many lines were changed
set report=0

" Enable auto- and smartindent
set autoindent
set smartindent

" Open splits right/below
set splitright
set splitbelow

" Backspace should behave like backspace
set backspace=eol,start,indent
set whichwrap=<,>,h,l

" Ignore case when searching
set ignorecase
set smartcase

" Search incrementally
set incsearch

" Use tabs for indentation by default
" Note: Should be handled by EditorConfig
" on a per-project basis
set smarttab
set shiftwidth=4
set tabstop=4
set noexpandtab

" Disable audio/visual bells
set noerrorbells visualbell t_vb=
set tm=500
autocmd GUIEnter * set visualbell t_vb=

" Close autocompletion window automatically
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

" Highlight current line
if has('gui_running')
  augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
  augroup END
endif

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Always show statusline
set laststatus=2

" @TODO Read documentaion on what is possible here
set viminfo^=%

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

