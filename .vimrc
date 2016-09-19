execute pathogen#infect()
syntax on
filetype plugin indent on
set nocompatible

colorscheme Monokai 

:set number
:set mouse=a
:set showcmd
:set ruler
:set tabstop=4 shiftwidth=4
:set clipboard=unnamed
:set clipboard=unnamedplus
:set wildmode=longest,list,full
:set wildmenu
:set textwidth=0 wrapmargin=0

:nnoremap gf <C-W>gf
:vnoremap // y/<C-R>"<CR>

if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
            \ | wincmd p | diffthis
endif

autocmd BufNewFile,BufRead *.ocn set filetype=skill
