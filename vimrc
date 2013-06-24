filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
runtime macros/matchit.vim
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
set foldlevel=0         
set nu
set backspace=indent,eol,start
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set ignorecase
set smartcase
set infercase
"ignore build directory (at Gannett)
set wildignore+=*/build/static/**,*.pyc,*/node_modules/**,*/bin/**,**/fonts/**,*.swf,**/images/**,**/django-relux/**
set path=~/projects/**

set nobackup
set nowritebackup
set noswapfile

"use ack instead of grep
set grepprg=ack\ --nogroup\ --column
set grepformat=%f:%l:%c:%m

let mapleader = " "
"reload vimrc, highlight syntax, clear pattern match highlighting
map <D-r> :source $MYVIMRC<CR>:filetype detect<CR>:noh<CR>:IndentGuidesEnable<CR>
map <D-t> :tabnew<CR>
map <C-l> :tabnext<CR>
map <C-h> :tabprevious<CR>
map <C-t> :NERDTreeTabsToggle<CR>
map <D-/> :CtrlPMRUFiles<CR>
map <C-s> call ReloadAllSnippets()<CR>
map <C-c> :cw 25<CR>
map <D-]> :cn<CR>
map <D-[> :cp<CR>
map <C-b> :TagbarToggle<CR>
map <C-j> :TagbarOpen fj<CR>
"map <PageDown> :bnext<CR>
"map <PageUp> :bprevious<CR>
"map <Home> :bfirst<CR>
"map <End> :blast<CR>
map <Leader>s :VimShell<CR>
map <Leader>w :cclose<CR>

command! Gpull :Git pull
command! Gpush :Git push
command! Gadd :Git add %:p
command! Gbranch :Git branch

command! Cdhere :cd %:p:h
cabbrev cdh Cdhere

let g:session_autosave = 'yes'
let g:session_autoload = 'yes'
let g:session_default_to_last = 1
let g:ruby_conque_rspec_command='rspec'

"let b:match_words .=',if:endif,block:endblock'

autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby<CR>
autocmd BufNewFile,BufRead NERDTreeTabsOpen <CR>


"file extensions for gf
autocmd BufRead,BufRead *.rb set suffixesadd=.rb
autocmd BufRead,BufRead *.py set suffixesadd=.py
autocmd BufRead,BufRead *.coffee set suffixesadd=.coffee
autocmd BufRead,BufRead *.js set suffixesadd=.js
autocmd BufRead,BufRead *.html set suffixesadd=.html

augroup sparkup_types
  " Remove ALL autocommands of the current group.
  autocmd!
  " Add sparkup to new filetypes
  autocmd FileType mustache,php,htmldjango runtime! ftplugin/html/sparkup.vim
augroup END

