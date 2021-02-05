" vim-go 配置
" vim-go 快捷键
" build快捷键
autocmd FileType go nmap <leader>gb  <Plug>(go-build)

nmap <leader>gr :!go run %<cr>
" test快捷键
autocmd FileType go nmap <leader>gt  <Plug>(go-test)

let g:go_fmt_command = "goimports"
