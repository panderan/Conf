" 基本设置
set nu              " 显示行号
set cc=80           " 高亮列
set smartindent     " 自动缩进
set cursorline      " 高亮光标行
set ignorecase      " 忽略大小写
set laststatus=2    " 始终有状态栏
set mouse=n         " 在普通模式下可用鼠标
set fdm=indent      " 相同缩进为同一个折叠段
set foldlevel=99    " 折叠嵌套层数
set t_Co=256        " 使用256色
set nowrap          " 不换行
set backspace=indent,eol,start  " 可以使用退格键
set autochdir       " 自动切换目录
set hlsearch        " 搜索高亮
syntax on           " 语法高亮
set nocompatible    " 不兼容 vi
let mapleader = "\<space>"

" 4-Space 风格
set tabstop=4       " 显示Tab为4个空格
set shiftwidth=4    " 换行时自动缩进为4个空格
set expandtab       " 键入时，使用Space代替Tab

“ 8-Tab 风格
set tabstop=8
set noexpandtab

"" 高亮设置
hi DiffAdd      ctermbg=34    ctermfg=white
hi DiffDelete   ctermbg=174   ctermfg=black
hi DiffChange   ctermbg=22    ctermfg=none
hi DiffText     ctermbg=34    ctermfg=none
hi Cursor guibg=white guifg=Black

"" 键盘映射
nmap <leader>qf :copen<CR><C-W>J

"" gVIM 界面设置
" set guioptions-=r           " 隐藏滚动条
" set guioptions-=R           " 隐藏滚动条
" set guioptions-=l           " 隐藏滚动条
" set guioptions-=L           " 隐藏滚动条
" set guioptions-=T           " 隐藏工具栏
" set lines=40 columns=180    " 默认行列数
" set guifont=Monaco:h9       " 设置字体和大小


" 插件管理设置
filetype on    " 关闭文件类型自动检测
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'ryanoasis/vim-devicons'
Plugin 'majutsushi/tagbar'
Plugin 'neoclide/coc.nvim'
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-conflicted'
Plugin 'brookhong/cscope.vim'
Plugin 'haolongzhangm/auto_update_cscope_ctags_database'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'morhetz/gruvbox'
call vundle#end()

" Color Scheme
colorscheme gruvbox " 主题
set background=dark

" Airline 设置
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#coc#enabled = 1            " enable/disable coc integration

" Coc
nmap <leader>rn <Plug>(coc-rename) 
nmap <leader>rw <Plug>(coc-cursors-word)
nmap <leader>cl <Plug>(coc-terminal-toggle)

" Tagbar
nmap <leader>tb :TagbarToggle<CR>

" NERDTree 设置
let NERDTreeChDirMode=1
map <leader>fm :NERDTree<CR>
map <leader>ff :NERDTreeFocus<CR>

" CtrlP
map <C-b> :CtrlPBuffer<cr>
map <C-f> :CtrlP<cr>

" DevIcons
let g:webdevicons_conceal_nerdtree_brackets = 1

" Cscope
nmap <leader>js :cs find s <C-R><C-W><CR> " Find this C symbol
nmap <leader>jg :cs find g <C-R><C-W><CR> " Find this definition 
nmap <leader>jd :cs find d <C-R><C-W><CR> " Find functions called by this function
nmap <leader>jc :cs find c <C-R><C-W><CR> " Find functions calling this function 
nmap <leader>jt :cs find t <C-R><C-W><CR> " Find this text string 
nmap <leader>je :cs find e <C-R><C-W><CR> " Find this egrep pattern 
nmap <leader>jf :cs find f <C-R><C-W><CR> " Find this file 
nmap <leader>ji :cs find i <C-R><C-W><CR> " Find files #including this file 
nmap <leader>ja :cs find a <C-R><C-W><CR> " Find places where this symbol is assigned a value 

let g:Auto_update_cscope_ctags_debug_log = 1
