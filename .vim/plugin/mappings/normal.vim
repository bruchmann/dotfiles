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

" QWERTY sucks for programming
nnoremap ö {
nnoremap Ö [
nnoremap ä }
nnoremap Ä ]

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
nnoremap <C-n> :setlocal relativenumber!<CR>

" Store relative line number jumps in the jumplist if they exceed a threshold.
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'

" 0 jumps to the first printable character
nnoremap 0 ^
