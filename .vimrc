runtime! debian.vim

"Donovan Conrad E. Uy

syntax on	"Syntax highlighting


" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" 	auto-complete settings
 autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

"	Behavioral Settings

set background=dark	" Dark Background
set compatible
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set ul=25		" Set UndoLevels to 25
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set number		" Enables line numbers on startup
set numberwidth=5	" Sets the size of the line number gutter 

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

