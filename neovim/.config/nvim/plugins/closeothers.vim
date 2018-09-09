Plug 'schickling/vim-bufonly'

function! ConfigureClosothers()
    nnoremap <Leader>co :BufOnly
endfunction

call add(plugin_post_install_configurations, function("ConfigureClosothers"))
