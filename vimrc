" **** Vundle ****
set nocompatible 
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'rking/ag.vim'
Bundle 'vim-scripts/matchit.zip'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'briancollins/vim-jst'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'thoughtbot/vim-rspec'
Bundle 'jgdavey/tslime.vim'

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
