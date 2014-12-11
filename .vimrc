
"Style
colorscheme evening
"colorscheme desert
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
set nocompatible	" Use Vim Keyboard mode as defaults (much better than vi!)
set number		"show line number
set history=100		" keep 100 lines of command line history
set ruler		" show the cursor position all the time
set nobackup		"no *~ backup files
set noswapfile  "donnot set up .swap backup file, 
"set autoread " auto read when file is changed from outside
"set clipboard+=unnamed "let Vim share Windows clipboard. seems useless.
set fileformats=unix,dos,mac " try file format.
"set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
set wildmenu " wild char completion menu
set showcmd     "show (partial) command in the last line of the screen, this also shows visual selection info 
set mouse=a     "enable mouse
set laststatus=2 "always show status bar
syntax on " syntax highlight
syntax enable " Enable syntax highlighting

" TAB setting
set tabstop=4 	" a tab is four spaces
set shiftwidth=4 " number of spaces to use for autoindenting
set cindent         "c language auto indentation
set autoindent		" auto indentation
set copyindent " copy the previous indentation on autoindenting
set smartindent
set expandtab	"replace tab with spaces
set smarttab " insert tabs on the start of a line according to context


"search setting
set cursorline  " highlight line
"set cursorcolumn " highlight column
set showmatch " Cursor shows matching ) and }
set hlsearch	" search highlighting
set incsearch	" incremental search
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is all lowercase,case-sensitive otherwise

"tab page setting
set tabpagemax=9
set showtabline=2
" Key Shortcut
nmap <C-t> :tabnew<cr>
nmap <C-p> :tabprevious<cr>
nmap <C-n> :tabnext<cr>
nmap <C-k> :tabclose<cr>
nmap <C-Tab> :tabnext<cr> 



"file
"filetype off 		" necessary to make ftdetect work on Linux
filetype on 		" Enable filetype detection
filetype indent on 	" Enable filetype-specific indenting
filetype plugin on 	" Enable filetype-specific plugins

" ENCODING SETTINGS
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

fun! ViewUTF8()
set encoding=utf-8
set termencoding=big5
endfun
fun! UTF8()
set encoding=utf-8
set termencoding=big5
set fileencoding=utf-8
set fileencodings=ucs-bom,big5,utf-8,latin1
endfun
fun! Big5()
set encoding=big5
set fileencoding=big5
endfun

"Auto-completion
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction


