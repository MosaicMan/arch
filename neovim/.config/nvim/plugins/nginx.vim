Plug 'chr4/nginx.vim'

function! ConfigureNginx()
    au BufRead,BufNewFile *nginx*.j2 set filetype=nginx
endfunction

call add(plugin_post_install_configurations, function("ConfigureNginx"))
