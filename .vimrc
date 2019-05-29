set nocompatible 
filetype off


" set the runtime path to include Vundle nd initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle (all Plugins must be here)
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'



"  Plugins can't be under this line
call vundle#end()
filetype plugin indent on

" basic stuff
set nu
set clipboard=unnamed


" Split
set splitbelow
set splitright

"Enable folding
set foldmethod=indent
set foldlevel=99

"enable folding with spacebar
nnoremap <space> za

" Indentation
au BufNewFile,BufRead 
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" UTF-8 Support
set encoding=utf-8

" HighLight
let python_highlight_all=1
syntax on

" python with virtualenv support


" ignore files in NERDTree
let NERDTreeIgnore = ['\.pyc$', '\~$']

" open nerdtree with ctrl+n
map <C-n> :NERDTreeToggle<CR>

" make F9 
autocmd FileType python nnoremap <buffer> <F9> :update<bar>!python %<CR>
