" Basic Key Mappings

" leader key
let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>

" 当前行变为页面中心
" noremap = nzz
" noremap - Nzz

" 空格回车 取消高亮
noremap <LEADER><CR> :nohlsearch<CR>


" 键位映射
" noremap n h
" noremap u k
" noremap e j
" noremap i l
" noremap U 5k
" noremap E 5j
" noremap N 7h
" noremap I 7l
" noremap z e

" N key: go to the start of the line
noremap <C-l> $
noremap <C-h> ^
" inoremap <C-k> <ESC>0i

" I key: go to the end of the line
" noremap <C-l> $
" ===
" === Insert Mode Cursor Movement
" ===
inoremap <C-a> <ESC>A
inoremap <C-o> <ESC>o

" 括号自动补全
" inoremap ( ()<ESC>i
" inoremap [ []<ESC>i
" inoremap " ""<ESC>i
" inoremap ' ''<ESC>i
" inoremap { {}<Left><CR><CR><Up><TAB>

" windows ctrl-v confict so use <LEADER>v replace
" noremap <LEADER>v <C-v>
" Faster in-line navigation
" noremap W 5w
" noremap B 5b

" noremap k i
" noremap K I
" noremap l u

" ===
" === Command Mode Cursor Movement
" ===
" cnoremap <C-a> <Home>
" cnoremap <C-e> <End>
" cnoremap <C-p> <Up>
" cnoremap <C-n> <Down>
" cnoremap <C-b> <Left>
" cnoremap <C-f> <Right>
" cnoremap <M-b> <S-Left>
" cnoremap <M-w> <S-Right>
" R 编译vim配置文件
map R :source $MYVIMRC<CR>
" 将s操作质控 important 如果不设置 si等会失效
map s <nop>
" 大写 S 写入文件
map S :w<CR>
" 大写 Q 退出
map Q :q<CR>
" 将冒号映射为分号避免按错
" map ; :

"  右左上下分屏
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

" 切换右 左 下 上分屏
map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j


" 使用 ctrl + 方向键调整窗口大小
" if has('mac')
  " nnoremap <silent> <C-K> :resize -2<cr>
  " nnoremap <silent> <C-J> :resize +2<cr>
  " nnoremap <silent> <C-H> :vertical resize -2<cr>
  " nnoremap <silent> <C-L> :vertical resize +2<cr>
" else
  nnoremap <silent> <C-up>    :resize -2<cr>
  nnoremap <silent> <C-down>  :resize +2<cr>
  nnoremap <silent> <C-left>  :vertical resize -2<cr>
  nnoremap <silent> <C-right> :vertical resize +2<cr>
" endif
" 上下左右键对多窗口进行大小调整
" map <up> :res +5<CR>
" map <down> :res -5<CR>
" map <left> :vertical resize-5<CR>
" map <right> :vertical resize+5<CR>

" 设置tabe页
map tu :tabe<CR>
" 切换到左标签
map <silent> th :-tabnext<CR>
" 切换到右标签
map <silent> tl :+tabnext<CR>
" move current tab to left
noremap <silent> tmh :-tabmove<CR>
" move current tab to right
noremap <silent> tml :+tabmove<CR>

" 将左右分屏改为上下分屏
" map sv <C-w>t<C-w>H
" 将上下分屏改为左右分屏
" map sh <C-w>t<C-w>K

" ===
" === Searching
" ===
noremap - N
noremap = n

" Better indenting 选中模式下 按> < 可以进行缩进
vnoremap < <gv
vnoremap > >gv

" esc
inoremap jk <Esc>
inoremap kj <Esc>

" 使用ctrl c 来代替 escape
nnoremap <silent> <C-c> <Esc>

" 使用tab移动到下一个buffer
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

" 让选定的行上下移动
" shift j 上移一行
" shift k 下移一行
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" 更快的移动
nnoremap J 5j
nnoremap H 7h
nnoremap K 5k
nnoremap L 5l

" 每次保存都会清除行尾空格
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
    autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END

vmap * y:let @/ = @"<CR>
