Plug 'nathanaelkane/vim-indent-guides'

function! ConfigureIndentGuides()
    let g:indent_guides_auto_colors = 0
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=233
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=234
endfunction

call add(plugin_post_install_configurations, function("ConfigureIndentGuides"))
