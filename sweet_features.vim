

let g:airline_theme='wombat'
" Don't show seperators
"let g:airline_left_sep=''
"let g:airline_right_sep=''

" Settings
filetype plugin on
filetype indent on


" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

set pastetoggle=<F2>
set clipboard=unnamed
set backspace=2
set backspace=indent,eol,start

" on OSX press ALT and click
set mouse=a
set ttymouse=xterm2

" Enable open Quicksearch Panel elements in new tab
set switchbuf+=usetab,newtab

" Rebind <Leader> key
let mapleader = ","

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-f> :nohl<CR>
vnoremap <C-f> :nohl<CR>
inoremap <C-f> :nohl<CR>

" Configure multicursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Configure IndentLine
let g:indentLine_color_term = 239
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

let g:indentLine_leadingSpaceChar="·"
let g:indentLine_leadingSpaceEnabled=1

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" Enable jump between lines with left-right keys
set whichwrap+=<,>,h,l,[,]

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Show extra whitespace at line end
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
if g:t_color_256
    set t_Co=256
endif

" Set colortheme
execute 'color' g:theme_color 

" Showing line numbers and length
set number  " show line numbers
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
" set tw=79   " width of document (used by gd)
" set colorcolumn=80
" highlight ColorColumn ctermbg=233

" Identation generics
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" easier formatting of paragraphs
vmap Q gq
nmap Q gqap


autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype less setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4
autocmd Filetype vim setlocal ts=4 sts=4 sw=4


" Useful settings
set history=700
set undolevels=700


" Config powerline special chars
if tolower(g:status_bar) == 'powerline'
	set guifont=Inconsolata\ for\ Powerline:h15
	let g:Powerline_symbols = 'fancy'
	set encoding=utf-8
	set t_Co=256
	set fillchars+=stl:\ ,stlnc:\
	set term=xterm-256color
	set termencoding=utf-8
endif


" Config airline special chars
if tolower(g:status_bar) == 'airline'
	let g:airline_powerline_fonts = 1
endif

augroup CommentStrings
    autocmd!
    autocmd FileType i3 setlocal commentstring=#\ %s
    autocmd FileType jinja setlocal commentstring={#\ %s\ #}
    autocmd FileType xdefaults setlocal commentstring=!\ %s
    autocmd FileType gohtmltmpl setlocal commentstring={{/*\ %s\ */}}
    autocmd FileType nginx setlocal commentstring=#\ %s
augroup END

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew 
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>









