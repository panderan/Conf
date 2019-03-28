" ------------ Genernal Configure ----------------------
set nu
set tabstop=4
set sw=4
set cc=80
set smartindent
set cursorline
set ignorecase
set laststatus=2
set mouse=n
set fdm=indent
set foldlevel=99
set expandtab
" set list lcs=tab:\|\ 
" set list lcs=nbsp:%,trail:-
set t_Co=256
colorscheme elflord
set nowrap
set backspace=indent,eol,start
syntax on
set nocompatible
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set encoding=utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
hi DiffAdd      ctermbg=darkgreen   ctermfg=white
hi DiffDelete   ctermbg=lightgray   ctermfg=black
hi DiffChange   ctermbg=darkyellow  ctermfg=black
hi DiffText     ctermbg=none        ctermfg=none
hi Cursor guibg=white guifg=Black
hi MatchParen ctermbg=12

" map > :vertical res
" map >> :resize
map > :bn<cr>
map < :bN<cr>
map t. :vertical res +5<cr>
map t, :vertical res -5<cr>
map t{ :.,.s/^    //<cr>

" This cmd working in Linux env.
map grepp :vimgrep /<c-r><c-w>/  `find . -path ./.git -prune -o -path ./build -prune -o -type f -print`<cr>:copen<cr><c-w>J
map grep  :vimgrep /<c-r><c-w>/  `find . -path ./.git -prune -o -path ./build -prune -o -type f -print`

"gVim --------------------------------------------------------------------------
" Winmanager -------------------------------------------------------------------
set runtimepath^=~/.vim/bundle/winmanager
set runtimepath^=~/.vim/bundle/bufexplorer.zip
map <c-w><c-p> :let winmanager_status=!winmanager_status<cr>:WMToggle<cr>
map <c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-b> :BottomExplorerWindow<cr>
map rwm :call Reset_winmanager_with(winmanager_status)<cr>
let g:winManagerWidth=40
let g:persistentBehaviour=0
let g:winmanager_status=0               "记录winmanager窗口是否打开

function Reset_winmanager_with(winmanager_status)
    if a:winmanager_status == 1
        :FirstExplorerWindow
        :vertical res 40
    endif
endfunc

" Tlist-plus -------------------------------------------------------------------
set runtimepath^=~/.vim/bundle/taglist-plus
map to :TlistOpen<cr>
map tc :call Toggle_tlist(winmanager_status)<cr><c-w>p<cr>
let Tlist_Use_Right_Window=1

function Toggle_tlist(winmanager_status)
    if a:winmanager_status == 0
        :TlistClose
    else
        :TlistClose
        :FirstExplorerWindow
        :vertical res 40
    endif
"
endfunc

" Cscope -----------------------------------------------------------------------
set runtimepath^=~/.vim/bundle/cscope.vim
" set cscopequickfix=s+,g+,d+,c+,t+,e+,f+,i+,a+
map csfs :cs find s <c-r><c-w><cr><c-o>:copen<cr>  " Find this C symbol
map csfg :cs find g <c-r><c-w><cr><c-o>:copen<cr>  " Find this deinition
map csfd :cs find d <c-r><c-w><cr><c-o>:copen<cr>  " Find functions called by this function
map csfc :cs find c <c-r><c-w><cr><c-o>:copen<cr>  " Find functions calling this function
map csft :cs find t <c-r><c-w><cr><c-o>:copen<cr>  " Find this text string
map csfe :cs find e <c-r><c-w><cr><c-o>:copen<cr>  " Find this egrep pattern
map csff :cs find f <c-r><c-w><cr><c-o>:copen<cr>  " Find this file
map csfi :cs find i <c-r><c-w><cr><c-o>:copen<cr>  " Find files #including this file
map csfa :cs find a <c-r><c-w><cr><c-o>:copen<cr>  " Find places where this symbol is assigned a value

let g:cs_root=""
let g:cs_cmd_adddb=""

command InitCs :call FBuildCscope()
command CsAddDB :call CsAddDB()
command CsClose :call CloseCs()

function FBuildCscope()
    let g:cs_root= getcwd()
    let g:cs_cmd_adddb='cs add ' . g:cs_root .'/cscope.out ' . g:cs_root
    let g:cs_cmd_build=':! cd ' . g:cs_root . ' && cscope -Rb'   
    exe g:cs_cmd_build
    exe g:cs_cmd_adddb
endfunc

function CsAddDB()
    let g:cs_root= getcwd()
    let g:cs_cmd_adddb='cs add ' . g:cs_root .'/cscope.out ' . g:cs_root
    exe g:cs_cmd_adddb
endfunc
function CloseCs()
    cs kill -1
endfunc

" Airline ----------------------------------------------------------------------
set runtimepath^=~/.vim/bundle/vim-airline
set runtimepath^=~/.vim/bundle/vim-airlinethemes
let g:airline_powerline_fonts = 0
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_left_sep = '>'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_right_sep = '<'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" Fugitive --------------------------------------------------------------------
set runtimepath^=~/.vim/bundle/vim-fugitive

" ------------ Vim-indent-guides Configure ----------------------------------
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_start_level = 1
" let g:indent_guides_guide_size = 1
" let g:indent_guides_tab_guides = 0

" ------------ Vim-GO Configure ---------------------------------------------
" let g:go_version_warning = 0

" NeoComplete -----------------------------------------------------------------
" set runtimepath^=~/.vim/bundle/neocomplete.vim
" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete


