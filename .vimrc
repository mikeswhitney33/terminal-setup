" Gotta be first
set nocompatible

" --- General Settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab


syntax on
colorscheme monokai
set termguicolors

" --- Plugins --- 
call plug#begin()
    Plug 'preservim/nerdtree'
call plug#end()


" --- NERDTree --- 
autocmd Vimenter * NERDTree | wincmd p
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
map <C-Y> :below terminal ++rows=10<CR>

