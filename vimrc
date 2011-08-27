"Configurations
set tabstop=2 "set tabstop to 2 spaces
set shiftwidth=2 "indent level
set expandtab
set guifont=Consolas "set font to Consolas
set nowrap "do not wrap text
au GUIEnter * simalt ~x "maximize gvim window on startup
set ic "perform case insensitive searches
set smartindent "auto indent new lines
set nobackup "do not leave a .swp file behind
set noswapfile "do not create a .swp file
set number "show line numbers
colorscheme rails "use the rails color scheme

"Mappings
map ,n :NERDTreeToggle<CR>
map ,rm :Rmodel<CR>
map ,rc :Rcontroller<CR>
map ,rv :Rview<CR>
map ,rs :Rserver!<CR>

map <C-h> <C-W>h
imap <Esc><C-h> <C-W>h
map <C-j> <C-W>j
imap <Esc><C-j> <C-W>j
map <C-k> <C-W>k
imap <Esc><C-k> <C-W>k
map <C-l> <C-W>l
imap <Esc><C-l> <C-W>l
map <C-x> <C-W>x
imap ;; <Esc>
