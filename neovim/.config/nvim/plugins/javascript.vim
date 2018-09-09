Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

function! ConfigureJavascript()
    let g:jsx_ext_required = 0
endfunction

call add(plugin_post_install_configurations, function("ConfigureJavascript"))
