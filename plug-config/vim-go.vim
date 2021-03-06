" vim-go 配置
" vim-go 快捷键
" build快捷键
autocmd FileType go nmap <leader>gb  <Plug>(go-build)

nmap <leader>gr :!go run %<cr>
" test快捷键
autocmd FileType go nmap <leader>gt  <Plug>(go-test)

nmap <leader>gf :GoFillStruct <CR><Plug>(go-test)

let g:go_fmt_command = "goimports"
let g:go_doc_keywordprg_enabled = 0
