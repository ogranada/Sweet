
" ===============================
" let Vundle manage Vundle
Bundle 'gmarik/vundle'
" ===============================

" ===============================
" Files navigator
Bundle 'scrooloose/nerdtree'
" ===============================

" ===============================
" Comments tool
Bundle 'scrooloose/nerdcommenter'
" ===============================

" ===============================
" Class/module browser
Bundle 'majutsushi/tagbar'
" ===============================

" ===============================
" Zen coding
Bundle 'mattn/emmet-vim'
" ===============================
" Git integration
Bundle 'motemen/git-vim'
Bundle 'tpope/vim-fugitive'
" Git/mercurial/others diff icons on the side of the file lines
Bundle 'mhinz/vim-signify'
" ===============================

" ===============================
" Snippets manager (SnipMate), dependencies, and snippets repo
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'
" ===============================

" ===============================
" Better autocompletion
Bundle 'Shougo/neocomplcache.vim'
" ===============================

" ===============================
" Code and files fuzzy finder
Bundle 'kien/ctrlp.vim'
" ===============================

" ===============================
" Extension to ctrlp, for fuzzy command finder
Bundle 'fisadev/vim-ctrlp-cmdpalette'
" ===============================

" ===============================
" Window chooser
Bundle 't9md/vim-choosewin'
" ===============================

" ===============================
" Python and other languages code checker
Bundle 'scrooloose/syntastic'
" ===============================

" ===============================
" Paint css colors with the real color
Bundle 'lilydjwg/colorizer'
" ===============================

" ===============================
" Autocomplete square and curly brackets
Bundle 'Raimondi/delimitMate'
" ===============================

" ===============================
" Identation Highlight
Bundle 'Yggdroot/indentLine'
" ===============================

" ===============================
" multiple cursors
Bundle 'terryma/vim-multiple-cursors'
" ===============================

" ===============================
" Better tabulation
Bundle 'godlygeek/tabular'
" ===============================

" ===============================
" editorconfig: identation for all filetypes
Bundle 'editorconfig/editorconfig-vim'
" ===============================

" Util Bars
" ===============================
if tolower(g:status_bar) == 'powerline'
    " Poweline
	execute 'Bundle' '"Lokaltog/vim-powerline"'
    execute 'Bundle' '"powerline/powerline"'
elseif tolower(g:status_bar) == 'airline'
    " Airline
    execute 'Bundle' '"vim-airline/vim-airline"'
    execute 'Bundle' '"vim-airline/vim-airline-themes"'
endif
Bundle 'powerline/fonts'
" ===============================

" ===============================
" colors 
Bundle 'flazz/vim-colorschemes'
if g:instalation_done 
    autocmd VimEnter,Colorscheme * :!cp -R ~/.vim/bundle/vim-colorschemes/* ~/.vim/colors &
    autocmd VimEnter,Colorscheme * :!sh ~/.vim/bundle/fonts/install.sh &
endif
" ===============================

