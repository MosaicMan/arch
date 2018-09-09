Plug 'bfredl/nvim-ipy'

function! ConfigureIPython()
    let g:ipy_celldef = ['^##', '^##']
    map <leader>x <Plug>(IPy-RunCell)
endfunction

call add(plugin_post_install_configurations, function("ConfigureIPython"))
