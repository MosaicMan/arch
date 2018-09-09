Plug 'tpope/vim-eunuch'

function! ConfigureFsHelpers()
endfunction

call add(plugin_post_install_configurations, function("ConfigureFsHelpers"))
