"set go=""
"au GUIEnter * IndentGuidesToggle

if has("gui_macvim")
  set transparency=15
	set fuopt+=maxhorz
	set guifont=Menlo_Regular:h16
	set fu
  set toolbar=""

  function! ToggleFull()
    if &fullscreen == 1
      set nofullscreen
    else
      set fullscreen
    end
  endfunction

else
	set guifont=Lucida_Console:h12:cANSI
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
endif

