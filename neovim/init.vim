" Self-explonentary
set encoding=utf-8

" Set $MYVIMRC path to this file -- simulates symlinking on Windows
" let $MYVIMRC = "~/dotfiles/neovim/init.vim"

let mapleader="\<Space>"
let maplocalleader=","

" Disable backups -- YOLO
set nowritebackup
set nobackup
set noswapfile
set noundofile

" Set how many command lines to remember
set history=1000

" Reload files when they were changed outside of VIM
set autoread

" Configure VIMs path management
set path+=**
set wildignore+=*\\tmp\\*
set wildignore+=*.swp
set wildignore+=*.zip
set wildignore+=*.exe
set wildignore+=*\\node_modules\\*
set wildignore+=*\\package-lock.json
set wildignore+=*\\yarn.lock
set wildignore+=*\\elm-stuff

" Use UNIX line endings
set fileformat=unix
set fileformats=unix

" Add current directory to runtimepath
set runtimepath+=~/dotfiles/neovim

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

" Use global status line
set laststatus=2

" Show tabline only when there are at least 2 tabpages
set showtabline=1

" @TODO Read documentaion on what is possible here
set viminfo^=%

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


" Autocorrections
iabbr flase false
iabbr fasle false
iabbr treu true
iabbr ture true
iabbr cnst const
iabbr cosnt const
iabbr heithg height
iabbr retrun return
iabbr withd width
iabbr widht width


"                         ____  __            _
"                        / __ \/ /_  ______ _(_)___  _____
"                       / /_/ / / / / / __ `/ / __ \/ ___/
"                      / ____/ / /_/ / /_/ / / / / (__  )
"                     /_/   /_/\__,_/\__, /_/_/ /_/____/
"                                   /____/

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

Plug 'editorconfig/editorconfig-vim'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function'
Plug 'haya14busa/vim-textobj-function-syntax'

Plug 'wellle/visual-split.vim'

Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-treesitter/nvim-treesitter-textobjects'
" Plug 'RRethy/nvim-treesitter-textsubjects'
" Plug 'romgrk/nvim-treesitter-context'
" Plug 'mizlan/iswap.nvim'
" Plug 'filipdutescu/renamer.nvim', {'branch':'master'}
" Plug 'm-demare/hlargs.nvim'
" Plug 'windwp/nvim-ts-autotag'
" Plug 'folke/twilight.nvim'
" Plug 'neovim/nvim-lspconfig'

Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'Pocco81/dap-buddy.nvim'

Plug 'numToStr/Comment.nvim'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'windwp/nvim-autopairs'
Plug 'monaqa/dial.nvim'
Plug 'wellle/targets.vim'

" Plug 'hrsh7th/nvim-cmp'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'petertriho/cmp-git'
" Plug 'andersevenrud/compe-tmux'
" Plug 'lukas-reineke/cmp-under-comparator'
Plug 'L3MON4D3/LuaSnip'
" Plug 'saadparwaiz1/cmp_luasnip'

Plug 'tversteeg/registers.nvim'
Plug 'chentau/marks.nvim'

Plug 'arcticicestudio/nord-vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'stevearc/dressing.nvim'

call plug#end()

" set completeopt=menu,menuone,noselect

lua << EOF
-- require'nvim-treesitter.configs'.setup {
--   ensure_installed = {
--   	"bash",
--   	"css",
--   	"javascript",
--   	"typescript"
--   },
--   sync_install = false,
--   hightlight = {
--   	enable = true,
--   	additional_vim_regex_highlighting = false
--   }
-- }

require('nvim-autopairs').setup{}
require('Comment').setup{}
-- require('renamer').setup{}
-- require'twilight'.setup{}

-- local cmp = require'cmp'
-- cmp.setup({
--   snippet = {
--   	expand = function(args)
--   		require('luasnip').lsp_expand(args.body)
--   	end,
--   },
--   window = {
--   	completion = cmp.config.window.bordered(),
--   	documentation = cmp.config.window.bordered()
--   },
--   mapping = cmp.mapping.preset.insert({
--   	['<C-b>'] = cmp.mapping.scroll_docs(-4),
--   	['<C-f>'] = cmp.mapping.scroll_docs(4),
--   	['<C-Space>'] = cmp.mapping.complete(),
--   	['<C-e>'] = cmp.mapping.abort(),
--   	['<CR>'] = cmp.mapping.confirm({ select = true }),
--   }),
--   sources = cmp.config.sources({
--   	{ name = 'nvim_lsp' },
--   	{ name = 'luasnip' },
--   	{ name = 'buffer' },
--   	{ name = 'path' },
--   	{ name = 'git' },
--   })
-- })
--
-- local cmp_autopairs = require('nvim-autopairs.completion.cmp')
-- cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' }}))

-- require'lspconfig'.cssls.setup{}
-- require'lspconfig'.html.setup{}
-- require'lspconfig'.jsonls.setup{}
-- require'lspconfig'.remark_ls.setup{}
-- require'lspconfig'.tsserver.setup{}
-- require'lspconfig'.vimls.setup{}
-- require'lspconfig'.yamlls.setup{}

require('lualine').setup {
  options = {
    theme = "nord"
    }
  }

EOF

" Plugin -- Emmet
let g:user_emmet_leader_key='<C-Z>'

" Plugin -- Renamer
" inoremap <silent><F2> <CMD>lua require('renamer').rename()<CR>
" nnoremap <silent><LEADER>rn <CMD>lua require('renamer').rename()<CR>
" vnoremap <silent><LEADER>rn <CMD>lua require('renamer').rename()<CR>

"                 __  ______    ____  ____  _____   _____________
"                /  |/  /   |  / __ \/ __ \/  _/ | / / ____/ ___/
"               / /|_/ / /| | / /_/ / /_/ // //  |/ / / __ \__ \
"              / /  / / ___ |/ ____/ ____// // /|  / /_/ /___/ /
"             /_/  /_/_/  |_/_/   /_/   /___/_/ |_/\____//____/


" Normal mode mappings

" Avoid unintentional switches to Ex mode
nnoremap Q q

" Copy until the end of line
noremap Y y$

" Do not move cursor on searching
nnoremap * *<C-o>

" Treat long lines as break lines (useful when moving around in them)
nnoremap j gj
nnoremap k gk

" Auto-format bad indent of copy/paste
nnoremap p p=`]

" Visually select current line without indentation
nnoremap vv ^vg_

" Move by paragraph -- https://www.reddit.com/r/vim/comments/458buq/moving_by_paragraph/
nnoremap <EXPR> { len(getline(line('.')-1)) > 0 ? '{+' : '{-'
nnoremap <EXPR> } len(getline(line('.')+1)) > 0 ? '}-' : '}+'

" Window resizing
nnoremap <M-h> 5<C-w><
nnoremap <M-j> 5<C-w>-
nnoremap <M-k> 5<C-w>+
nnoremap <M-l> 5<C-w>>

" 0 jumps to the first printable character
nnoremap 0 ^

" Leader mappings
nnoremap <silent><Leader>e :Files<CR>
nnoremap <silent><Leader>o :Buffers<CR>

" Swap lines
nnoremap <Leader>j ddp
nnoremap <Leader>k ddkP

" Visual mode mappings

" Do not lose visual selection while indenting
vnoremap < <gv
vnoremap > >gv

" Treat long lines as break lines (useful when moving around in them)
vnoremap j gj
vnoremap k gk

" Move to first printable charecter on current line
xnoremap 0 ^

" Keep cursor centered on these motions
nnoremap G Gzz
nnoremap n nzzzv
nnoremap N Nzzzv

" Command-mode mappings

" Readline-like mappings
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

"                  ______                 __  _
"                 / ____/_  ______  _____/ /_(_)___  ____  _____
"                / /_  / / / / __ \/ ___/ __/ / __ \/ __ \/ ___/
"               / __/ / /_/ / / / / /__/ /_/ / /_/ / / / (__  )
"              /_/    \__,_/_/ /_/\___/\__/_/\____/_/ /_/____/

" https://stackoverflow.com/questions/4292733/vim-creating-parent-directories-on-save
function s:MkNonExDir(file, buf)
	if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
		let dir=fnamemodify(a:file, ':h')
		if !isdirectory(dir)
			call mkdir(dir, 'p')
		endif
	endif
endfunction

augroup BWCCreateDir
	autocmd!
	autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

function! RenameFile()
	let old_name = expand('%')
	let new_name = input('New file name: ', expand('%'), 'file')
	if new_name != '' && new_name != old_name
		exec ':saveas ' . new_name
		exec ':silent !rm ' . old_name
		redraw!
	endif
endfunction
