"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File handling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Encode documents in UTF-8 by default
set enc=UTF-8
set fenc=UTF-8
set termencoding=UTF-8
set foldmethod=syntax
set foldlevel=99

" store undo history
set undodir^=~/.vim/tmp/undo//
set undofile

set backup 
set backupdir=~/.vim/tmp/backup,~/.tmp/backup,~/tmp/backup,/var/tmp/backup,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim/tmp/swap,~/.tmp/swap,~/tmp/swap,/var/tmp/swap,/tmp 
set writebackup
set backupcopy=yes

" Disable warnings about files having been changed when switching
" to new ones.
set hidden

set wildignore+=**/node_modules/**


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Make backspace work
set backspace=2

" Theme
colorscheme lucius
LuciusDark

" Use tree-style directory listings
let g:netrw_liststyle=3

" Syntax highlighting
set nocompatible
syntax on
filetype plugin on

" Highlight the current cursor line
set cursorline

" State to be ignored by sessions 
let g:sessionoptions='buffers,curdir,folds,winsize,winpos'

" vim-session configuration
let g:session_autosave_periodic = 1
let g:session_directory = $HOME . '/.vim/tmp/sessions'
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'

" Highlight long lines
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%80v.\+/

" Nice statusbar
set laststatus=2
set statusline=\ "
set statusline+=%f\ " filename
set statusline+=%{fugitive#statusline()}\ "
set statusline+=[
set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&fileformat}] " file format
set statusline+=%h%m%r%w " flag
set statusline+=%= " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

" Disable line wrapping
set nowrap

" Enable line numbers
set number
setlocal numberwidth=5

" Enable setting title
set title

" Configure title to look like: /path/to/file
set titlestring=%-25.55F\ %a%r%m titlelen=70

" Flashes matching brackets and parenthesis
set showmatch

" Show the best match so far as search strings are typed
set incsearch

" Highlight search results
set hlsearch

" Ignore case when searching.
set ignorecase
set smartcase

" Always show the ruler for information about the current file
set ruler

" Better tab completion
set wildmode=longest:full
set wildmenu

" Enable mouse
if has("mouse")
  set mouse=a
  set mousemodel=popup_setpos
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation and formatting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatically indent lines
set autoindent
set smartindent

" Tab widths
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Expand tabs to spaces
set expandtab

" Filetype-specific indenting and plugins
"filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin configuration and mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gundo
let g:gundo_width = 40
let g:gundo_preview_height = 40
let g:gundo_preview_bottom = 1
let g:gundo_right = 1
let g:gundo_close_on_revert = 1
nnoremap <F5> :GundoToggle<CR>

" Vim gitgutter
let g:gitgutter_enabled = 1
noremap <leader>sg :GitGutterToggle<CR>
noremap <leader>sG :GitGutterLineHighlightsToggle<CR>
noremap <leader>sh :GitGutterNextHunk<CR>
noremap <leader>sH :GitGutterNextHunk<CR>

" NERDTree
map <C-y> :NERDTree<CR>
let NERDTreeShowHidden=1

" Command-T
let g:CommandTMaxHeight=20
let g:CommandTMinHeight=4
let g:ackprg = 'ag --nogroup --nocolor --column'
map <C-t> :CommandTFlush<cr>\|:CommandT<cr>

" IndentGuides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 2
"autocmd VimEnter * IndentGuidesToggle

" CoffeeScript
let coffee_compiler = '/usr/local/bin/coffee'
let coffee_watch_vert = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" j/k make a lot more sense this way when lines are wrapped 
nmap <leader>cd :lcd %:p:h<CR>
nmap j gj
nmap k gk
nmap <leader><space> :noh<CR>
nmap <leader>1234 :e ~/.vim/bundle/vim-user-configuration/plugin/config.vim<CR>
map \3 :b#<CR>
