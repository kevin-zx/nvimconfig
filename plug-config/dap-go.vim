lua require('dap-go').setup()

nmap <F5> :lua require('dap').continue()<CR>
nmap <F10> :lua require('dap').step_over()<CR>
nmap <F11> :lua require('dap').step_into()<CR>
nmap <F12> :lua require('dap').step_out()<CR>
nmap <leader>bp :lua require('dap').toggle_breakpoint()<CR>
nmap <leader>bpc :lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition:'))<CR>
nmap <leader>bpl :lua require('dap').set_breakpoint(nil,nil,vim.fn.input('Breakpoint log message:'))<CR>
nmap <leader>dr :lua require('dap').repl.open()<CR>

nmap <silent> <leader>td :lua require('dap-go').debug_test()<CR>
