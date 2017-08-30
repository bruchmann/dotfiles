" Plugin -- FullScreen

if has('win32') && has('gui_running')
  map <F11> <ESC>:call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 0)<CR>
endif
