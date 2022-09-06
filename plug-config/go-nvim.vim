autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
lua require('go').setup()
