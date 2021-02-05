source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/setting.vim
source $HOME/.config/nvim/keys/mappings.vim

" Plugin Configuration
source $HOME/.config/nvim/plug-config/nerdcommenter.vim
source $HOME/.config/nvim/plug-config/vim-go.vim
source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
source $HOME/.config/nvim/plug-config/coc/coc.vim




" 这里写可能随着环境改变而改变的配置
" python3 host 指定 需要先执行 python3 -m pip install pynvim
if has('unix')
  let g:python3_host_prog="/usr/bin/python3"
elseif has('win32')
  let g:python3_host_prog="C:\Users\zhang\AppData\Local\Programs\Python\Python37\python.exe"
elseif has('mac')
  let g:python3_host_prog="/usr/bin/python3"
endif

