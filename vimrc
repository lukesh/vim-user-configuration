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
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

if (v:version == 703 && has('patch584')) || v:version >= 704
  NeoBundle 'Valloric/YouCompleteMe'
endif

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
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-fugitive'

NeoBundle 'jelera/vim-javascript-syntax', {
  \ 'autoload':{
  \   'filetypes':[
  \     'javascript'
  \   ]
  \ }}

" silent NeoBundleClean!
NeoBundleCheck
