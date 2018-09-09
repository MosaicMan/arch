" Install Plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

let g:plugin_post_install_configurations = []

" Run Plug
call plug#begin('~/.local/share/nvim/plugged')
source ~/.config/nvim/plugins/markdown.vim
source ~/.config/nvim/plugins/completion.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/virtualenv.vim
source ~/.config/nvim/plugins/nginx.vim
source ~/.config/nvim/plugins/colorizer.vim
source ~/.config/nvim/plugins/easymotion.vim
source ~/.config/nvim/plugins/ranger.vim
source ~/.config/nvim/plugins/autopairs.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/zenmode.vim
source ~/.config/nvim/plugins/closeothers.vim
source ~/.config/nvim/plugins/javascript.vim
source ~/.config/nvim/plugins/versioncontrol.vim
source ~/.config/nvim/plugins/sessions.vim
source ~/.config/nvim/plugins/linting.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/comments.vim
source ~/.config/nvim/plugins/ansible.vim
source ~/.config/nvim/plugins/rainbow.vim
source ~/.config/nvim/plugins/indentguides.vim
source ~/.config/nvim/plugins/fshelpers.vim
source ~/.config/nvim/plugins/ipython.vim
source ~/.config/nvim/plugins/csv.vim
call plug#end()

" Run Plugin Configurations
for F in plugin_post_install_configurations
    call F()
    unlet F
endfor

