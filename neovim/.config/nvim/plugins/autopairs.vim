Plug 'jiangmiao/auto-pairs'

function! ConfigureAutopairs()
    let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}
    au Filetype html,htmldjango let b:AutoPairs = {'<':'>', '(':')', '[':']', "'":"'", '"':'"', '`':'`'}
endfunction

call add(plugin_post_install_configurations, function("ConfigureAutopairs"))
