
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif


set nocompatible
set backspace=indent,eol,start
syntax on                                                                                                    
set guifont=Consolas:h14:cANSI
syntax enable              
set tabstop=4              
set softtabstop=4
set shiftwidth=4           
set expandtab              
set autoindent             
set cindent                
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
set ts=4
set nu                     
"colorscheme koehler       "set the colour 
colorscheme molokai 
set ruler                  
set cursorline            
set hlsearch
set showmatch
set cursorline

"C-Support configuration
runtime vimrc_example.vim
"
filetype plugin on





"Cscope plugin configuration
set cscopequickfix=s-,c-,d-,i-,t-,e-
autocmd FileType qf wincmd J
nmap <F9> :cn<cr>
nmap <F10> :cp<cr>


"Ctags confing
nmap <F4> :TagbarToggle<CR>
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_autofocus = 1
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let g:tagbar_width = 30 "设置taglist的宽度 
let g:tagbar_left = 1 "default right show
if &diff
    colorscheme midnight
else
    colorscheme molokai 
    autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
    autocmd VimEnter * wincmd w
endif

"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
autocmd VimEnter * wincmd w

"Tagbar NERDTree
map <F7> :NERDTreeToggle<CR>
map <S-w> :NERDTreeToggle<CR>
autocmd VimEnter * wincmd w
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  "当NERDTree为剩下的唯一窗口时自动关闭
let g:NERDTreeDirArrowExpandable = '▸' "设置树的显示图标
let g:NERDTreeDirArrowCollapsible = '▾'
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeWinSize=20
let g:NERDTreeWinPos='right'
"autocmd BufNew * wincmd p 


"生成目录索引文件命令
"ctags -R .
