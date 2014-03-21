set go=""
"au GUIEnter * IndentGuidesToggle

if has("gui_macvim")
  set transparency=10
	set fuopt+=maxhorz
	set guifont=Menlo_Regular:h18
	set fu
  set toolbar=""
  let jslint_command_options = "-conf ~/.vim/javascriptlint_options -nofilelisting -nocontext -nosummary -nologo -process"
else
	set guifont=Lucida_Console:h14:cANSI
  let jslint_command_options = "-conf \"C:\\Program\ Files (x86)\\Vim\\vimfiles\\javascriptlint_options\" -nofilelisting -nocontext -nosummary -nologo -process"
endif

