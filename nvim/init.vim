" Use 2 spaces in place of tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" Set normal mode cursor to underline
set guicursor=n-v-c-sm-r-cr-o:hor20,i-ci-ve:ver25

" Show line numbers
set number

" Highlight line
set cul

" Make sure plugin manager is installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $XDG_CONFIG_HOME/nvim/init.vim
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plug')
Plug 'scaasic/seti.vim'
Plug 'itchyny/lightline.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

color seti
