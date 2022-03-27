" Do not use vi-compatible mode
set nocompatible

" Self-explonentary
set encoding=utf-8
syntax on

" Set $MYVIMRC path to this file -- simulates symlinking on Windows
let $MYVIMRC = "~/dotfiles/.vim/vimrc"

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
set runtimepath+=~/dotfiles/.vim

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

source plugin/settings.vim
source plugin/mappings/command.vim
source plugin/mappings/normal.vim
source plugin/mappings/visual.vim
source plugin/mappings/leader.vim
