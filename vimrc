filetype off
autocmd!
runtime ./bundle/vim-pathogen/autoload/pathogen.vim
runtime ./macros/matchit.vim
call pathogen#infect()
call pathogen#helptags()
filetype on
filetype plugin indent on
syntax on

let g:snippets_dir = "~/vimfiles/snippets"
"let g:snippets_dir = "~/.vim/snippets"
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_extensions = ['tag', 'mixed']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.?(git|hg|svn|branches|node_modules|complexity|coverage|3rdparty|target)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:vimwiki_list = [{'path': '~/notes', 'syntax': 'markdown', 'ext': '.markdown', 'index': 'HomePage'}]

"airline options
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#ycm#error_symbol = 'E:'

"syntastic options
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let g:syntastic_auto_jump=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1

"ycm options
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

"solarized options
let g:solarized_termcolors = 16
let g:solarized_termtrans = 1
let g:solarized_visibility = "normal"
let g:solarized_contrast = "normal"

"vim-angular options
let g:angular_source_directory='src/app'
let g:angular_test_directory='src/app'

"let g:syntastic_html_tidy_ignore_errors = [" proprietary attribute \"ng-"]
"let syntastic_mode_map = {'passive_filetypes': ['html']}
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_enable_signs=1

if !has("gui_running")
  set term=xterm-256color
endif

set laststatus=2
set background=dark
set completeopt-=preview
"colorscheme solarized
let g:airline_theme='solarized'
colorscheme vilight

"persistent undo
set undofile

"autoread for when timestamp changes on vcs checkout or modification outside editor
set autoread

set visualbell

"Keep current window at 130 chars when split
set winwidth=80

set hls is
set foldmethod=indent   
set foldnestmax=10  
set foldlevel=0         
set nofoldenable
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
set infercase
set spell spelllang=en_us
set cursorline cursorcolumn

"set wildignore+=*/node_modules/**/*,*/bower_components/**/*,*/dist/**/*,*/tags/**/*,*/branches/**/*,*/complexity/**/*,*/coverage/**/*,*/3rdparty/**/*
set wildignore+=*\\node_modules\\**\\*,*\\bower_components\\**\\*,*\\dist\\**\\*,*\\tags\\**\\*,*\\branches\\**\\*,*\\complexity\\**\\*,*\\coverage\\**\\*,*\\3rdparty\\**\\*,*\\target\\**\\*,*\\angular-1*\\**\\*

set nobackup
set nowritebackup
set noswapfile

"use ack instead of grep
set grepprg=ack\ --nogroup\ --column
set grepformat=%f:%l:%c:%m

let mapleader = " "
"reload vimrc, highlight syntax, clear pattern match highlighting
map <D-r> :source $MYVIMRC<CR>:source $MYGVIMRC<CR>:filetype detect<CR>:noh<CR>:call ReloadAllSnippets()<CR>
map <D-t> :tabnew<CR>
map <C-l> :tabnext<CR>
map <C-h> :tabprevious<CR>
map <C-c> :cw 25<CR>
map <D-]> :cn<CR>
map <D-[> :cp<CR>
map <C-b> :TagbarToggle<CR>
map <C-j> :TagbarOpenAutoClose<CR>
map <Leader>m :CtrlPMRUFiles<CR>
map <Leader>t :CtrlPTag<CR>
map <Leader>s :VimShellBufferDir<CR>
map <Leader>w :call ToggleWrap()<CR>
map <Leader>f :call ToggleFold()<CR>
map T :tabnew<CR>
"map H 0
"map L $

"ensure very magic search by default
noremap / /\v

command! Gpull :Git pull
command! Gpush :Git push
command! Gadd :Git add %:p
command! Gbranch :Git branch

command! Reload :e!
cabbrev ee Reload

command! ReallyWrite :w!
cabbrev ww ReallyWrite

command! ReallyQuit :q!
cabbrev qq ReallyQuit

command! Cdhere :cd %:p:h
cabbrev cdh Cdhere

command! ReloadAllSnippets :call ReloadAllSnippets()
cabbrev rs ReloadAllSnippets 

command! Tidy :!tidy -q -i "%" -m

let g:session_autosave = 'yes'
let g:session_autoload = 'yes'
let g:session_default_to_last = 1
let g:ruby_conque_rspec_command='rspec'



"let b:match_words .=',if:endif,block:endblock'

autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby<CR>


"file extensions for gf
autocmd BufRead,BufRead *.rb set suffixesadd=.rb
autocmd BufRead,BufRead *.py set suffixesadd=.py
autocmd BufRead,BufRead *.coffee set suffixesadd=.coffee
autocmd BufRead,BufRead *.js set suffixesadd=.js
autocmd BufRead,BufRead *.html set suffixesadd=.html
autocmd BufRead,BufRead *.md set ft=markdown

"uses system clipboard as default register to yank to, paste from etc
set clipboard=unnamed
