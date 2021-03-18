source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/setting.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim


" Plugin Configuration
source $HOME/.config/nvim/plug-config/nerdcommenter.vim
source $HOME/.config/nvim/plug-config/vim-go.vim
source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
source $HOME/.config/nvim/plug-config/coc/coc.vim
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/ranger.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/gruvbox.vim
source $HOME/.config/nvim/plug-config/coc-flutter.vim
source $HOME/.config/nvim/plug-config/translator.vim




" 这里写可能随着环境改变而改变的配置
" python3 host 指定 需要先执行 python3 -m pip install pynvim
if has('mac')
  let g:python3_host_prog="/usr/bin/python3"
elseif has('win32')
  let g:python3_host_prog="C:\Users\zhang\AppData\Local\Programs\Python\Python37\python.exe"
elseif has('unix')
  let g:python3_host_prog="/usr/bin/python3"
endif

