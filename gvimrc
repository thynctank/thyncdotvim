"set go=""
"au GUIEnter * IndentGuidesToggle

if has("gui_macvim")
  set transparency=10
	set fuopt+=maxhorz
	set guifont=Menlo_Regular:h18
	set fu
  set toolbar=""
else
  map <F11> <Esc>:call libcallnr("bundle/gvimfullscreen/gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
  autocmd GUIEnter * call libcallnr("bundle/gvimfullscreen/gvimfullscreen.dll", "ToggleFullScreen", 0)
	set guifont=Lucida_Console:h12:cANSI
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
endif

