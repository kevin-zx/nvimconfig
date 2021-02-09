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
" noremap <C-n> 0
" inoremap <C-k> <ESC>0i

" I key: go to the end of the line
" noremap <C-i> $
" ===
" === Insert Mode Cursor Movement
" ===
inoremap <C-a> <ESC>A

" 括号自动补全
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
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
map ; :

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

" 上下左右键对多窗口进行大小调整
" map <up> :res +5<CR>
" map <down> :res -5<CR>
" map <left> :vertical resize-5<CR>
" map <right> :vertical resize+5<CR>

" 设置tabe页
map tu :tabe<CR>
" 切换到左标签
map th :-tabnext<CR>
" 切换到右标签
map tl :+tabnext<CR>
" move current tab to left
noremap tmh :-tabmove<CR>
" move current tab to right
noremap tml :+tabmove<CR>

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

" 使用 ctrl + 方向键调整窗口大小
nnoremap <silent> <C-Up>    :resize -2<CR>
nnoremap <silent> <C-Down>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>

