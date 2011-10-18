call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

if has("gui_macvim")
  let g:snippets_dir = $VIM . "/.vim/snippets"
else
  let g:snippets_dir = $VIM."/vimfiles/snippets"
endif

color vilight
set hls is
set foldmethod=indent   
set foldnestmax=10  
set foldenable       
set foldlevel=2         
set nu
set backspace=indent,eol,start
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set ignorecase
set smartcase

map <C-t> :tabnew
map <C-l> :tabnext
map <C-h> :tabprevious

filetype plugin on
syntax on
