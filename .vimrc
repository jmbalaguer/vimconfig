" Configuration file for Vim.

" use Vim mode instead of pure Vi, it must be the first instruction
set nocompatible

" display settings
set encoding=utf-8 " encoding used for displaying file
set ruler " show the cursor position all the time
set showmatch " highlight matching braces
set showmode " show insert/replace/visual mode
set number " show line numbers

" write settings
set confirm " confirm :q in case of unsaved changes
set fileencoding=utf-8 " encoding used when saving file
"set nobackup " do not keep the backup~ file
set backup " tell vim to keep a backup file
set backupdir=~/tmp " tell vim where to put its backup files
set dir=~/tmp " tell vim where to put swap files

" edit settings
set backspace=indent,eol,start " backspacing over everything in insert mode
set expandtab " fill tabs with spaces
set shiftwidth=2 " set indentation depth to 2 columns
set softtabstop=2 " backspacing over 2 spaces like over tabs
set tabstop=2 " set tabulator length to 2 columns

" search settings
set hlsearch " highlight search results
set ignorecase " do case insensitive search...
set incsearch " do incremental search
set smartcase " ...unless capital letters are used

" file type specific settings
filetype on " enable file type detection
filetype indent on " automatically indent code
"filetype plugin on " load the plugins for specific file types

" syntax highlighting
"colorscheme slate " set color scheme, must be installed first
colorscheme wombat256mod " set color scheme, must be installed first
set background=dark " dark background for console
syntax enable " enable syntax highlighting

" characters for displaying non-printable characters
set listchars=eol:$,tab:>-,trail:.,nbsp:_,extends:+,precedes:+

" tuning for gVim only
if has('gui_running')
  set background=light " light background for GUI
  set columns=145 lines=45 " GUI window geometry
  set guifont=Monospace\ 12 " font for GUI window
endif

" general key mappings

" press F4 to fix indentation in whole file; overwrites marker 'q' position
noremap <F4> mqggVG=`qzz
inoremap <F4> <Esc>mqggVG=`qzza

" press F8 to turn the search results highlight off
noremap <F8> :nohl<CR>
inoremap <F8> <Esc>:nohl<CR>a

" press F12 to toggle showing the non-printable charactes
noremap <F12> :set list!<CR>
inoremap <F12> <Esc>:set list!<CR> 