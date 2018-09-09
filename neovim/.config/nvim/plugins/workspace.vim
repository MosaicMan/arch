Plug 'thaerkh/vim-workspace'

function! ConfigureSessions()
    let g:workspace_session_disable_on_args = 1
    let g:workspace_session_name = 'Workspace.vim'
    let g:workspace_autosave = 0
    let g:workspace_autosave_always = 0
endfunction

call add(plugin_post_install_configurations, function("ConfigureSessions"))
