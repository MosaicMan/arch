Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax/' "Autocomplete from syntax files
Plug 'Shougo/neco-vim/' "Autocomplete for vim files
Plug 'carlitux/deoplete-ternjs' "Autocomplete for javascript files
Plug 'zchee/deoplete-jedi' "Autocomplete for python files
Plug 'SirVer/ultisnips'
Plug 'bfredl/nvim-ipy'

function! ConfigureCompletion()

    let g:deoplete#enable_at_startup = 1
    let g:tern#filetypes = ['jsx', 'javascript.jsx']
    let g:jedi#show_call_signatures = 2
    let g:jedi#auto_vim_configuration = 0
    let g:jedi#show_call_signatures_delay = 0
    inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
    autocmd InsertLeave,CompleteDone * if pumvisible() == 0 && expand('%') !=# '[Command Line]'| pclose | endif

    let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
    let g:UltiSnipsExpandTrigger="<Leader>."
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

endfunction

call add(plugin_post_install_configurations, function("ConfigureCompletion"))
