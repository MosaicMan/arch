" Plug
filetype on

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'edkolev/promptline.vim'
Plug 'ryanoasis/vim-devicons'
"Plug 'scrooloose/nerdtree'
"Plug 'python-mode/python-mode'
Plug 'w0rp/ale'
Plug 'luochen1990/rainbow'
"Plug 'davidhalter/jedi-vim'
"Plug 'Valloric/YouCompleteMe'
Plug 'matze/vim-move'
"Plug 'vim-python/python-syntax'
"Plug 'kh3phr3n/python-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'chrisbra/Colorizer'
"Plug 'mhinz/vim-signify'
"Plug 'xolox/vim-colorscheme-switcher'
"Plug 'xolox/vim-misc'
"Plug 'rafi/awesome-vim-colorschemes'
Plug 'dylanaraps/wal.vim'
Plug 'plytophogy/vim-virtualenv'
Plug 'ludovicchabant/vim-lawrencium'
Plug 'tpope/vim-fugitive'
Plug 'ivanov/vim-ipython'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax/'
Plug 'Shougo/neco-vim/'
Plug 'zchee/deoplete-jedi'
Plug 'ludovicchabant/vim-gutentags'
Plug 'bfredl/nvim-ipy'
Plug 'carlitux/deoplete-ternjs'
call plug#end()

set nocompatible	" Vi Improved
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set number		" Absolute line number
set relativenumber	" Relative line numbers
set nowrap
set laststatus=2
set encoding=utf-8
set fillchars=vert:\ ,fold:-

" Tab settings per syntax
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype scss setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype sass setlocal ts=2 sw=2 sts=0 expandtab

" Enable syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Have Vim jump to the last position when" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Have Vim load indentation rules and plugins according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif


" Key mappings
imap jk <Esc>
vmap jk <Esc>
let mapleader = ","
nmap <C-Up> ddkP
nmap <C-Down> ddp
nmap <space> :

"Tabs(Buffers)
nnoremap th :bfirst<CR>
nnoremap tl :blast<CR>
nnoremap tj :bprevious<CR>
nnoremap tk :bnext<CR>

colorscheme qliowal
"colorscheme wal
"colorscheme qlio

" Rainbow Parentheses
let g:rainbow_active = 1

" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

" nvim-ipy
let g:ipy_celldef = ['^##', '^##']
"Or you can also use let g:ipy_celldef = '^##'
map <silent> <F6> <Plug>(IPy-RunCell)

" ALE
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
"let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" NERDTree
"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1
"let NERDTreeAutoDeleteBuffer = 1
"let NERDTreeIgnore = ['\.pyc$', '\.sqlite3', '\.db']

"nnoremap <Leader>f :NERDTreeToggle<Enter>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Airline
"let g:airline_theme='minimalist'
let g:airline_theme='wal'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1
let g:airline#enable_branch = 1
let g:airline_powerline_fonts = 1

" Promptline
let g:promptline_preset = {
        \'a' : [ promptline#slices#host() ],
        \'b' : [ promptline#slices#user() ],
        \'c' : [ promptline#slices#cwd() ],
        \'y' : [ promptline#slices#python_virtualenv(), promptline#slices#vcs_branch({'hg':1}) ],
        \'warn' : [ promptline#slices#last_exit_code() ]}

" YouCompleteMe
" Compile with install.py --all --system-clang in Arch Linux
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

"" Jedi
let g:jedi#show_call_signatures = 2
let g:jedi#auto_vim_configuration = 0
let g:jedi#show_call_signatures_delay = 0

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Vim-JSX
let g:jsx_ext_required = 0

" Python-Mode
let g:pymode_options = 0
let g:pymode_options_max_line_length = 120
let g:pymode_options_colorcolumn = 0
let g:pymode_folding = 0

