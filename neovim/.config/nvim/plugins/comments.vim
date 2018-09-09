Plug 'tpope/vim-commentary'

function! ConfigureComments()
endfunction

call add(plugin_post_install_configurations, function("ConfigureComments"))
