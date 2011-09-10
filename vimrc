colorscheme wombat
syntax on
set nocompatible
set nowrap
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set incsearch
set number
set formatoptions=1
set lbr
set expandtab
set smarttab
set nohlsearch
set ignorecase
set smartcase
set nobackup
set backspace=indent,eol,start
set so=5 " Keep 5 lines above/below cursor always
nnoremap ; :
set list listchars=tab:»·,trail:·
set viminfo=%,'50,f1,\"100,n~/.viminfo
set foldmethod=indent " Folding
let mapleader=","

" 80 Columns Is Best
match ErrorMsg '\%>80v.\+'

" Window resizing
map + <C-W>+
map - <C-W>-

" Shell
map <leader>s  :match<CR>:set nolist<CR>:ConqueTerm zsh<CR>
map <leader>sh :match<CR>:set nolist<CR>:ConqueTermSplit zsh<CR>
map <leader>sv :match<CR>:set nolist<CR>:ConqueTermVSplit zsh<CR>

" Interp
map <leader>p :w !interp 'python -i' &<CR><CR>
map <leader>h :w !interp 'ghci -XPackageImports' 'ghci-XXXXXXXX.hs' &<CR><CR>
