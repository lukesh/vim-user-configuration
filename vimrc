augroup Vim
  autocmd!

  " Reload vimrc after save.
  autocmd BufWritePost ~/.vimrc so ~/.vimrc

  " Create the directory if it doesn't exist.
  autocmd BufNewFile * silent !mkdir -p $(dirname %)
augroup END

set nocompatible
set t_Co=256

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" Color schemes
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'lunaru/vim-less'

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'lukesh/vim-user-configuration'
NeoBundle 'wincent/Command-T'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-obsession'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-commentary'

" Git stuff
" NeoBundle 'tpope/vim-git'
" NeoBundle 'tpope/vim-fugitive'

NeoBundle 'jelera/vim-javascript-syntax', {
  \ 'autoload':{
  \   'filetypes':[
  \     'javascript'
  \   ]
  \ }}

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
