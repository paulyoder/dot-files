" **** Vundle ****
set nocompatible 
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'

filetype plugin indent on "required
" **** /Vundle ****


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

"Mappings
let mapleader = ","
map <Leader>n :NERDTreeToggle<CR>
map <Leader>rm :Rmodel<CR>
map <Leader>rc :Rcontroller<CR>
map <Leader>rv :Rview<CR>
map <Leader>rs :Rserver!<CR>
map <Leader>ta :w<CR>:call RunCurrentTest()<CR>
map <Leader>tl :w<CR>:call RunCurrentLineInTest()<CR>
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

cmap tt Tab

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Test-running stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RunCurrentTest()
  let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\|_test.rb\)$') != -1
  if in_test_file
    call SetTestFile()

    if match(expand('%'), '\.feature$') != -1
      call SetTestRunner("!cucumber")
      exec g:bjo_test_runner g:bjo_test_file
    elseif match(expand('%'), '_spec\.rb$') != -1
      call SetTestRunner("!rspec")
      exec g:bjo_test_runner g:bjo_test_file
    else
      call SetTestRunner("!ruby -Itest")
      exec g:bjo_test_runner g:bjo_test_file
    endif
  else
    exec g:bjo_test_runner g:bjo_test_file
  endif
endfunction

function! SetTestRunner(runner)
  let g:bjo_test_runner=a:runner
endfunction

function! RunCurrentLineInTest()
  let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\|_test.rb\)$') != -1
  if in_test_file
    call SetTestFileWithLine()
  end

  exec "!rspec" g:bjo_test_file . ":" . g:bjo_test_file_line
endfunction

function! SetTestFile()
  let g:bjo_test_file=@%
endfunction

function! SetTestFileWithLine()
  let g:bjo_test_file=@%
  let g:bjo_test_file_line=line(".")
endfunction

function! CorrectTestRunner()
  if match(expand('%'), '\.feature$') != -1
    return "cucumber"
  elseif match(expand('%'), '_spec\.rb$') != -1
    return "rspec"
  else
    return "ruby"
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
