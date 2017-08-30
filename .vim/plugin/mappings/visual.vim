" Visual mode mappings

" Do not lose visual selection while indenting
vnoremap < <gv
vnoremap > >gv

" Treat long lines as break lines (useful when moving around in them)
vmap j gj
vmap k gk

" Window movement in visual mode
xnoremap <C-h> <C-w>h
xnoremap <C-j> <C-w>j
xnoremap <C-k> <C-w>k
xnoremap <C-l> <C-w>l

" Move to first printable charecter on current line
xnoremap 0 ^

" Keep cursor centered on these motions
nnoremap G Gzz
nnoremap n nzzzv
nnoremap N Nzzzv

" Map cursor keys to something useful
map <Up> :bp<cr>
map <Right> :tabn<cr>
map <Down> :bn<cr>
map <Left> :tabp<cr>
