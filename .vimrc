"execute pathogen#infect()
syntax on
filetype plugin indent on
set nocompatible

set t_Co=256
colorscheme Monokai 

if &term =~ '256Color'
	" Disable Background Color Erase (BCE) so that color schemes
	" work properly when Vim is used inside tmux and GNU screen.
	set t_ut=
endif

:set number
:set mouse=a
:set showcmd
:set ruler
:set tabstop=4 softtabstop=4 shiftwidth=4
:set noexpandtab
:set clipboard=unnamed
:set clipboard=unnamedplus
:set wildmode=longest,list,full
:set wildmenu
:set textwidth=0 wrapmargin=0
:set hidden
:set guioptions+=m
:set winaltkeys=no
":set guifont=Source\ Code\ Pro\ for\ Powerline\ 10

":nnoremap <C-n> :bnext<CR>
":nnoremap <C-p> :bprevious<CR>
":nnoremap <F5> :buffers<CR>:buffer<Space>
":nnoremap gf <C-W>gf
:vnoremap // y/<C-R>"<CR>
:inoremap jk <Esc>
:map <Space> <leader>

if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
            \ | wincmd p | diffthis
endif

autocmd BufNewFile,BufRead *.ocn set filetype=skill

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'python-mode/python-mode'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'scrooloose/nerdcommenter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'vim-perl/vim-perl'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'

call plug#end()


:let g:airline#extensions#tabline#enabled=1

if has('gui_running')
	:let g:airline_powerline_fonts = 1
endif

:let g:buffergator_autoexpand_on_split = 0
