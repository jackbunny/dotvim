" Neccesary for pathogen MUST BE FIRST
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocp
filetype plugin on

" F9 For Tagbar and :Tree activates NERDTree
noremap <silent> <F9> :TagbarToggle<CR>  
cnoreabbrev Tree NERDTree

"OmniCpp COnfig
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype (i.e. parameters) in popup window
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set completeopt=menu,menuone
" Necessary for CTags
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
set tags+=./tags

let g:proj_flags="imstg" " Flag to allow F12 to open Project
