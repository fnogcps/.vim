call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'mhinz/vim-startify'
Plug 'fnogcps/wal.vim'
Plug 'sheerun/vim-polyglot'
Plug 'lilydjwg/colorizer'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
call plug#end()

set number
set laststatus=2

colorscheme wal

let g:lightline = {
      \ 'colorscheme': 'wal',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
