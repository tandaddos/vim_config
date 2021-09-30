" cscope stuff
if has("cscope")
    " use both cscopt and ctags for ctrl-] 
    set cscopetag

    " where the csope binary is
    set csprg=/usr/bin/cscope

    " use ctags db before cscope's db
    set csto=0
    "set cst
    
    " not verbose
    set nocsverb

    " add cscope database into current dir
        if filereadable("$CMAS_SRC_BASE_DIR/cscope.out")
            cs add $CMAS_SRC_BASE_DIR/cscope.out
        elseif $CSCOPE_DB != ""
            cs add $CSCOPE_DB
        endif
endif

" cscope mappings
"   's'     symbol:     find this symbol
"   'g'     globals:    find this definition
"   'c'     calls:      find functions calling this function
"   'd'     called:     find functions called by this function
"   't'     text:       find this text string
"   'e'     egrep:      egrep this pattern
"   'f'     file:       open this file
"   'i'     includes:   find files that #include this file
"
" require cscope.out to be generated first:
"   1. find . -name '*.py'  -o -name '*.java' > cscope.files
"   2. cscope -RUbq  (recursive, look at timestamp for updates, build cross-refs, fast inverted index)
"   don't need  to do 1. if interested in C files only
"
" help cs for more info
"
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>


