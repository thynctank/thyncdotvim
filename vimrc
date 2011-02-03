call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

color vilight
set ic  
set hls is
set si
set foldmethod=syntax   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
set nu
set backspace=indent,eol,start
set nowrap
set tabstop=2
set shiftwidth=2
set autoindent
set ignorecase
set smartcase

filetype plugin on

syntax on

