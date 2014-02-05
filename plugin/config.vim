" Automatically indent lines
set autoindent
set smartindent

" Tab widths
set tabstop=2
set softtabstop=2
set laststatus=1

" Expand tabs to spaces
set expandtab

" Encode documents in UTF-8 by default
set enc=UTF-8
set fenc=UTF-8
set termencoding=UTF-8
set foldmethod=syntax

" Use tree-style directory listings
let g:netrw_liststyle=3

let g:gundo_width = 40
let g:gundo_preview_height = 40
let g:gundo_preview_bottom = 1
let g:gundo_right = 1
let g:gundo_close_on_revert = 1

" State to be ignored by sessions 
let g:sessionoptions='buffers,curdir,folds,winsize,winpos'

" vim-session configuration
let g:session_autosave_periodic = 1
let g:session_directory = $HOME . '/.vim/tmp/sessions'

let g:session_autoload = 'yes'
let g:session_autosave = 'yes'

" j/k make a lot more sense this way when lines are wrapped 
nmap j gj
nmap k gk

map \3 :b#<CR>

" highlight the current cursor line
set cursorline

" Highlight long lines
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

" flashes matching brackets and parenthesis
set showmatch

" Nice statusbar
set laststatus=2
set statusline=\ "
set statusline+=%f\ " filename
set statusline+=[
set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&fileformat}] " file format
set statusline+=%h%m%r%w " flag
set statusline+=%= " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

set number

" enable setting title
set title

" configure title to look like: /path/to/file
set titlestring=%-25.55F\ %a%r%m titlelen=70

" store undo history
set undodir^=~/.vim/tmp/undo//
set undofile

set backup 
set backupdir=~/.vim/tmp/backup,~/.tmp/backup,~/tmp/backup,/var/tmp/backup,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim/tmp/swap,~/.tmp/swap,~/tmp/swap,/var/tmp/swap,/tmp 
set writebackup
set backupcopy=yes

" Vim gitgutter
let g:gitgutter_enabled = 0

noremap <leader>sg :GitGutterToggle<CR>
noremap <leader>sG :GitGutterLineHighlightsToggle<CR>
noremap <leader>sh :GitGutterNextHunk<CR>
noremap <leader>sH :GitGutterNextHunk<CR>

" Always show the ruler for information about the current file
set ruler

" Better tab completion
set wildmode=longest:full
set wildmenu

" Disable warnings about files having been changed when switching
" to new ones.
set hidden

let g:CommandTMaxHeight=20
let g:CommandTMinHeight=4
let g:ackprg = 'ag --nogroup --nocolor --column'

" Mouse
if has("mouse")
  set mouse=a
  set mousemodel=popup_setpos
endif


