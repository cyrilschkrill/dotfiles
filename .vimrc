set nu
set relativenumber
syntax on
syntax enable
filetype plugin indent on

call plug#begin()

Plug 'lervag/vimtex'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'jalvesaq/Nvim-R'
"Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'elkowar/yuck.vim'

call plug#end()

" vimtex config
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" markdown-preview config
let g:mkdp_browser='qutebrowser'

" UltiSnips config
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories = '/home/schkrill/.vim'

nnoremap <F5> "=strftime("%c")<CR>P


