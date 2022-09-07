
" Toggle
nnoremap <silent> <C-b> :NvimTreeToggle<CR>

" Luatree
nnoremap <leader>n :NvimTreeFindFile<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>

" mapping for vim-test
nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>ts :TestSuite<CR>
nnoremap <leader>tl :TestLast<CR>
nnoremap <leader>tv :TestVisit<CR>

" mapping for vim-go
" Run current file
nnoremap <leader>gr :GoRun %<CR>
" run all packages
nnoremap <leader>gra :GoRun<CR>
" Build current file
nnoremap <leader>gb :GoBuild %<CR>
" build every package
nnoremap <leader>gba :GoBuild<CR>
" run tests
nnoremap <leader>gt :GoTest<CR>


" Remap split keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Some fugitive keybindings
nnoremap <leader>g :G<CR>
nnoremap <leader>gh :diffget//2<CR>
nnoremap <leader>gl :diffget//3<CR>

nnoremap <leader>x :close<CR>

nnoremap <leader>b :ls<cr>
