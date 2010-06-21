"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" GENERAL EDITOR SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs and Spaces
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set noexpandtab
" Backspace as usual
set backspace=indent,eol,start


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" VIM-SPECIFIC SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=300

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Statusline
set laststatus=2
set statusline=\ %<%F[%{&ff}]%h%w%m%r%y%=L:%l/%L\ (%p%%)\ C:%c\ 
autocmd InsertEnter * hi statusline ctermbg=154 ctermfg=235
autocmd InsertLeave * hi statusline ctermbg=166 ctermfg=235
hi statusline ctermbg=166 ctermfg=235

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" BINDINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>
" Fast Tab-switching
map <leader>p :tabprevious<cr>
map <leader>n :tabnext<cr>
" Fast editing of the .vimrc
map <leader>e :tabe! ~/.vim/vimrc<CR>
" also edit shell config fast
map <leader>z :tabe! ~/.zshrc<CR>
" Nerdtree Bindings
map <leader>t :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" PLUGINS & PATHOGEN
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" extend runtimepath, include pathogen
set runtimepath=$HOME/.vim,$HOME/.vim/bundle/vim-pathogen,$VIMRUNTIME
"source all plugins within bundle
call pathogen#runtime_append_all_bundles() 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" UNSORTED
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim/vimrc

let t_Co = 256
colorscheme lucius
syntax on
set number
set hlsearch
