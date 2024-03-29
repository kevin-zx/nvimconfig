" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'fatih/vim-go'

" Plugin options
Plug 'nsf/gocode'

" Initialize plugin system
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" cs'" 将单引号转化为双引号
" S{ 将文本使用大括号包围
Plug 'tpope/vim-surround'
" <CR> 选中当前块 两次选中更大块
Plug 'gcmt/wildfire.vim'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'preservim/nerdcommenter'
Plug 'connorholyday/vim-snazzy'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Bookmarks
Plug 'kshenoy/vim-signature'
" Undo Tree
Plug 'mbbill/undotree/'
Plug 'ryanoasis/vim-devicons'

" which key
Plug 'liuchengxu/vim-which-key'

" startify project manager
Plug 'mhinz/vim-startify'

" quickscope
Plug 'unblevable/quick-scope'

" ranger
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" gruvbox
Plug 'morhetz/gruvbox'

" dart vim
Plug 'dart-lang/dart-vim-plugin'

" translate
Plug 'voldikss/vim-translator'

" git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" copilot
Plug 'github/copilot.vim'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
