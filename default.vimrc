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
Plugin 'vim-scripts/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'rhysd/vim-clang-format'
Plugin 'steffanc/cscopemaps.vim'
Plugin 'roryokane/detectindent'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'junkblocker/patchreview-vim'
Plugin 'matchit.zip'
call vundle#end()            " required
filetype plugin indent on    " required

" Customizations
colorscheme molokai

" Use dark backgroud theme
set background=dark

" Share clipboard with OS
set clipboard=unnamed

" Use paste mode to solve paste indent issue
set paste

" Better tab
set shiftwidth=4
set tabstop=4
set expandtab

" Syntax
syntax on

" Tell bad spaces
:match Error /\s\+$/

" Always show status bar
set laststatus=2

" CtrlP
map mo :CtrlP .<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*.o,.*,*.jar,node_modules

" Tab for Gstatus
function! OnTab()
  if bufname(winbufnr(winnr())) == '.git/index' " in the file list
    exec "normal \<CR>\<C-w>j:Gdiff\<CR>"
    exec 'sleep 50ms'
    exec "normal \<C-w>l"
  else
    exec "normal :q\<CR>\<C-w>k"
  endif
endfunction
map <tab> :call OnTab()<CR>

" Generate code tags
nmap nd :!cscope -Rqb<CR>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

augroup DetectIndent
   autocmd!
   autocmd BufReadPost *  DetectIndent
augroup END

nmap q[ :cprev<CR>
nmap q] :cnext<CR>
