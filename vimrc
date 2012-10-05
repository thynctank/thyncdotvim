filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype on
filetype plugin indent on
syntax on

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

set nobackup
set nowritebackup
set noswapfile
botright cwindow


map <C-m> :MRU<CR>
map <D-t> :tabnew<CR>
map <C-l> :tabnext<CR>
map <C-h> :tabprevious<CR>
map <C-t> :NERDTreeTabsToggle<CR>
map <D-r> call ReloadAllSnippets()<CR>

let mapleader = ' '

let g:session_autosave = 'yes'
let g:session_autoload = 'yes'
let g:session_default_to_last = 1

autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby<CR>
autocmd BufNewFile,BufRead NERDTreeTabsOpen <CR>
