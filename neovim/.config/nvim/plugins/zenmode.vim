Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

function! ConfigureZenmode()
    function! s:goyo_enter()
        Limelight
    endfunction

    function! s:goyo_leave()
        Limelight!
        colorscheme qliowal
    endfunction

    autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

endfunction

call add(plugin_post_install_configurations, function("ConfigureZenmode"))
