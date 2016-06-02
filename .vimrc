set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'cakebaker/scss-syntax.vim'          " scss syntax highlighting
Plugin 'tpope/vim-fugitive'                 " needed for vim-airline (?)
Plugin 'bling/vim-airline'                  " cool vim status bar at bottom
Plugin 'mustache/vim-mustache-handlebars'   " syntax highlighting for mustache / handlebars
Plugin 'altercation/vim-colors-solarized'   " solarized colorscheme ?
Plugin 'vim-airline/vim-airline-themes'     " adding colors for airline


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set laststatus=2
let g:airline_powerline_fonts=1


" Color scheme stuff
syntax enable
set background=light
colorscheme solarized
set t_Co=256

" cause numbers are important
set number

" tab stuffs
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set smartindent

" VIM HARD MODE
" disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" compile sass on write
function SassToCss()
  let current_file = shellescape(expand('%:p'))
  let filename = shellescape(expand('%:r'))
  let command = 'silent !sass ' . current_file . ' ' . filename . '.css'
  execute command
endfunction
autocmd BufWritePost,FileWritePost *.scss call SassToCss()

" proper fonts in macvim
set guifont=Meslo\ LG\ S\ for\ Powerline
