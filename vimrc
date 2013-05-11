colorscheme wombat
syntax on
set nomodeline " For security as reccomended by FreeBSD.
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
set list listchars=tab:\>\.,trail:\.
set viminfo=%,'50,f1,\"100,n~/.viminfo
"set foldmethod=indent " Folding
"nnoremap \zz :let &scrolloff=999-&scrolloff<CR> "simpl1city
let mapleader=","

"<<<<<<< HEAD
" 80 Columns Is Best "m0mma knows best
"match ErrorMsg '\%>80v.\+'
"=======
" 80 Columns Is Best          Thom disagrees with Michael on this one and only point.
"match ErrorMsg '\%>80v.\+' " Some of his scripts have lines way longer than 80 chars.
">>>>>>> 1bbf67eaf62a6216d150eddbe0b376b25d23df5a

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

" JSON Syntax Highlighting
" via http://www.vim.org/scripts/script.php?script_id=1945
augroup json_autocmd
    autocmd!
    autocmd FileType json set autoindent
    autocmd FileType json set formatoptions=tcq2l
    autocmd FileType json set textwidth=78 shiftwidth=4
    autocmd FileType json set softtabstop=4 tabstop=8
    autocmd FileType json set expandtab
    autocmd FileType json set foldmethod=syntax
augroup END
