Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

function! ConfigureRanger()
    let g:ranger_replace_netrw = 1
    let g:no_plugin_maps = 1
    nnoremap <silent> <Leader>ct :Bclose<CR>
endfunction

call add(plugin_post_install_configurations, function("ConfigureRanger"))
