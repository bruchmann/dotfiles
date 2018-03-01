" Plugin -- Ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = "never"
let g:ale_sign_column_always = 1
let g:ale_sign_error = "╳"
let g:ale_sign_warning = "➤"
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:ale_fixers = {
			\   'javascript': [
			\       'eslint',
			\       'prettier_eslint'
			\   ],
			\}

nmap <silent> <M-j> <Plug>(ale_next_wrap)
nmap <silent> <M-k> <Plug>(ale_previous_wrap)
nmap <F7> <Plug>(ale_lint)
nmap <F8> <Plug>(ale_fix)
