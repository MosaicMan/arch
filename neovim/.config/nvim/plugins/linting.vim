Plug 'w0rp/ale'

function! ConfigureLinting()
    let g:ale_sign_error = '●'
    let g:ale_sign_warning = '.'
    let g:ale_fixers = {
    \   '*': ['remove_trailing_lines', 'trim_whitespace'],
    \   'javascript': ['standard'],
    \}
endfunction

call add(plugin_post_install_configurations, function("ConfigureLinting"))
