set all&
set hi=100
set bs=indent,eol,start
set ru
set sc
set nu
set nuw=5
set ts=2
set sw=2
set magic
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'scrooloose/nerdtree'
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
Bundle 'msanders/snipmate.vim'
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tComment'
Bundle 'vim-coffee-script'
Bundle 'https://github.com/cakebaker/scss-syntax.vim.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
colorscheme distinguished
set laststatus=2

" FuzzyFinder Setting
" 특정 파일 제외
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|class)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
map <Leader>nt <ESC>:NERDTree<CR>
map <Leader>ff <ESC>:FufCoverageFile!<CR>
map <Leader>fb <ESC>:FufBuffer!<CR>
map <Leader>fd <ESC>:FufDir!<CR>

