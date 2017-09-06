set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/vundle/

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic' "syntax and errors highlighter
Plugin 'tpope/vim-fugitive' "Git wrapper for vim
Plugin 'kien/ctrlp.vim' " Fuzzy file search for vim buffers
Plugin 'godlygeek/tabular'
Plugin 'rking/ag.vim'
Plugin 'janko-m/vim-test'
Plugin 'easymotion/vim-easymotion' 
Plugin 'Yggdroot/indentLine'

" Colorschemes
Plugin 'flazz/vim-colorschemes'

"
" Editing
"
Plugin 'tpope/vim-surround'

"
" Navigation
"
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'


call vundle#end() 
filetype plugin indent on " load filetype plugins/indent settings
syntax on                      " enable syntax
 
" Setting up Vundle - the vim plugin bundler end


" user custom settings
let mapleader = ','
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing
set shiftwidth=2 " shift '>>' is 2 spaces
set expandtab " tabs are spaces
set number " show line numbers
set showcmd " show command in bottom bar
set showmatch " highlight matching pairs
set incsearch " show search matches while searching
set nohlsearch " no search with highlighting
set autoindent " auto indent next line with current
"set smartindent " indent relative to style of file
colorscheme molokai


" NerdTree settings
map <leader>n :NERDTreeToggle<CR>


" CtrlP setting
let g:ctrlp_map = '<leader>f'
let g:ctrlp_user_command = {
  \ 'types': {
  \   1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others']
  \ },
  \ 'fallback': 'ag %s -l --nocolor -g ""'
  \ }

" vim-test settings
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" easy-motion settings
map <Leader><Leader> <Plug>(easymotion-prefix)

" Indent  setting
let g:indentLine_char = '¦'

