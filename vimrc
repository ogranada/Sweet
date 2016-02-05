
" Based on sample .vimrc file by Martin Brochhaus
" Presented at PyCon APAC 2012

set nocompatible

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
let g:instalation_done = !filereadable(vundle_readme)
if g:instalation_done 
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    " FTP 
    silent !mkdir -p ~/.vim/ftplugin
    silent !wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
 
    echo "Installing Colors..."
    echo ""
    silent !mkdir -p ~/.vim/colors
    silent !wget -O ~/.vim/colors/wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
    silent !wget -O ~/.vim/colors/molokai.vim https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
 
    echo "Installing Pathogen..."
    echo ""
    silent !mkdir -p ~/.vim/autoload ~/.vim/bundle
    silent !wget -O ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
 
    echo "Downloading powerline fonts" 
    echo ""
    silent !git clone https://github.com/powerline/fonts ~/.powerlineFonts
    silent !sh ~/.powerlineFonts/install.sh
    " silent !wget -O /tmp/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
    " silent !wget -O /tmp/10-powerline-symbols.conf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
    " silent !fc-cache -vf ~/.fonts
    " silent !mkdir -p ~/.fonts/ && mv /tmp/PowerlineSymbols.otf ~/.fonts/
    " silent !mv /tmp/10-powerline-symbols.conf ~/.config/powerline
 
    let iCanHazVundle=0
endif

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
call pathogen#infect()

" Define base variables

let g:t_color_256 = 0
let g:status_bar = "airline"

" Import files
" Config
source ~/.sweetvim/sweet_config.vim
" Bundles
source ~/.sweetvim/sweet_bundles.vim
source ~/.sweet_user_bundles.vim
" ============================================================================
" Install plugins the first time vim runs

if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif



" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on


" Run features config
source ~/.sweetvim/sweet_features.vim

" ===============================
" Plugins settings and mappings
source ~/.sweetvim/sweet_kbdmaps.vim
source ~/.sweet_user_kbdmaps.vim

