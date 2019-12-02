"""  ****  vimrc file  ***   

""" Style
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
"set fileformats=unix,dos,mac " try file format.
set fileformats=unix " try file format.
"set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
set wildmenu " wild char completion menu
set showcmd     "show (partial) command in the last line of the screen, this also shows visual selection info 
set mouse=a     "enable mouse
set laststatus=2 "always show status bar
syntax on " syntax highlight
syntax enable " Enable syntax highlighting

""" TAB setting
set tabstop=4 	" a tab is four spaces
set shiftwidth=4 " number of spaces to use for autoindenting
set cindent         "c language auto indentation
set autoindent		" auto indentation
set copyindent " copy the previous indentation on autoindenting
set smartindent
set expandtab	"replace tab with spaces
set smarttab " insert tabs on the start of a line according to context

set list
set listchars=tab:\|\  "dispaly Tab as '|'

""" search setting
set cursorline  " highlight line
set cursorcolumn " highlight column
set showmatch " Cursor shows matching ) and }
set hlsearch	" search highlighting
set incsearch	" incremental search
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is all lowercase,case-sensitive otherwise

""" tab page setting
set tabpagemax=9
set showtabline=2
" Key Shortcut
nmap <C-t> :tabnew<cr>
nmap <C-p> :tabprevious<cr>
nmap <C-n> :tabnext<cr>
nmap <C-k> :tabclose<cr>
nmap <C-Tab> :tabnext<cr> 



""" file
"filetype off 		" necessary to make ftdetect work on Linux
filetype on 		" Enable filetype detection
filetype indent on 	" Enable filetype-specific indenting
filetype plugin on 	" Enable filetype-specific plugins

""" ENCODING SETTINGS
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

""" Auto-completion
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {<CR>}<ESC>O
":inoremap } <c-r>=ClosePair('}')<CR>
:inoremap { {}<ESC>i
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

""" add space before and after  =,  <,  >, +, -, *, /.
inoremap = <c-r>=EqualSign('=')<CR>
inoremap < <c-r>=EqualSign('<')<CR>
inoremap > <c-r>=EqualSign('>')<CR>
"inoremap + <c-r>=EqualSign('+')<CR>
"inoremap - <c-r>=EqualSign('-')<CR>
"inoremap * <c-r>=EqualSign('*')<CR>
"inoremap / <c-r>=EqualSign('/')<CR>
inoremap : <c-r>=Swap()<CR>
inoremap , ,<space>
"support format: += -+ *= /+
function! EqualSign(char)
    if a:char  =~ '='  && getline('.') =~ ".*("
        return a:char
    endif
    let ex1 = getline('.')[col('.') - 3]
    let ex2 = getline('.')[col('.') - 2]
    if ex1 =~ "[-=+><>\/\*]"
        if ex2 !~ "\s"
            return "\<ESC>i".a:char."\<SPACE>"
        else
            return "\<ESC>xa".a:char."\<SPACE>"
        endif
    else
        if ex2 !~ "\s"
            return "\<SPACE>".a:char."\<SPACE>\<ESC>a"
        else
            return a:char."\<SPACE>\<ESC>a"
        endif
    endif
endf 
"swap, for example:  :) -->  ):
function! Swap()
    if getline('.')[col('.') - 1] =~ ")"
        return "\<ESC>la:"
    else
        return ":"
    endif
endf



" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'andymass/vim-matchup' 
Plug 'zhuzhzh/verilog_emacsauto.vim', {'for': ['verilog', 'systemverilog'] }

" Initialize plugin system
call plug#end()

"command:VlogInstGen : generate verilog instance. refer to https://www.vim.org/scripts/script.php?script_id=4151.
so ~/.vim/plugged/vlog_inst_gen.vim
