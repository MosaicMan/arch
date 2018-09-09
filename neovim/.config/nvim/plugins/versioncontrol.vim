Plug 'tpope/vim-fugitive' | Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'ludovicchabant/vim-lawrencium'
Plug 'mhinz/vim-signify'

function! ConfigureVersionControl()
    let g:signify_vcs_list = [ 'git', 'hg' ]
    let g:signify_realtime = 0
    nnoremap <silent> <leader>gs :Gstatus<CR>
    nnoremap <leader>gc :Git! checkout 
    nnoremap <leader>gv :Gitv
endfunction

call add(plugin_post_install_configurations, function("ConfigureVersionControl"))
