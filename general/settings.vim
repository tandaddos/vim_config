syntax on
set ai sw=4
set encoding=utf-8
set nocompatible
set modelines=0
set printoptions=number:y
" set ff=unix
set linebreak

set number
set mouse=a

set softtabstop=4
set shiftwidth=4     "indent by this much when using >>, <<, =="
set tabstop=4
set expandtab

set cindent
set smartindent

set showmatch
set incsearch
set ignorecase
set smartcase
set hlsearch

" search stuff
" nnoremap / /\v
" vnoremap / /\v
"
" map no highlight
"nnoremap <leader>, :noh<cr>

let mapleader = ";"

" map jk kj to ESC
inoremap jk <ESC>
inoremap kj <ESC>
nnoremap <C-c> <ESC>

" move between buffers
nnoremap <leader>''' :bnext<CR>
nnoremap <leader>' :bprevious<CR>

" more ways to save/quit
"nnoremap <C-s> :w<CR>
nnoremap <C-Q> :wq!<CR>

" <TAB>: completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" better tabbing
vnoremap < <gv
vnoremap > >gv

" window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


set wrap
set textwidth=79
set formatoptions=qrnl
" set columns=100
set display=lastline
set wrapscan
set laststatus=2
set statusline=%1*%{strftime('%c')}\ File:\ %f\ (%R%M)\ %=\buffer\ #%n\ [%l-%v]\ [%p%%]\ [%L\ \lines]
set statusline=%1*%{strftime('%c')}\ File:\ %F\ (%R%M)\ %=\buffer\ #%n\ [%l-%v]\ [%p%%]\ [%L\ \lines]

set backspace=indent,eol,start
set linebreak
set wildmenu
set wildmode=list:longest
" set cursorline
set visualbell
set ttyfast
set ruler

set showcmd
set showmode

" auto write when lost focus
au FocusLost * :wa

" recursive search for tags file from current dir - note ';' at end
set tags+=./tags,tags;

" change pwd to that of file in current window, except when dir is /tmp
autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h<CR>:pwd | endif

autocmd BufNewFile,BufRead,BufReadPre SConstruct,SConscript set filetype=python
autocmd BufReadPost *.py colorscheme molokai

" run black before save or on a keypress
autocmd BufWritePre *.py execute ':Black'
nmap F :Black

" java 
let java_highlight_functions="style"
let java_allow_cpp_keywords=1
au BufReadPost *.java colorscheme molokai
set cpt=k,.,w,b,u,t,i

" python
au BufNewFile,BufRead,BufReadPre SConstruct,SConscript,*.py set filetype=python
au BufReadPost *.py colorscheme molokai

" protobuf
au! BufRead,BufNewFile *.proto set filetype=proto
au BufReadPost *.proto colorscheme molokai

" selinux
au! BufRead,BufNewFile *.te,*.if,*.fc,*.spt set filetype=te
au BufReadPost *.proto colorscheme molokai

" js/html/css
au BufNewFile,BufRead *.js,*.css,*.html 
    \ set tabstop=2
    \ set softtabstop=2 | 
    \ set shiftwidth=2

" remove un-necessary whitespaces
highlight BadWhitespace ctermbg=red 
au BufRead,BufNewFile *.py,*.pyw,*.c,*.cpp,*.h match BadWhitespace /\s\+$/

" tell vim to ignore some file types
set wildignore+=*/tmp/*,*.swp,*.zip

" fugitive.vim (git)
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

" ack.vim
let g:ackprg="ack-grep -H --smart-case --column --type=noxml --follow "
let g:ackhighlight=1


nmap <tab> %
nmap // :Ack 

" copy paste
nmap <leader>y "+y
vmap <leader>y "+y

vmap <leader>d "+d

nmap <leader>p "+p
vmap <leader>p "+p

nmap <leader>P "+P
vmap <leader>P "+P

" next-alter


" use " long status line
nmap <F2> : set statusline=%1*%{strftime('%c')}\ File:\ %F\ (%R%M)\ %=\buffer\ #%n\ [%l-%v]\ [%p%%]\ [%L\ \lines]<CR>

" short status line
nmap <F3> : set statusline=%1*%{strftime('%c')}\ File:\ %f\ (%R%M)\ %=\buffer\ #%n\ [%l-%v]\ [%p%%]\ [%L\ \lines]<CR>


nmap <F9> :grep! -R  <CWORD>  * <CR>  :copen <CR>


augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
augroup END


