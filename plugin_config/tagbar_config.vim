" tagbar support for selinux files 
let g:tagbar_type_te = {
    \ 'ctagstype' :  'selinux',
    \ 'kinds'     :  [
            \ 't:type',
            \ 'l:typealias',
            \ 'r:attribute',
            \ 'd:define',
            \ 'i:interface',
            \ 'p:template',
            \ 'b:bool'
    \ ]
\ }


nmap <F8> : TagbarToggle<CR>
let g:tagbar_left=1
