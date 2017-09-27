set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/vundle

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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'

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
" https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
" https://dockyard.com/blog/2013/10/22/vim-buffers
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
set autoread " auto reload file if contents changed
"set smartindent " indent relative to style of file
set splitbelow " open new panes to the right
set splitright " open new panes to the bottom
colorscheme molokai
" settings for moving windows
noremap <C-J> <C-W>w
noremap <C-K> <C-W>W
noremap <C-L> <C-W>l
noremap <C-H> <C-W>h

" NerdTree settings
map <leader>n :NERDTreeToggle<CR>

" vim-airline-theme settings
let g:airline#extensions#tabline#enabled = 1

" gitgutter settings
set signcolumn=yes

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

" User settings
" Indent  setting
let g:indentLine_char = '¦'

