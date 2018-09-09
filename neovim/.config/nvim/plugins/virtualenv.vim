Plug 'plytophogy/vim-virtualenv'

function! ConfigureVirtualenv()
    let g:virtualenv_auto_activate = 1
    let g:virtualenv_stl_format = '%n '
endfunction

call add(plugin_post_install_configurations, function("ConfigureVirtualenv"))
