"
" Note: Make all key mappings the same length to Vim doesn't
"       pause to figure out if you're done typing

let mapleader = ","

nnoremap   <Up>     <NOP>
nnoremap   <Down>   <NOP>
nnoremap   <Left>   <NOP>
nnoremap   <Right>  <NOP>

noremap g= gqap

"
" Miscellaneous GWH4 mappings
"

nnoremap  <Leader>s :set spell!<cr>
nnoremap  <Leader>nh :noh<cr>
nnoremap  <Leader>h :set hlsearch<cr>

nnoremap  <Leader>1 :set foldlevel=1<cr>
nnoremap  <Leader>2 :set foldlevel=2<cr>
nnoremap  <Leader>l :set foldlevel=

" map CTRL-SPC for omni completion
"

imap <C-@> <C-X><C-O>

" window mappings

nnoremap <Leader>wc :close<cr>
nnoremap <Leader>wo :only<cr>

nnoremap <Leader>w\| :vsp<cr>:wincmd l<cr>
nnoremap <Leader>w_ :sp<cr>
nnoremap <Leader>wn :vnew 

nnoremap <Leader>w- :resize -5<cr>
nnoremap <Leader>w+ :resize +5<cr>

nnoremap <Leader>w= <c-w>=

nnoremap <Leader>wh :wincmd h<cr>
nnoremap <Leader>wj :wincmd j<cr>
nnoremap <Leader>wk :wincmd k<cr>
nnoremap <Leader>wl :wincmd l<cr>

nnoremap <Leader>wr :wincmd r<cr> ; Rotate windows rightwards

" buffer mappings

nnoremap <Leader>bl :buffers <cr>:b
nnoremap <Leader>bt :b#<cr>
nnoremap <Leader>bo :BufOnly<cr>
