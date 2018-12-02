" General settings
set nocompatible	" Vi Improved
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set number		" Absolute line number
set relativenumber	" Relative line numbers
set nowrap
set laststatus=2
set encoding=utf-8
set fillchars=vert:\ ,fold:―
set list
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮
set splitbelow
set splitright
set undofile
set undodir=~/.local/share/nvim/undo
let mapleader = ","
filetype plugin on
colorscheme qliowal

" Automatically load changes made outside of the program
set updatetime=1000
set autoread
au CursorHold * if expand('%') !=# '[Command Line]' | checktime | call feedkeys("lh") | endif

"Start terminals in insert mode
au TermOpen * startinsert

" Tab stops
set ts=4 sw=4 sts=0 expandtab
autocmd Filetype html setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype htmldjango setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype scss setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype sass setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype vim setlocal ts=4 sw=4 sts=0 expandtab

" Enable syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Load indentation rules and plugins according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
