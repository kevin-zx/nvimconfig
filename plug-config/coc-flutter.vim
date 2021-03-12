xmap <leader>fa  <Plug>(coc-codeaction-selected)
nmap <leader>fa  <Plug>(coc-codeaction-selected)


noremap <LEADER>fl :CocCommand flutter.dev.openDevLog<CR>
" noremap <LEADER>fh :noa w<CR>:CocCommand flutter.dev.hotRestart<CR>
noremap <LEADER>fr :noa w<CR>:CocCommand flutter.run<CR>
noremap <LEADER>fh :noa w<CR>:CocCommand flutter.dev.hotReload<CR>

let g:flutter_run_args = "--flavor dev"
let g:flutter_default_device = 'iPhone\ 11\ Pro'
