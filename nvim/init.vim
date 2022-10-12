:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/olivercederborg/poimandres.nvim' "Poimandres colorscheme
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'nvim-lualine/lualine.nvim' " status bar
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal not sure if needed
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors not sure if needed
Plug 'https://github.com/tpope/vim-fugitive' " For git status and few commands
Plug 'nvim-treesitter/nvim-treesitter' "treesitter

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
:imap <c-d> <Esc>

nmap <F8> :TagbarToggle<CR>
:set completeopt-=preview " For No Previews

:colorscheme poimandres
:set termguicolors " sets nvim/vim colorscheme in terminal
:set background=dark
" Cursor color for seeing clearer
highlight Cursor guifg=black guibg=#fcc5e9
highlight iCursor guifg=black guibg=#fcc5e9
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" For look
" Lualine and poimandres setupt
lua << END
require('lualine').setup()
END
lua << EOF
  require('poimandres').setup {
  }
EOF

inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#_select_confirm() : "<Tab>"
