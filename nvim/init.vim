" Use 2 spaces in place of tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" Set normal mode cursor to underline
set guicursor=a:hor20-Cursor

" Show line numbers
set number

" Make sure plugin manager is installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plug')
Plug 'scaasic/seti.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

color seti
