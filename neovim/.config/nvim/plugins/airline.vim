Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons' "Must load after airline
Plug 'dylanaraps/wal.vim'
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'

function! ConfigureAirline()
    let g:airline#extensions#tabline#formatter = 'unique_tail'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#virtualenv#enabled = 1
    let g:airline#extensions#csv#enabled = 1
    let g:airline#enable_branch = 1
    let g:airline_powerline_fonts = 1
    let g:airline_theme='wal'
    let g:promptline_preset = {
            \'a' : [ promptline#slices#host() ],
            \'b' : [ promptline#slices#user() ],
            \'c' : [ promptline#slices#cwd() ],
            \'y' : [ promptline#slices#python_virtualenv(), promptline#slices#vcs_branch({'hg':1}) ],
            \'warn' : [ promptline#slices#last_exit_code() ]}
endfunction

call add(plugin_post_install_configurations, function("ConfigureAirline"))
