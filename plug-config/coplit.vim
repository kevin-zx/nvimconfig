let g:copilot_filetypes = { 'xml': v:false,
      \'markdown': v:true,
      \'txt': v:false,
      \}

" ctrl + j to accept current suggestion
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

" ctrl + x Cycle to next suggestion
imap <C-x> <Plug>(copilot-next)






" default keymap for copilot
" ctrl+] Dismiss current suggestion
" alt + ] Cycle to the next suggestion
" alt + [ Cycle to the previous suggestion
