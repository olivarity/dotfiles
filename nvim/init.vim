" Use 4 spaces in place of tabs
set expandtab
set shiftwidth=4
set softtabstop=4

" Set normal mode cursor to underline
set guicursor=n-v-c-sm-r-cr-o:hor20,i-ci-ve:ver25

" Show line numbers
set number

" Highlight line
set cursorline

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
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

color seti
