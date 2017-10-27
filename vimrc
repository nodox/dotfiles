set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim " personal computer
set rtp+=/usr/local/opt/fzf " use fzf fuzzy finder
" set rtp+=~/.vim/bundle/vundle " work computer

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic' "syntax and errors highlighter
Plugin 'tpope/vim-fugitive' "Git wrapper for vim
Plugin 'godlygeek/tabular'
Plugin 'rking/ag.vim'
Plugin 'janko-m/vim-test'
Plugin 'easymotion/vim-easymotion' 
Plugin 'Yggdroot/indentLine'
"Plugin 'valloric/youcompleteme'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'wesQ3/vim-windowswap' " window swapping
" Colorschemes
Plugin 'flazz/vim-colorschemes'
"Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

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
set guitablabel=%t " tabline only shows file not full path
set term=screen-256color " ensure colors are 256 when open
set mouse=nicr " enable mouse actions 

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

"  \ }

" vim-test settings
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
nmap <leader>f :Rg 
nmap <silent> <leader>F :Files<CR>
nmap ; :Buffers<CR>
nmap <silent> <leader>s :w<CR>
" easy-motion settings
map <Leader><Leader> <Plug>(easymotion-prefix)

" User settings
" Indent  setting
let g:indentLine_char = '¦'

"fzf with ripgrep
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
