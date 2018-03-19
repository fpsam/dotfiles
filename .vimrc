" Don't try to be vi compatible
set nocompatible

" Security
set modelines=0

" Show line numbers
set relativenumber
set number

" Show current position
set ruler

" Blink cursor on error
set novisualbell

" Encoding
set encoding=utf-8

" Set to auto read when file changed from outside
set autoread

" Set 7 lines to the cursor
set so=7

" Wild menu
set wildmenu

" Command bar height
set cmdheight=2

"Hide buffer when abandoned
set hid

" Configure backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

""""""""""""""""""SEARCH""""""""""""""""""""""""

set ignorecase
set smartcase
set hlsearch
set incsearch
""""""""""""""""""""""""""""""""""""""""""""""""""

" Show matching bracket
set showmatch
set mat=2

set nobackup
set nowb
set noswapfile

"""""""""""""""""""""TEXT,TAB,INDENT""""""""""""""

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Line break on 500
set lbr
set tw=500

set ai
set si
set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""

"Show status line
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c



autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>



""""""""""""""""""""""PLUGINS"""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
"Plug 'xuhdev/vim-latex-live-preview', {'for': 'tex'}
Plug 'lervag/vimtex'
Plug 'dylanaraps/wal.vim'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-syntastic/syntastic'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'valloric/MatchTagAlways'
Plug 'easymotion/vim-easymotion'
Plug 'flazz/vim-colorschemes'
call plug#end()

"""""""""""""""""VIMTEX"""""""""""""""""""""""""""""""""
let g:vimtex_compiler_latexmk={'callback':0}
let g:vimtex_view_method = 'zathura'

""""""""""""""""""VIM-LATEX-LIVE-PREVIEW""""""""""""""""""
let g:livepreview_previewer = 'zathura'

"""""""""""""""""""""COLORSCHEME"""""""""""""""""""""""""""""""
colorscheme visualstudio
hi NonText ctermbg=none
hi Normal ctermbg=none



""""""""""""""""""""""""ULTISNIPS"""""""""""""""""""""""
let g:UltiSnipsSnippetDirectories=["UltiSnips, mysnippets"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

""""""""""""""""""""""""FUNCTIONS""""""""""""""""""""""""

function! HasPaste()
	if &paste
		return 'PASTE MODE '
	endif
	return ''
endfunction
