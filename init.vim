call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" " On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" " Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go',{ 'do': ':GoInstallBinares' }
"
" " Plugin options
Plug 'nsf/gocode'
" Plug 'mdempsky/gocode'
"
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" " Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
"
" " Initialize plugin system
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" ncm2 Requirements nvim-0.2.2+ python3 nvim-yarp
" pip3 install pynvim
"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'
"Plug 'ncm2/ncm2-go'
call plug#end()


" vim set option

" 自动保存
set autowrite
" 显示行号
set nu
" 前缀键
let mapleader=","
" 设置tab长度为4
set tabstop=4
" 设置自动缩进长度为4
set shiftwidth=4
" 继承前一行的缩进
set autoindent


" vim-go 配置
" vim-go 快捷键
" build快捷键
autocmd FileType go nmap <leader>gb  <Plug>(go-build)
" test快捷键
autocmd FileType go nmap <leader>gt  <Plug>(go-test)




" ncm2 配置
" autocmd BufEnter * call ncm2#enable_for_buffer()
"autocmd BufEnter * call ncm2#enable_for_buffer()
"set shortmess+=c
"inoremap <c-c> <ESC>
"let ncm2#popup_delay=5
"let ncm2#complete_length = [[1,1]]
"let g:ncm2#matcher = 'substrfuzzy'
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>" 
" noinsert 不会自动插入
" menuone 一个提示项也弹出窗口
" noselect 不自动选中
" longest 选中提示后自动提示最长的提示
" preview 显示额外的补全信息
" set completeopt=noinsert,menuone,noselect,longest,preview
" 



" coc 配置
" 给cmd命令更多的空间显示内容
set cmdheight=13
" update time 缩短 默认 4000ms
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
	" Recently vim can merge signcolumn and number column into one
    set signcolumn=number
else
    set signcolumn=yes
endif
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" 使用tab键切换提示
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
endif



" 这里写可能随着环境改变而改变的配置
" python3 host 指定 需要先执行 python3 -m pip install pynvim
let g:python3_host_prog="/user/bin/python3"



