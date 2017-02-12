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
:set hidden

:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>
:nnoremap <F5> :buffers<CR>:buffer<Space>
":nnoremap gf <C-W>gf
:vnoremap // y/<C-R>"<CR>
:inoremap jk <Esc>

if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
            \ | wincmd p | diffthis
endif

autocmd BufNewFile,BufRead *.ocn set filetype=skill

