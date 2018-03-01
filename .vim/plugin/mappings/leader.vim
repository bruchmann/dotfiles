" Leader mappings

" Fast buffer closing
map <Leader>q :bd<CR>
map <Leader>Q :%bd<CR>

" Quick save
nnoremap <Leader>w :w<CR>

" Quick vimrc editing
nmap <Leader>ev :vsp $MYVIMRC<CR>

" Source current line or visual selection
vnoremap <Leader>S y:execute @@<CR>
nnoremap <Leader>S ^vg_y:execute @@<CR>

" Open current working directory in the systems file explorer
" Depends on https://npmjs.com/package/opn-cli
nnoremap <Leader>O :!opn .<CR>


" Plugin -- Fugitive
nnoremap <Leader>ga :Git add %:p<CR><CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit -v -q<CR>
nnoremap <Leader>gt :Gcommit -v -q %:p<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>ge :Gedit<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gw :Gwrite<CR><CR>
nnoremap <Leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <Leader>gp :Ggrep<Space>
nnoremap <Leader>gm :Gmove<Space>
nnoremap <Leader>gb :Git branch<Space>
nnoremap <Leader>go :Git checkout<Space>
nnoremap <Leader>gps :AsyncRun! git push<CR>
nnoremap <Leader>gpl :AsyncRun! git pull<CR>
