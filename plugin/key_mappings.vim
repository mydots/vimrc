" Mappings
" n: normal only
" v: visual and select
" o: operator-pending
" x: visual only
" s: select only
" i: insert
" c: command-line
" l: insert, command-line, regexp-search (and others. Collectivel called "Lang-Arg" pseudo-mode)
"

" Remap ; to : in normal mode
nnoremap ; :
xnoremap ; :

" Use VisualBlock instead of Block mode and vice-versa
nnoremap v <C-V>
nnoremap <C-V> v
vnoremap v <C-V> 
vnoremap <C-V> v

" Shortcut to rapidly toggle `set list`
" In normal mode, just type \l
nmap <leader>l :set list!<CR>

" Tabs and navigation
nnoremap <silent> <C-l> :tabnext<CR>
nnoremap <silent> <C-h> :tabprevious<CR>
nnoremap <silent> <C-t> :tabnew<CR>

" Escape
imap jj <ESC>

" Treat j and k as up and down on long lines in wrap mode.
nnoremap j gj
nnoremap k gk

" Window splitting
" window
nmap <leader>swh :topleft  vnew<CR>
nmap <leader>swl :botright vnew<CR>
nmap <leader>swk :topleft  new<CR>
nmap <leader>swj :botright new<CR>
" buffer
nmap <leader>sh  :leftabove  vnew<CR>
nmap <leader>sl  :rightbelow vnew<CR>
nmap <leader>sk  :leftabove  new<CR>
nmap <leader>sj  :rightbelow new<CR>

nmap <leader>-      :split<CR>
nmap <leader><bar>  :vsplit<CR>
" End Window splitting


" Toggle Background
nmap <leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

"Folding remapping
nnoremap <space> za
vnoremap <space> za

" Spell check
nnoremap z] ]s*N " next mispelled word
nnoremap z[ [s*N " previsous mispelled word

inoremap <C-x><C-x> <C-x>s
nnoremap <C-x><C-x> i<C-x>s

" resize current buffer by +/- 5 
nnoremap <leader>J :vertical resize -5<cr>
nnoremap <leader>L :vertical resize +5<cr>
nnoremap <leader>H :vertical resize -5<cr>
nnoremap <leader>K :resize +5<cr>
nnoremap <leader>L :resize -5<cr>

" Switch between this buffer and the last
nnoremap <leader><leader> <c-^>
" Do not move cursor when highlighting word under cursor
nnoremap * *N

nmap <silent> ,/ :nohlsearch<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SHORTCUT TO REFERENCE CURRENT FILE'S PATH IN COMMAND LINE MODE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap <expr> %% expand('%:h').'/'

" Enable / Disable relative line numbering
nnoremap <leader>n :set relativenumber!<CR>
