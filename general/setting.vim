set autowrite " 自动保存
set nu " 显示行号
set relativenumber " 相关行号
set cursorline " 当前行提示线
syntax enable " 启用高亮
" 设置行wrap
set wrap
" 在状态栏显示目前所执行的指令，未完成的指令片段亦会显示出来
set showcmd
" 设置宽菜单
set wildmenu
" 继承前一行的缩进
set autoindent


" update time 缩短 默认 4000ms
set updatetime=100
set timeoutlen=500 " By default timeoutlen is 1000 ms
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" 保证在文件相互跳转的时候，未保存文件不会造成影响
set hidden

" 设置光标样式
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" 搜索高亮
set hlsearch
" 执行取消高亮
exec "nohlsearch"
" 边搜索边高亮
set incsearch
" 忽略大小写
set ignorecase
" 搜索自动大小写
set smartcase
" 一直在文件下显示5行
"colorscheme snazzy
set scrolloff=5
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
" set font
let g:airline_powerline_fonts = 1
set guifont=DroidSansMono_Nerd_Font:h11
" 修复某些终端的配色问题
let &t_ut=''
set expandtab
set smarttab " Makes tabbing smarter will realize you have 2 vs 4
set tabstop=2
" 设置tab长度为2
set shiftwidth=2
" 设置自动缩进长度为2
set softtabstop=2
" 显示行尾的空格
set list
set listchars=tab:\|\ ,trail:▫
" 缩进的配置
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set laststatus=2
"set autochdir
" 关闭文件再打开后光标回到上一次的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
