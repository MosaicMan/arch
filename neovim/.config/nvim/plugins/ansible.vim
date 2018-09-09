Plug 'pearofducks/ansible-vim'

function! ConfigureAnsible()
    let g:ansible_unindent_after_newline = 1
    let g:ansible_attribute_highlight = "ob"
    let g:ansible_name_highlight = 'd'
    let g:ansible_extra_keywords_highlight = 1
    let g:ansible_normal_keywords_highlight = 'Constant'
    let g:ansible_with_keywords_highlight = 'Constant'
    let g:ansible_template_syntaxes = { '*.rb.j2': 'ruby' }
    au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible
endfunction

call add(plugin_post_install_configurations, function("ConfigureAnsible"))
