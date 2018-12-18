set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vungle
Plugin 'VundleVim/Vundle.vim'

" Snippets
Plugin 'Sirver/ultisnips'
Plugin 'honza/vim-snippets'

" JS
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'heavenshell/vim-jsdoc'

" Elixir
Plugin 'elixir-lang/vim-elixir'

" Python
Plugin 'hdima/python-syntax'

" HTML and CSS
Plugin 'svg.vim'
Plugin 'mattn/emmet-vim'
Plugin 'chrisbra/Colorizer'
Plugin  'ap/vim-css-color'

" NeerdTree
Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'Townk/vim-autoclose'
Plugin 'scrooloose/syntastic'
Plugin 'ntpeters/vim-better-whitespace'

Plugin 'gavinbeatty/dragvisuals.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'joshdick/onedark.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" Game
Plugin 'TeTrIs.vim'

" :source%
" :PluginInstall

call vundle#end()
filetype plugin indent on

set tabstop=2
set expandtab
set shiftwidth=2
set number
set ignorecase

highlight ColorColumn ctermbg=DarkGray
set colorcolumn=80

map <C-f> :NERDTreeToggle<CR>
map <F3> :set hlsearch! hlsearch?<CR>
vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

filetype on
filetype indent on
filetype plugin on

let g:onedark_termcolors=256
syntax on
colorscheme onedark

let g:jsdoc_enable_es6 = 1
let g:jsx_ext_required = 0
let g:airline_theme='distinguished'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

imap cll console.log();<Esc>hi
imap clx IO.inspect <Esc>a
imap yhp Yals.Helpers.pretty_log()<Esc>i
imap ohp Kof.Repo.Utils.pretty_log()<Esc>i

vmap cll yocll<Esc>p
vmap clx yoclx<Esc>p
vmap yhp yoyhp<Esc>p
vmap ohp yoohp<Esc>p

nmap cll yiwocll<Esc>p
nmap clx yiwoclx<Esc>p
nmap yhp yiwoyhp<Esc>p
nmap ohp yiwoohp<Esc>p

vmap '' c''<Esc>P
vmap "" c""<Esc>P
vmap `` c``<Esc>P
vmap (( c()<Esc>P
vmap [[ c[]<Esc>P
vmap {{ c{}<Esc>P
