"Configurations
set tabstop=2 "set tabstop to 2 spaces
set shiftwidth=2 "indent level
set expandtab
set nowrap "do not wrap text
set ic "perform case insensitive searches
set smartindent "auto indent new lines
set nobackup "do not leave a .swp file behind
set noswapfile "do not create a .swp file
set number "show line numbers
set ignorecase "search ignores case
set incsearch "search as you type
colorscheme railscasts "use the rails color scheme
syntax enable "enable syntax highlighting
set guioptions-=T "remove toolbar on top
let g:CommandTMaxHeight=20 "set height of CommandT window to 20
set hlsearch "highlight all instances of currently searched word

"Mappings
map ,n :NERDTreeToggle<CR>
map ,rm :Rmodel<CR>
map ,rc :Rcontroller<CR>
map ,rv :Rview<CR>
map ,rs :Rserver!<CR>
map ,t :CommandT<CR>
vmap a :Align =><CR>

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
