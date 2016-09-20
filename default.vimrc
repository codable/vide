" Vundle required
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'
Plugin 'vim-scripts/php.vim-html-enhanced'
Plugin 'moll/vim-node'
Plugin 'tpope/vim-git'
Plugin 'digitaltoad/vim-jade'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/winmanager'
Plugin 'vim-scripts/minibufexplorerpp'
Plugin 'vim-scripts/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'rhysd/vim-clang-format'
Plugin 'steffanc/cscopemaps.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
call vundle#end()            " required
filetype plugin indent on    " required

" Customizations
colorscheme molokai
" Use dark backgroud theme
set background=dark
" Share clipboard with OS
set clipboard=unnamed
set expandtab
" Use paste mode to solve paste indent issue
set paste
" Narrow tab
set shiftwidth=2
set tabstop=2
syntax on
" Tell bad spaces
:match Error /\s\+$/
set laststatus=2
" CtrlP
map mo :CtrlP .<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*.o,.*,*.jar,node_modules
