" ======= 自定义快捷键 ======= "
" 设置着色模式和字体
colorscheme molokai
set guifont=Monaco:h11

" AirLine             彩色状态栏
let g:airline_theme = 'dark'                " 设置主题


" 使用GUI界面时的设置
" 启动时自动最大化窗口
au GUIEnter * simalt ~x
"winpos 20 20            " 指定窗口出现的位置，坐标原点在屏幕左上角
"set lines=20 columns=90 " 指定窗口大小，lines为高度，columns为宽度
set guioptions+=c        " 使用字符提示框
set guioptions-=m        " 隐藏菜单栏
set guioptions-=T        " 隐藏工具栏
set guioptions-=L        " 隐藏左侧滚动条
set guioptions-=r        " 隐藏右侧滚动条
set guioptions-=b        " 隐藏底部滚动条
set showtabline=0        " 隐藏Tab栏
set cursorline           " 高亮突出当前行
" set cursorcolumn       " 高亮突出当前列


" 设置文件编码和文件格式
" set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" set fileencoding=utf-8
" set encoding=utf-8
" set termencoding=gbk
" set fenc=utf-8
" 
" set fileformat=unix
" set fileformats=unix,mac,dos
" source $VIMRUNTIME/delmenu.vim
" source $VIMRUNTIME/menu.vim
" language messages zh_CN.utf-8




" Ctrl + ]            多选择跳转
nmap <c-]> g<c-]>
vmap <c-]> g<c-]>

" Ctrl + U            简化全能补全按键
imap <c-u> <c-x><c-o>

" Ctrl + H            光标移当前行行首[插入模式]、切换左窗口[Normal模式]
imap <c-h> <esc>I
map <c-h> <c-w><c-h>

" Ctrl + J            光标移下一行行首[插入模式]、切换下窗口[Normal模式]
imap <c-j> <esc><down>I
map <c-j> <c-w><c-j>

" Ctrl + U            光标移上一行行尾[插入模式]、切换上窗口[Normal模式]
imap <c-u> <esc><up>A
map <c-u> <c-w><c-k>

" Ctrl + L            光标移当前行行尾[插入模式]、切换右窗口[Normal模式]
imap <c-l> <esc>A
map <c-l> <c-w><c-l>

" Alt  + H            光标左移一格
imap <m-h> <left>

" Alt  + J            光标下移一格
imap <m-j> <down>

" Alt  + K            光标上移一格
imap <m-k> <up>

" Alt  + L            光标右移一格
imap <m-l> <right>

" \c                  复制至公共剪贴板
vmap <leader>c "+y

" \a                  复制所有至公共剪贴板
nmap <leader>a <esc>ggVG"+y<esc>

" \v                  从公共剪贴板粘贴
imap <leader>v <esc>"+p
nmap <leader>v "+p
vmap <leader>v "+p

" \bb                 按=号对齐代码 [Tabular插件]
nmap <leader>bb :Tab /=<cr>

" \bn                 自定义对齐    [Tabular插件]
nmap <leader>bn :Tab /

" \nt                 打开/关闭文件树窗口，在左侧栏显示 [NERDTree插件]
nmap <leader>nt :NERDTree<cr>

" \tl                 打开/关闭Tags窗口，在右侧栏显示 [Tagbar插件]
nmap <leader>tl :TagbarToggle<cr><c-w><c-l>

" \fe                 打开文件编码窗口，在右侧栏显示 [FencView插件]
nmap <leader>fe :FencView<cr>

" \ff                 打开文件搜索窗口，在最下方显示 [CtrlP插件]
nmap <leader>ff :CtrlPMixed<cr>

" \mp                 生成Promptline脚本文件，用于个性化终端操作 [Promptline插件 ]
nmap <leader>mp :!rm ~/backup/.promptline<cr><esc>:PromptlineSnapshot ~/backup/.promptline airline<cr>

" \gi                 开启或关闭GitGutter [GitGutter插件]
nmap <leader>gi :GitGutterToggle<cr>:GitGutterSignsToggle<cr>:GitGutterLineHighlightsToggle<cr>

" \gd                 打开Git文件对比模式 [竖直] [GitGutter插件]
nmap <leader>gd :Gdiff<cr>

" \gs                 打开Git文件对比模式 [水平] [GitGutter插件]
nmap <leader>gs :Gsdiff<cr>

" \rb                 一键去除所有尾部空白
imap <leader>rb <esc>:let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<cr>
nmap <leader>rb :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<cr>
vmap <leader>rb <esc>:let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<cr>

" \rm                 一键去除字符
imap <leader>rm <esc>:%s/<c-v><c-m>//g<cr>
nmap <leader>rm :%s/<c-v><c-m>//g<cr>
vmap <leader>rm <esc>:%s/<c-v><c-m>//g<cr>

" \rt                 一键替换全部Tab为空格
func! RemoveTabs()
    if &shiftwidth == 2
        exec '%s/	/  /g'
    elseif &shiftwidth == 4
        exec '%s/	/    /g'
    elseif &shiftwidth == 6
        exec '%s/	/      /g'
    elseif &shiftwidth == 8
        exec '%s/	/        /g'
    else
        exec '%s/	/ /g'
    end
endfunc

imap <leader>rt <esc>:call RemoveTabs()<cr>
nmap <leader>rt :call RemoveTabs()<cr>
vmap <leader>rt <esc>:call RemoveTabs()<cr>

" \ev                 编辑当前所使用的Vim配置文件
nmap <leader>ev <esc>:e $MYVIMRC<cr>

" ======= 编译 && 运行 && 模板 ======= "

" 编译并运行
func! Compile_Run_Code()
    exec 'w'
    if &filetype == 'asm'
        if g:isWIN
            exec '!nasm -f win64 %:t && gcc -m64 -o %:r %:r.obj && %:r.exe'
        elseif g:isMAC
            exec '!nasm -f macho64 %:t && ld -macosx_version_min 10.7.0 -lSystem -o %:r %:r.o && ./%:r'
        else
            exec '!nasm -f elf64 %:t && gcc -nostdlib -o %:r %:r.o && ./%:r'
        endif
    elseif &filetype == 'c'
        if g:isWIN
            exec '!gcc -Wall -std=c11 -o %:r %:t && %:r.exe'
        else
            exec '!clang -Wall -std=c11 -o %:r %:t && ./%:r'
        endif
    elseif &filetype == 'cpp'
        if g:isWIN
            exec '!g++ -Wall -std=c++14 -o %:r %:t && %:r.exe'
        else
            exec '!clang++ -Wall -std=c++14 -o %:r %:t && ./%:r'
        endif
    elseif &filetype == 'd'
        if g:isWIN
            exec '!dmd -wi %:t && del %:r.obj && %:r.exe'
        else
            exec '!dmd -wi %:t && rm %:r.o && ./%:r'
        endif
    elseif &filetype == 'rust'
        if g:isWIN
            exec '!rustc %:t && %:r.exe'
        else
            exec '!rustc %:t && ./%:r'
        endif
    elseif &filetype == 'go'
        if g:isWIN
            exec '!go build %:t && %:r.exe'
        else
            exec '!go build %:t && ./%:r'
        endif
    elseif &filetype == 'nim'
        if g:isWIN
            exec '!nim c %:t && %:r.exe'
        else
            exec '!nim c %:t && ./%:r'
        endif
    elseif &filetype == 'vala'
        if g:isWIN
            exec '!valac %:t && %:r.exe'
        else
            exec '!valac %:t && ./%:r'
        endif
    elseif &filetype == 'objc'
        if g:isMAC
            exec '!clang -fobjc-arc -framework Foundation %:t -o %:r && ./%:r'
        endif
    elseif &filetype == 'swift'
        if g:isMAC
            exec '!swift %:t'
        endif
    elseif &filetype == 'java'
        exec '!javac %:t && java %:r'
    elseif &filetype == 'cs'
        if g:isWIN
            exec '!csc %:t && %:r.exe'
        else
            exec '!mcs %:t && mono %:r.exe'
        endif
    elseif &filetype == 'erlang'
        exec '!escript %:t'
    elseif &filetype == 'scheme' || &filetype == 'racket'
        exec '!racket -fi %:t'
    elseif &filetype == 'lisp'
        exec '!sbcl --load %:t'
    elseif &filetype == 'ocaml'
        if g:isWIN
            exec '!ocamlc -o %:r.exe %:t && %:r.exe'
        else
            exec '!ocamlc -o %:r %:t && ./%:r'
        endif
    elseif &filetype == 'haskell'
        if g:isWIN
            exec '!ghc -o %:r %:t && %:r.exe'
        else
            exec '!ghc -o %:r %:t && ./%:r'
        endif
    elseif &filetype == 'lua'
        exec '!lua %:t'
    elseif &filetype == 'perl'
        exec '!perl %:t'
    elseif &filetype == 'php'
        exec '!php %:t'
    elseif &filetype == 'python'
        exec '!python %:t'
    elseif &filetype == 'ruby'
        exec '!ruby %:t'
    elseif &filetype == 'groovy'
        exec '!groovy %:t'
    elseif &filetype == 'kotlin'
        exec '!kotlinc-jvm %:t -include-runtime -d %:r.jar && java -jar %:r.jar'
    elseif &filetype == 'scala'
        exec '!scala %:t'
    elseif &filetype == 'clojure'
        exec '!clojure -i %:t -r'
    elseif &filetype == 'fsharp'
        if g:isWIN
            exec '!fsc %:t && %:r.exe'
        else
            exec '!fsharpc %:t && ./%:r'
        endif
    elseif &filetype == 'elixir'
        exec '!elixir %:t'
    elseif &filetype == 'julia'
        exec '!julia %:t'
    elseif &filetype == 'dart'
        exec '!dart %:t'
    elseif &filetype == 'haxe'
        exec '!haxe -main %:r --interp'
    elseif &filetype == 'io'
        exec '!io %:t'
    elseif &filetype == 'r'
        exec '!Rscript %:t'
    elseif &filetype == 'coffee'
        exec '!coffee -c %:t && node %:r.js'
    elseif &filetype == 'typescript'
        exec '!tsc %:t && node %:r.js'
    elseif &filetype == 'ls'
        exec '!lsc -c %:t && node %:r.js'
    elseif &filetype == 'javascript'
        exec '!node %:t'
    elseif &filetype == 'sh'
        exec '!bash %:t'
    endif
endfunc

" \rr        一键保存、编译、运行
imap <leader>rr <esc>:call Compile_Run_Code()<cr>
nmap <leader>rr :call Compile_Run_Code()<cr>
vmap <leader>rr <esc>:call Compile_Run_Code()<cr>













" ======= 设置NERDTree打开时的目录 ======= "
cd ~
map <F2> :NERDTreeToggle<CR>
" open Nerd Tree in folder of file in active buffer
map <Leader>nt :NERDTree %:p:h<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") |q| endif


"================快捷换行==================
nmap <c-up> ddkP
nmap <c-down> ddp
vmap <c-up> xkP`[V`]
vmap <c-down> xp`[V`]


" ======= 使nerd-tree 能够copy文件 ======= " 
let g:NERDTreeCopyCmd = 'cp -r '



"============取消spell检查，中文内容下不会再有波浪线========="
autocmd VimEnter * set nospell


"============show colorbar in vim for python======== 
"pymode max length ,default is 80 
"let g:pymode_options_max_line_length=80 
autocmd FileType python set colorcolumn=80


"======= 设置当文件被外部改变的时侯自动读入文件 ======= "  
if exists("&autoread")
    set autoread
endif

"============easymotion shortcuts=======
let g:EasyMotion_leader_key = '<Space>'


"=========LeaderF shortcut========
"ctrlp的替代插件
"default setting:
"let g:Lf_ShortcutF = '<leader>f'
"let g:Lf_ShortcutB = '<leader>b'
nmap <leader>q <ESC>:LeaderfMru<CR>
vmap <leader>q <ESC>:LeaderfMru<CR>
imap <leader>q <ESC>:LeaderfMru<CR>


"=========插入模式或者命令模式下的快捷键设置=======
"<Esc>代表Escape键:<CR>代表Enter键；<D>代表Command键。
"Alt键可以使用<M-key>或<A-key>来表示。<C>代表Ctrl.
"对于组合键，可以用<C-Esc>代表Ctrl-Esc；使用<S-F1>表示Shift-F1.
"在插入模式,设置ctrl+\保存文件 
:map! <C-\> <ESC>:w<CR>


"======在光标后面插入当前日期和时间
:map <F3> a<C-R>=strftime("%c")<CR><Esc>


"===================在插入模式使用paste和copy功能=============
set pastetoggle=<F10>
inoremap <C-v> <F10><C-r>+<F10>
vnoremap <C-c> "+y
set clipboard=unnamedplus


"==========txtbrowser============="
syntax on
filetype plugin on 
au BufEnter *.txt setlocal ft=txt

 
" ======= taglist的设置,供txtbrowser使用 ======= " 
" TagList options
let Tlist_Close_On_Select = 1 "close taglist window once we selected something
let Tlist_Exit_OnlyWindow = 1 "if taglist window is the only window left, exit vim
let Tlist_Show_Menu = 1 "show Tags menu in gvim
let Tlist_Show_One_File = 1 "show tags of only one file
let Tlist_GainFocus_On_ToggleOpen = 1 "automatically switch to taglist window
let Tlist_Highlight_Tag_On_BufEnter = 1 "highlight current tag in taglist window
let Tlist_Process_File_Always = 1 "even without taglist window, create tags file, required for displaying tag in statusline
let Tlist_Use_Right_Window = 1 "display taglist window on the right
let Tlist_Display_Prototype = 1 "display full prototype instead of just function name

let g:Tlist_Ctags_Cmd = 'C:/ctags.exe'

nnoremap <F5> :TlistToggle<cr>
nnoremap <F6> :TlistShowPrototype<cr>
nnoremap tlu :TlistUpdate<cr>


set statusline=[%n]\ %<%f\ %([%1*%M%*%R%Y]%)\ \ \ [%{Tlist_Get_Tagname_By_Line()}]\ %=%-19(\LINE\ [%l/%L]\ COL\ [%02c%03V]%)\ %P



"===================markdown设置========
let g:table_mode_corner="|"
let g:vim_markdown_toc_autofit = 1



"============open file in browser=========
nnoremap <Leader>ch :update<Bar>silent ! start %:p<CR>



"=============添加作者信息=================
"进行版权声明的设置
"添加或更新头
map <F4> :call TitleDet()<cr>'s
function AddTitle()
    call append(2,"#============================================#")
    call append(3,"#")
    call append(4,"# Author: pengxuan - pengxuan@yun-ji.cn")
    call append(5,"# Last modified: ".strftime("%Y-%m-%d %H:%M"))
    call append(6,"# Filename: ".expand("%:t"))
    call append(7,"# Description: ")
    call append(8,"#")
    call append(9,"#===========================================#")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf
"更新最近修改时间和文件名
function UpdateTitle()
    normal m'
    execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction
"判断前10行代码里面，是否有Last modified这个单词，
"如果没有的话，代表没有添加过作者信息，需要新添加；
"如果有的话，那么只需要更新即可
function TitleDet()
    let n=1
    "默认为添加
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddTitle()
endfunction


"============设置自动缩进=========
set foldmethod=indent


"============ruby============
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

"========粘贴======
set clipboard=