if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

syntax on                                                                                                    
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
colorscheme koehler        
set ruler                  
set cursorline             
"call pathogen#infect()
"call pathogen#helptags()
 
"Tagbar confing
map <F8> :TagbarToggle<CR>
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_autofocus = 1
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Left_Windo =1             "在左侧窗口中显示taglist窗口    
let Tlist_WinWidt =28                   "设置taglist的宽度              
 
"Tagbar NERDTree
map <F7> :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>
