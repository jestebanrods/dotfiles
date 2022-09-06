call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'nlknguyen/papercolor-theme'
Plug 'doums/darcula'

" IDE
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'fatih/vim-go'
Plug 'mattesgroeger/vim-bookmarks'

" Status Bar
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

call plug#end()

" Gruvbox
colorscheme gruvbox

" NERDTree
let NERDTreeShowHidden = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeMapOpenInTab = '\t'
let NERDTreeWinPos = 'right'
let NERDTreeHijackNetrw = 1

au VimEnter NERD_tree_1 enew | execute 'NERDTree '.argv()[0]

" CtrlP
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = { 'dir': '\v[\/](\.git|\.vim\/plugged|\.vim\/undodir|\.vim\/autoload|node_modules|vendor)$' }

" Vim Go
let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'
let g:go_doc_popup_window = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1

" Lightline
let g:lightline = {
\     'active': {
\         'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
\         'right': [['filetype', 'percent', 'lineinfo', 'gitbranch']]
\     },
\     'inactive': {
\         'left': [['inactive']],
\         'right': [['relativepath']]
\     },
\     'component': {
\         'inactive': 'inactive'
\     },
\     'component_function': {
\         'gitbranch': 'FugitiveHead'
\     },
\     'separator': {
\         'left': '',
\         'right': ''
\     },
\     'subseparator': {
\         'left': '',
\         'right': ''
\     }     
\ }

let g:lightline.colorscheme = 'gruvbox'
