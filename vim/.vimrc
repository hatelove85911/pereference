set rtp+=~/.vim/bundle/Vundle.vim

set nocompatible
filetype off
syntax enable

" always show status line
set laststatus=2

" no swap file
set noswapfile

" syntax
syntax enable

" access system clipboard
set clipboard=unnamed

" search ignore case by default
set ic

" highlight search
set hls

" increment search
set is

" map leader to space
let mapleader=" "

" appearence 
set background=dark
set guifont=DejaVu_Sans_Mono:h10
set number

" indention
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" plugins
call vundle#begin()
"snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'ervandew/supertab'
Plugin 'gmarik/vundle'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kshenoy/vim-signature'
Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'kien/ctrlp.vim'
Plugin 'joeytwiddle/sexy_scroller.vim'
call vundle#end()

filetype plugin on

"============================================================
autocmd VimEnter FileType javascript noremap <buffer> <C-f> :call JsBeautify()<cr>
autocmd VimEnter FileType html noremap <buffer> <C-f>:call HtmlBeautify()<cr>
autocmd VimEnter FileType css noremap <buffer> <C-f>:call CSSBeautify()<cr>

"============================================================
" ctrlp settings
let g:ctrlp_working_path_mode=0  
let g:ctrlp_max_files=0
let g:ctrlp_max_height=20

" color scheme
colorscheme molokai
let g:molokai_original=1
"colorscheme solarized

" nerdtree
let g:nerdtree_tabs_open_on_gui_startup=0 

"============================================================
" Smart way to manage windows
map <leader>h <c-w>h
map <leader>j <c-w>j
map <leader>k <c-w>k
map <leader>l <c-w>l
map <leader>c <c-w>c
map <leader>H <c-w>H
map <leader>J <c-w>J
map <leader>K <c-w>K
map <leader>L <c-w>L
map <leader>o <c-w>o
map <leader>w <c-w>

" js code format
map <leader>f :call JsBeautify()<cr>

" nerdtree navigator toggle
map  <leader>nd :NERDTreeToggle<cr>

"cursor shape change in different mode in iterm2
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
