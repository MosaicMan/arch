Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-lawrencium'
Plug 'mhinz/vim-signify'
Plug 'junegunn/gv.vim'

function! ConfigureVersionControl()
    let g:signify_vcs_list = [ 'git', 'hg' ]
    let g:signify_realtime = 1
    let g:signify_cursorhold_normal = 0 "If realtime is enabled set this to 0 to prevent autosave
    let g:signify_cursorhold_insert  = 0 "If realtime is enabled set this to 0 to prevent autosave
    nnoremap <silent> <leader>gs :Gstatus<CR>
    nnoremap <leader>gc :Git! checkout 
    nnoremap <leader>gv :GV
endfunction

call add(plugin_post_install_configurations, function("ConfigureVersionControl"))
