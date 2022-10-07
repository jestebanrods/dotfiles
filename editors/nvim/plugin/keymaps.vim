" Delete Buffer
nnoremap <leader>bd :bd!<CR>

" Run Last Command
nnoremap <leader><leader>c :<up><CR>

" Easy Moving Between Buffers
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Create Split Vertical
nnoremap <A-v> :vertical split<CR>

" Managment Tabs
nnoremap <leader>tn :tabnew<CR>
nnoremap <A-;> :tabnext<CR>

" Movements
nnoremap gg gg0
nnoremap n nzzzv
nnoremap N nzzzv

" Undo
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap $ $<c-g>u
inoremap > ><c-g>u

" Visual
vnoremap < <gv
vnoremap > >gv
vnoremap <leader>ss :!sort<CR>
