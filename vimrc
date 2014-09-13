" **** Vundle ****
set nocompatible 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle (required)
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'rking/ag.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'briancollins/vim-jst'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'thoughtbot/vim-rspec'
Plugin 'jgdavey/tslime.vim'
Plugin 'tpope/vim-endwise'
Plugin 'wincent/command-t'

call vundle#end()         "required
filetype plugin indent on "required
" **** /Vundle ****

runtime macros/matchit.vim

"Configurations
set tabstop=2              "set tabstop to 2 spaces
set shiftwidth=2           "indent level
set expandtab
set nowrap                 "do not wrap text
set ic                     "perform case insensitive searches
set smartindent            "auto indent new lines
set nobackup               "do not leave a .swp file behind
set noswapfile             "do not create a .swp file
set number                 "show line numbers
set ignorecase             "search ignores case
set incsearch              "search as you type
set backspace=2            "make backspace work correctly
colorscheme railscasts     "use the rails color scheme
syntax enable              "enable syntax highlighting
set guioptions-=T          "remove toolbar on top
let g:CommandTMaxHeight=20 "set height of CommandT window to 20
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")' "run rspec tests in another tmux pane

"Mappings
let mapleader = ","
map <Leader>n :NERDTreeToggle<CR>
map <Leader>rm :Rmodel<CR>
map <Leader>rc :Rcontroller<CR>
map <Leader>rv :Rview<CR>
map <Leader>rs :Rserver!<CR>
map <Leader>ta :w<CR>:call RunAllSpecs()<CR>
map <Leader>tf :w<CR>:call RunCurrentSpecFile()<CR>
map <Leader>tn :w<CR>:call RunNearestSpec()<CR>
map <Leader>tl :w<CR>:call RunLastSpec()<CR>
map <Leader>g :! grunt<CR>
map <Leader>gt :! grunt test<CR>
map <Leader>w :w<CR>
imap <Leader>w <ESC>:w<CR>
nnoremap <silent> <Leader>f :CommandT<CR>

vnoremap < <gv
vnoremap > >gv

map <C-h> <C-W>h
imap <Esc><C-h> <C-W>h
map <C-j> <C-W>j
imap <Esc><C-j> <C-W>j
map <C-k> <C-W>k
imap <Esc><C-k> <C-W>k
map <C-l> <C-W>l
imap <Esc><C-l> <C-W>l
map <C-x> <C-W>x
imap jk <Esc>

cmap ,t Tab

" Mouse Scrolling
set mouse=a

"Macros
" @c
" before
"   body { background: red; }
" after
"   body {
"     background: red;
"     
"   }
let @c='^f{wijkf}ijk0dwkO'
