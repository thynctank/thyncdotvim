if has("gui_macvim")
  let g:solarized_termcolors=256
  set transparency=20
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
  set guifont=Lucida_Console:h10:b:cANSI:qDRAFT
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
endif

"custom cycles for cycle.vim
"(breaks on term vim)
call AddCycleGroup(['back', 'forward'])
call AddCycleGroup(['bk', 'fwd'])
call AddCycleGroup(['increment', 'decrement'])
call AddCycleGroup(['next', 'prev'])
call AddCycleGroup(['on', 'off'])
call AddCycleGroup(['enable', 'disable'])
call AddCycleGroup(['light', 'dark'])
call AddCycleGroup(['more', 'less'])
call AddCycleGroup(['_self', '_blank'])
call AddCycleGroup(['resolve', 'reject'])
call AddCycleGroup(['valid', 'invalid'])
call AddCycleGroup(['Valid', 'Invalid'])


