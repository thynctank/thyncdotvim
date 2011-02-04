set go=""
au GUIEnter * IndentGuidesToggle

if has("gui_macvim")
	set fuopt+=maxhorz
	set guifont=Menlo_Regular:h18
	macmenu &File.New\ Tab key=<nop>
	map <D-t> :CommandT<CR>
	set fu
	let jslint_command_options = "-conf ~/.vim/javascriptlint_options -nofilelisting -nocontext -nosummary -nologo -process"
else
	set guifont=Lucida_Console:h14:cANSI
	map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleScreen", 0)<CR>
	au GUIEnter * call libcallnr("gvimfullscreen.dll", "ToggleScreen", 0)
endif

