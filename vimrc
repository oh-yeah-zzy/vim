"配置ycm自动补全
"默认配置文件路径"
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"打开vim时不再询问是否加载ycm_extra_conf.py配置"
let g:ycm_confirm_extra_conf=0
set completeopt=longest,menu
"python解释器路径"
let g:ycm_path_to_python_interpreter='/usr/bin/python3'
"是否开启语义补全"
let g:ycm_seed_identifiers_with_syntax=1
"是否在注释中也开启补全"
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=2
"补全后自动关机预览窗口"
let g:ycm_autoclose_preview_window_after_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项"
let g:ycm_cache_omnifunc=0
"字符串中也开启补全"
let g:ycm_complete_in_strings = 1
"离开插入模式后自动关闭预览窗口"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif 
"上下左右键行为"
inoremap <expr> <Down>     pumvisible() ? '\<C-n>' : '\<Down>'
inoremap <expr> <Up>       pumvisible() ? '\<C-p>' : '\<Up>'
inoremap <expr> <PageDown> pumvisible() ? '\<PageDown>\<C-p>\<C-n>' : '\<PageDown>'
inoremap <expr> <PageUp>   pumvisible() ? '\<PageUp>\<C-p>\<C-n>' : '\<PageUp>'

    "显示行号
    set nu

    "设置tab为4个空格
    set ts=4
    set expandtab

    "开启高亮
    syntax on

    "突出显示当前行
    set cursorline

    "启用鼠标
    set mouse=a
    set selection=exclusive
    set selectmode=mouse,key

    "显示状态栏
    set laststatus=2

    ""智能补全
    set completeopt=longest,menu

    "显示光标当前位置
    set ruler

    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    Plugin 'gmarik/Vundle.vim'
    Plugin 'scrooloose/nerdtree' 
    Plugin 'Valloric/YouCompleteMe'

    call vundle#end()

    " NerdTree才插件的配置信息
    ""将F2设置为开关NERDTree的快捷键
    map <f2> :NERDTreeToggle<cr>
    ""修改树的显示图标
    let g:NERDTreeDirArrowExpandable = '+'
    let g:NERDTreeDirArrowCollapsible = '-'
    ""窗口位置
    let g:NERDTreeWinPos='left'
    ""窗口尺寸
    let g:NERDTreeSize=30
    ""窗口是否显示行号
    let g:NERDTreeShowLineNumbers=1
    ""不显示隐藏文件
    let g:NERDTreeHidden=0
