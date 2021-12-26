" Configuration file for Vim.

" use Vim mode instead of pure Vi, it must be the first instruction
" This must be first, because it changes other options as side effect
set nocompatible

" display settings
set encoding=utf-8 " encoding used for displaying file
set ruler " show the cursor position all the time
set showmatch " highlight matching braces
set showmode " show insert/replace/visual mode
set number " show line numbers
set nowrap
set smartindent

" write settings
set confirm " confirm :q in case of unsaved changes
set fileencoding=utf-8 " encoding used when saving file
set fileencodings=ucs-bom,utf-8,latin-1

"set nobackup " do not keep the backup~ file
set backup " tell vim to keep a backup file
set backupdir=~/tmp " tell vim where to put its backup files (folder must exists)
set dir=.,~/tmp " tell vim where to put swap files (folder must exists)

" edit settings
set backspace=indent,eol,start " backspacing over everything in insert mode
set shiftwidth=2 " set indentation depth to 2 columns
set softtabstop=2 " backspacing over 2 spaces like over tabs
set tabstop=2 " set tabulator length to 2 columns
set expandtab " fill tabs with spaces
set scrolloff=7 " number of context lines to see above and below the cursor.

" Remap 0 to first non-blank character
"map 0 ^

" Remaps for the first ans last characters
"map B ^ 
"map E $ 

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" search settings
set hlsearch " highlight search results
set ignorecase " do case insensitive search...
set incsearch " do incremental search
set smartcase " ...unless capital letters are used

" For regular expressions turn magic on
set magic

" file type specific settings
filetype on " enable file type detection
filetype indent on " automatically indent code
"filetype plugin on " load the plugins for specific file types

" color scheme
colorscheme desert  

" syntax highlighting
set background=dark " dark background for console
syntax enable " enable syntax highlighting

" characters for displaying non-printable characters
set listchars=eol:$,tab:>-,trail:.,nbsp:_,extends:+,precedes:+

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set lines=43 columns=130

" tuning for gVim only
if has('gui_running')
  set background=light " light background for GUI
  set columns=140 lines=43 " GUI window geometry
  
  "set guifont=Monospace\ 12 " font for GUI window
  "set guifont=Lucida_Console:h14
  
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif

endif

" Always show the status line
set laststatus=2

" Format the status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
   \ if line("'\"") > 0 && line("'\"") <= line("$") |
   \   exe "normal! g`\"" |
   \ endif
"Remember info about open buffers on close
set viminfo^=%


" General key mappings

" Change the mapleader from \ to ,
let mapleader=","

" Turn the search results highlight off
nnoremap <leader><space> :nohlsearch <CR>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" C-c and C-v - Copy/Paste to global clipboard
" copy works in visual mode!
" paste works in insert mode!
vmap <C-c> "+yi
imap <C-v> <esc>"+gpi


" Function key mappings 

" press F4 to fix indentation in whole file; overwrites marker 'q' position
noremap <F4> mqggVG=`qzz
inoremap <F4> <Esc>mqggVG=`qzza

" press F12 to toggle showing the non-printable charactes
noremap <F12> :set list!<CR>
inoremap <F12> <Esc>:set list!<CR> 

