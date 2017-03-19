set nocompatible 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vungle
Plugin 'VundleVim/Vundle.vim'

" JS
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'heavenshell/vim-jsdoc'

" Elixir
Plugin 'elixir-lang/vim-elixir'

" HTML and CSS
Plugin 'mattn/emmet-vim' 
Plugin 'chrisbra/Colorizer'

Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin' 

Plugin 'Townk/vim-autoclose'
Plugin 'scrooloose/syntastic'

Plugin 'joshdick/onedark.vim' 
Plugin 'kien/ctrlp.vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

call vundle#end()
filetype plugin indent on 

set tabstop=2
set expandtab
set shiftwidth=2
set number

highlight ColorColumn ctermbg=DarkGray
set colorcolumn=100

map <C-j> :NERDTreeToggle<CR>

filetype on
filetype indent on
filetype plugin on

let g:onedark_termcolors=256
syntax on
colorscheme onedark

let g:jsdoc_enable_es6 = 1
let g:jsx_ext_required = 0
