syntax on           " enable syntax processing
set tabstop=2           " number of visual spaces per TAB
set softtabstop=2       " number of spaces in tab when editing
set laststatus=2
set expandtab           " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set showmatch           "show matching brackets
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set backspace=indent,eol,start
"Source .vimrc from the working directory.
set exrc
set encoding=utf-8      " required for YouCompleteMe
"set foldmethod=syntax
set noshowmode


" ////////////// PLug In Manager. Vim-Plug ////////////// 
call plug#begin('~/.vim/plugmanager')
" Code Completion
Plug 'https://github.com/Valloric/YouCompleteMe.git'
" Git Fugitive
Plug 'tpope/vim-fugitive'
Plug 'https://github.com/rhysd/vim-clang-format.git'
"Plug 'https://github.com/vim-syntastic/syntastic'
"- Fuzzy File Search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" - Status Line.
Plug 'itchyny/lightline.vim'
" - Nerd Tree.
Plug 'https://github.com/scrooloose/nerdtree.git'
" -Theme
Plug 'morhetz/gruvbox'
" - Commentor for Code.
Plug 'tomtom/tcomment_vim'
Plug 'https://github.com/terryma/vim-multiple-cursors'
" - Git Plugin to see which lines are added.
Plug 'https://github.com/airblade/vim-gitgutter'
" Vim Surround
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/shime/vim-livedown.git'
Plug 'tomtom/tcomment_vim'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } " distraction-free writing
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' } " focus tool. Good for presenting with vim

call plug#end()
" ////////////////////////////////////////////////////////

" ////////// Key Mappings /////////////////////////////////
let mapleader = "-"
" Key Mappings
noremap <c-d> dd
noremap <leader>t :tabnew<CR>
noremap <leader><tab> :tabnext<CR>
noremap <leader>f /
noremap <space> viw
map ; :Files<CR>
map <C-o> :NERDTreeToggle<CR>
map <C-m> :LivedownPreview<CR>
" Format Json
nnoremap <leader>fj :%!python -m json.tool<cr>
" Add Timestamp
nnoremap <leader>tt "=strftime("%c")<CR>P
" " Visual mode noremappings
noremap <c-u> <space>U
" always save .gv extension
autocmd BufNewFile *.gv :write
" CLang Format
let g:clang_format#detect_style_file=1
let g:clang_format#auto_format=1
" You Complete Me Config
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
" Git - Gutter
let g:gitgutter_terminal_reports_focus=0
" Livedown"
let g:livedown_autorun = 0
let g:livedown_open = 1
let g:livedown_port = 1337

"////////////////////////////  Abbreviations  ////////////////////////////////////////////
iabbrev waht what
iabbrev gvmail burnitcerberus@gmail.com
iabbrev cerb   CERBERUS
iabbrev auth Gaurav_Verma 


