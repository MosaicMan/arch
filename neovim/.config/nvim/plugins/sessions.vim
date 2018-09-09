Plug 'xolox/vim-session' | Plug 'xolox/vim-misc'

function! ConfigureSessions()
    let g:session_directory = '~/.local/share/nvim/sessions'
    let g:session_autoload = 'no'
    let g:session_default_to_last = 1
    let g:session_autosave = 'yes'
    let g:session_command_aliases = 1
    nnoremap <leader>so :OpenSession 
    nnoremap <leader>sc :CloseSession<CR>
endfunction

call add(plugin_post_install_configurations, function("ConfigureSessions"))
