Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'

function! ConfigureFzf()
    autocmd! FileType fzf
    autocmd  FileType fzf set laststatus=0 noshowmode noruler nonumber norelativenumber | autocmd BufLeave <buffer> set laststatus=2 showmode ruler
    nnoremap <silent> <leader>k :Buffers<CR>
    nnoremap <silent> <leader>j :Files<CR>
    nnoremap <silent> <leader>l :Lines<CR>
endfunction

call add(plugin_post_install_configurations, function("ConfigureFzf"))
