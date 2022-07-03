
" fugitive.vim (git)

" increase vim timeoutlen to fix E21 error when calling g?
set timeoutlen=5000

set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}
