" Install vim-plug if not found
let vim_config_dir = '~/bin/vim_config'
if empty(glob(vim_config_dir . '/autoload/plug.vim'))
    silent execute '!/usr/bin/curl -fLo ~/bin/vim_config/autoload/plug.vim 
                \ --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    " autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
" autocmd VimEnter * if len(filter(vdalues(g:plugs), '!isdirectory(v:val.dir)'))
"  \| PlugInstall --sync | source $MYVIMRC
"  \| endif


call plug#begin(vim_config_dir . '/autoload/plugged/')
Plug 'junegunn/fzf.vim', {'do': { -> fzf#install() }}
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'rafaqz/ranger.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'preservim/tagbar'
Plug 'ludovicchabant/vim-gutentags'
Plug 'uarun/vim-protobuf'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'nvie/vim-flake8'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'ambv/black'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'

Plug 'neoclide/coc.nvim', {'branch': 'release' }

call plug#end()


