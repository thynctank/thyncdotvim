filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()
filetype on
filetype plugin indent on
syntax on

let g:snippets_dir = "~/.vim/snippets"

let g:vimshell_editor_command = "macvim"

color vilight
set hls is
set foldmethod=indent   
set foldnestmax=10  
set foldenable       
set foldlevel=2         
set nu
set backspace=indent,eol,start
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set smartcase
"ignore build directory (at Gannett)
set wildignore+=build/static/**,*.pyc,node_modules/**,bin/**,**/fonts/**,*.swf,**/images/**

set nobackup
set nowritebackup
set noswapfile
botright cwindow

"use ack instead of grep
set grepprg=ack\ --nogroup\ --column
set grepformat=%f:%l:%c:%m

let mapleader = ' '
map <D-t> :tabnew<CR>
map <C-l> :tabnext<CR>
map <C-h> :tabprevious<CR>
map <C-t> :NERDTreeTabsToggle<CR>
map <D-r> call ReloadAllSnippets()<CR>
map <C-c> :cw<CR>
map <D-]> :cn<CR>
map <D-[> :cp<CR>
map <Leader>s :VimShell<CR>

let g:session_autosave = 'yes'
let g:session_autoload = 'yes'
let g:session_default_to_last = 1
let g:ruby_conque_rspec_command='rspec'

autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby<CR>
autocmd BufNewFile,BufRead NERDTreeTabsOpen <CR>

augroup sparkup_types
  " Remove ALL autocommands of the current group.
  autocmd!
  " Add sparkup to new filetypes
  autocmd FileType mustache,php,htmldjango runtime! ftplugin/html/sparkup.vim
augroup END
