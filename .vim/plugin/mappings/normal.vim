" Normal mode mappings

" Repeat last macro if in a normal buffer
nnoremap <expr> <CR> empty(&buftype) '@@' : '<CR>'

" Avoid unintentional switches to Ex mode
nmap Q q

" Copy until the end of line
noremap Y y$

" Do not move cursor on searching
nnoremap * *<C-o>

" Treat long lines as break lines (useful when moving around in them)
nmap j gj
nmap k gk

" Auto-format bad indent of copy/paste
nnoremap p p=`]

" Visually select current line without indentation
nnoremap vv ^vg_

" Move by paragraph -- https://www.reddit.com/r/vim/comments/458buq/moving_by_paragraph/
nnoremap <EXPR> { len(getline(line('.')-1)) > 0 ? '{+' : '{-'
nnoremap <EXPR> } len(getline(line('.')+1)) > 0 ? '}-' : '}+'

" Window resizing
nnoremap <C-Down> 5<C-w>-
nnoremap <C-Left> 5<C-w><
nnoremap <C-Right> 5<C-w>>
nnoremap <C-Up> 5<C-w>+

" Window movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Toggle relative line numbers
nnoremap <C-n> :exec &relativenumber ? "setlocal relativenumber!" : "setlocal relativenumber"<CR>

" 0 jumps to the first printable character
nnoremap 0 ^
