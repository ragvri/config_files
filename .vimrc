set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'

Plugin 'preservim/nerdcommenter'

Plugin 'valloric/youcompleteme'
" Note: youcomplete me requires you to compile it; go to
" .vim/bundle/youcompleteme. then > python3 setup.py --all 
Plugin 'scrooloose/syntastic' 
Plugin 'morhetz/gruvbox'
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

inoremap jj <Esc>
let mapleader=" "
map <C-n> :NERDTreeToggle<CR>
" Add space after comment delimeter by default 
let g:NERDSpaceDelims = 1
" Allow commenting and uncommenting blank lines
let g:NERDCommentEmptyLines = 1
" show line number
set number
set background=dark
" :color desert

" ========syntastic settings 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" color scheme
" colorscheme gruvbox
