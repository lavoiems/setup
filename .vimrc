set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" alternatively, pass a path where Vundle should install plugins


" All of your Plugins must be added before the following line
filetype plugin indent on    " required
" ================ General Config ====================
set number "Line numbers are good
set backspace=indent,eol,start "Allow backspace in insert mode
set history=1000 "Store lots of :cmdline history
set showcmd "Show incomplete cmds down the bottom
set showmode "Show current mode down the bottom
set gcr=a:blinkon0 "Disable cursor blink
set visualbell "No sounds
set autoread "Reload files changed outside vim
" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden
set paste "To prevent vim to mess with pasted content
"turn on syntax highlighting
syntax on
set noswapfile
set nobackup
set nowb
" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile
endif
" ================ Indentation ======================
set textwidth=79 "lines longer than 79 columns will be broken
set autoindent
set smartindent
"set smarttab
set shiftwidth=2
set softtabstop=0
set expandtab
set tabstop=2
"set expandtab
filetype plugin on
filetype indent on
" Display tabs and trailing spaces visually
set list listchars=tab:\.\ ,trail:?
set nowrap "Don't wrap lines
set linebreak "Wrap lines at convenient points
" ================ Folds ============================
set foldmethod=indent "fold based on indent
set foldnestmax=3 "deepest fold is 3 levels
set nofoldenable "dont fold by default
" ================ Completion =======================
set wildmode=list:longest
set wildmenu "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
"
" ================ Scrolling ========================
set scrolloff=8 "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
" ================ Custom Settings ========================
"so ~/.yadr/vim/settings.vim
set showmatch
colo koehler
syntax on

filetype on
filetype plugin on
filetype indent on

au BufNewFile,BufRead *.tikz set filetype=tex

call plug#begin()
Plug 'lervag/vimtex'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()


