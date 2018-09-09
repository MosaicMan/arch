Plug 'luochen1990/rainbow'

function! ConfigureRainbow()
    let g:rainbow_active = 1
endfunction

call add(plugin_post_install_configurations, function("ConfigureRainbow"))
