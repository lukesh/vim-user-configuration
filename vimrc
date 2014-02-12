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

" Color schemes
"NeoBundle 'sjl/badwolf'
"NeoBundle 'altercation/vim-colors-solarized'
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
NeoBundle 'tpope/vim-eunuch'

" Git stuff
"NeoBundle 'tpope/vim-rhubarb'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-fugitive'

"if (v:version == 703 && has('patch584')) || v:version >= 704
"  NeoBundle 'Valloric/YouCompleteMe'
"endif

" Later
"NeoBundle 'terryma/vim-multiple-cursors'
"NeoBundle 'tpope/vim-tbone'
"NeoBundle 'vim-scripts/Better-CSS-Syntax-for-Vim'
"NeoBundle 'vim-scripts/L9'
"NeoBundle 'scrooloose/syntastic'
"NeoBundle 'monokrome/vim-flow'
"NeoBundle 'monokrome/openssl.vim'
"NeoBundle 'moll/vim-node'
"NeoBundle 'michaeljsmith/vim-indent-object'
"NeoBundle 'mattn/webapi-vim'
"NeoBundle 'johnsyweb/vim-makeshift.git'
"NeoBundle 'kana/vim-exjumplist'
"NeoBundle 'drmingdrmer/xptemplate'
"NeoBundle 'Lokaltog/vim-easymotion'

"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/vimfiler.vim'
"NeoBundle 'Shougo/vimproc.vim'
"NeoBundle 'chrisbra/csv.vim'
"NeoBundle 'digitaltoad/vim-jade'
"NeoBundle 'gregsexton/MatchTag'
"NeoBundle 'Shougo/unite-outline'
"NeoBundle 'https://github.com/pangloss/vim-javascript'
"NeoBundle 'itchyny/lightline.vim'
"NeoBundle 'majutsushi/tagbar'
"NeoBundle 'tpope/vim-markdown'
"NeoBundle 'tpope/vim-sensible'
"NeoBundle 'tpope/vim-sleuth'
"NeoBundle 'tpope/vim-surround'
"NeoBundle 'tsukkee/unite-tag.git'
"NeoBundle 'vim-ruby/vim-ruby'
"NeoBundle 'vim-scripts/django.vim'
"NeoBundle 'voithos/vim-python-matchit'
"NeoBundle 'wavded/vim-stylus'

NeoBundle 'jelera/vim-javascript-syntax', {
  \ 'autoload':{
  \   'filetypes':[
  \     'javascript'
  \   ]
  \ }}

silent NeoBundleClean!
NeoBundleCheck
