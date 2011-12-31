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
colorscheme rails "use the rails color scheme
set guioptions-=T "remove toolbar on top

"Mappings
map ,n :NERDTreeToggle<CR>
map ,rm :Rmodel<CR>
map ,rc :Rcontroller<CR>
map ,rv :Rview<CR>
map ,rs :Rserver!<CR>

vnoremap < <gv
vnoremap > >gv
map <Space> <PageDown>
map <S-Space> <PageUp>

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
vmap jk <Esc>
