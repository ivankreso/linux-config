" this can be used to separate config for gvim and vim console
if has("gui_running")
   " only gvim settings
   " hide gvim shitbars
   "set guioptions+=a
   "set guioptions+=c
   set guioptions-=e
   set guioptions-=m  "remove menu bar
   set guioptions-=T  "remove toolbar
   set guioptions-=r  "remove right-hand scroll bar
   set guioptions-=l
   set guioptions-=L
   " Maximize gvim window.
   set lines=58 columns=160
   " set font for gvim
   set guifont=Inconsolata\ Medium\ 10
endif

" set utf-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" set <leader> to , (default is \)
let mapleader = ","
let maplocalleader = ","

"au BufNewFile,BufRead *.cpp set syntax=cpp11

" Vundle plugin manager
set nocompatible               " be iMproved
filetype off                   " required!

set tags=./tags;/
"set tags=~/.vim/tags/cpp,tags,.tags,../tags,/usr/include/opencv2/opencv_tags
set tags+=~/.vim/tags/cpp
set tags+=/usr/include/opencv2/opencv_tags
"set tags+=tags,/usr/include/opencv2/opencv_tags
" Load standard tag files
"set tags+=~/.vim/tags/cpp

"au BufWritePost *.c,*.cpp,*.h silent! !ctags -R &

" let Vundle manage Vundle
" required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Plugins to install/update with :BundleInstall/BundleUpdate
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
"Bundle 'fholgado/minibufexpl.vim'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'tpope/vim-commentary'
"Bundle 'scrooloose/nerdcommenter'
"Bundle 'klen/python-mode'  - lose
"Bundle 'altercation/solarized'
"Bundle 'Lokaltog/TagHighlight'
"Bundle 'xolox/vim-easytags'
" others: vim-cpp (aur), pathogen

filetype plugin indent on     " required!

" latexsuite
"set grepprg=grep\ -nH\ $*
"let g:tex_flavor = "latex"

" Needed for Syntax Highlighting and stuff
"filetype on
"filetype plugin on
syntax enable

" Favorite colorscheme
" ironman, desert, inkpot, neon, wombat256, zenburn, molokai
colorscheme molokai
"colorscheme darkerdesert
set background=dark


" search options
set hlsearch
set incsearch
set ignorecase
set smartcase

" Who doesn't like autoindent? - we dont need this any more
" set autoindent
" use intelligent indentation for C - this is deprecated if favor of cindent
" set smartindent
" but disable it for python
" au! FileType python setl nosmartindent

" tab options
set shiftwidth=3
set tabstop=3
set softtabstop=3
" expand tabs to spaces
set expandtab
"set smarttab - not needed
" Enable mouse support in console
set mouse=a
"map <ScrollWheelUp> <C-Y><C-Y>
"map <ScrollWheelDown> <C-E><C-E>
"map <ScrollWheelUp> <C-U>
"map <ScrollWheelDown> <C-D>
" Line Numbers PWN!
"set number
set nonumber

" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
set colorcolumn=120
" highlight matching braces
set showmatch
" intelligent comments
"set comments=sl:/*,mb:\ *,elx:\ */


" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" disable autocomments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"set formatoptions-=cro

" ----------Key shortcuts-----------
" NERDtree toggle - no recursive map needed
noremap <C-b> :NERDTreeToggle<CR>

" Swap ; and :  Convenient.
nnoremap ; :
nnoremap : ;

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" unlock Ctrl+j from bash so we can map it to move cursor in insert mode
let g:BASH_Ctrl_j = 'off'
let g:C_Ctrl_j = 'off'
" Easy cursor navigation in insert mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"noremap <C-t> :TlistToggle<CR>
"noremap <C-y> :TagbarToggle<CR>
noremap <F8> :TagbarToggle<CR>

" disable arrows for better learning curve
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>


" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full


" rest is plugin options:

" TagBar
"let g:tagbar_autoshowtag = 1
"let g:tagbar_left = 1
"let g:tagbar_sort = 1
"let g:tagbar_autofocus = 1

" minibufexpl options
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
"let g:miniBufExplForceSyntaxEnable = 0 
"let g:miniBufExplSplitBelow = 0
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMaxSize = 0
"let g:miniBufExplTabWrap = 1
"let g:miniBufExplUseSingleClick = 1
"let g:miniBufExplCheckDupeBufs = 0

" show hidden files in nerdtree
let NERDTreeShowHidden=1

" youcompleteme options
set completeopt=menu
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '/home/kreso/Dropbox/code/cpp/.ycm_extra_conf.py'
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_autoclose_preview_window_after_completion = 0
"let g:ycm_autoclose_preview_window_after_insertion = 0
"let g:ycm_register_as_syntastic_checker = 0

" Syntastic options
"let g:syntastic_cpp_checker = "ycm"
"let g:syntastic_cpp_compiler_options = ' -std=c++11'

"set updatetime=4000
"let g:ycm_allow_changing_updatetime = 0
"let g:easytags_updatetime_min = 4000


" Got backspace?
"set backspace=2

" Real men use gcc
"compiler gcc

" Use english for spellchecking, but don't spellcheck by default
"if version >= 700
"   set spl=en spell
"   set nospell
"endif



" Install DoxygenToolkit from http://www.vim.org/scripts/script.php?script_id=987
let g:DoxygenToolkit_briefTag_pre=""
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@return "
"let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
"let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Gerhard Gappmeier <gerhard.gappmeier@ascolab.com>" 
"let g:DoxygenToolkit_licenseTag="My own license"

" Enhanced keyboard mappings
"
" in normal mode F2 will save the file
"nnoremap <F2> :w<CR>
"" in insert mode F2 will exit insert, save, enters insert again
"inoremap <F2> <ESC>:w<CR>i
"" map F3 and SHIFT-F3 to toggle spell checking
"nmap <F3> :setlocal spell spelllang=en<CR>
"imap <F3> <ESC>:setlocal spell spelllang=en<CR>i
"nmap <S-F3> :setlocal spell spelllang=<CR>
"imap <S-F3> <ESC>:setlocal spell spelllang=<CR>i
"" switch between header/source with F4 C++
""map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
"" switch between header/source with F4 C
"map <F4> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>
"" recreate tags file with F5
"map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"" create doxygen comment
"map <F6> :Dox<CR>
"" build using makeprg with <F7>
"nmap <F7> :make<CR>
"" build using makeprg with <F7>, in insert mode exit to command mode, save and compile
"imap <F7> <ESC>:w<CR>:make<CR>
"" build using makeprg with <S-F7>
"map <S-F7> :make clean all<CR>
"" macro recording
"nmap <S-F8> qq
"nmap <F8> @q
"" goto definition with F12
"map <F12> <C-]>
"" in diff mode we use the spell check keys for merging
"if &diff
"  " diff settings
"  map <M-Down> ]c
"  map <M-Up> [c
"  map <M-Left> do
"  map <M-Right> dp
"  map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
"else
"  " spell settings
""  :setlocal spell spelllang=en
"  " set the spellfile - folders must exist
"  set spellfile=~/.vim/spellfile.add
"  map <M-Down> ]s
"  map <M-Up> [s
"endif

