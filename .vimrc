" Open and close all the three plugins on the same time
nmap <F8> :TrinityToggleAll<CR>
" Open and close the srcexpl.vim separately
nmap <F9> :TrinityToggleSourceExplorer<CR>
" Open and close the taglist.vim separately
nmap <F10> :TrinityToggleTagList<CR>
" Open and close the NERD_tree.vim separately
nmap <F11> :TrinityToggleNERDTree<CR>
"vnoremap y "+y
vnoremap y "*y
vnoremap p "+p
"set mouse=r
set nu
noremap <F4> :set hlsearch! hlsearch?<CR>

"set clipboard=unnamed
set clipboard=unnamedplus

"search
set incsearch

"Full path
set statusline+=%F

"cursor line
set cursorline

"High light unwanted spaces in end of line
highlight ExtraWhitespace ctermbg=darkred guibg=darkcyan
autocmd BufEnter * if &ft != 'help' | match ExtraWhitespace /\s\+$/ | endif
autocmd BufEnter * if &ft == 'help' | match none /\s\+$/ | endif

"Set color scheme
"set t_Co=256
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" Mouse keep
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" OmniCppComplete

set nocp
filetype plugin on
set ofu=syntaxcomplete#Complete

set completeopt=menu,longest,menuone
let OmniCpp_NamespaceSearch = 2
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 
let OmniCpp_MayCompleteDot = 1   
let OmniCpp_MayCompleteArrow = 1 
let OmniCpp_MayCompleteScope = 1 
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
let OmniCpp_SelectFirstItem = 2
let OmniCpp_DisplayMode=1


au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
