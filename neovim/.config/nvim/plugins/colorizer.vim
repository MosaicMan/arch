Plug 'chrisbra/Colorizer'

function! ConfigureColorizer()
    let g:colorizer_auto_filetype='css,scss,sass,html'
    let g:colorizer_colornames = 0
endfunction

call add(plugin_post_install_configurations, function("ConfigureColorizer"))
