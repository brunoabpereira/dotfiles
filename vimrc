set noswapfile  " no swap files
set ruler       " show cursor postion

set number      " show line number
set showmode    " show vim mode
set showcmd     " show command(partial)
set showmatch   " show matching parenthesis

set hlsearch    " highlight search terms
set incsearch   " show search matches as you type

" search case sensitive only if patter contains an uppercase letter
set ignorecase 
set smartcase   

" menu for :e command
set wildmode=longest,list,full
set wildmenu

set shortmess+=F    " do not print filename when switching buffers

set tabstop=4
set shiftwidth=4
set expandtab

" status line
set laststatus=2
set statusline=
set statusline+=%0*     " highlight
set statusline+=\ %n\   " buffer number
set statusline+=-       " separator
set statusline+=\ %f\   " file name 
set statusline+=-       " separator
set statusline+=\ %y\   " fily type
set statusline+=%=      " right side
set statusline+=\ %v\ \ %l/%L\ %3p%%\     " col, ln

set hidden  " opening buffers without saving

syntax on   " syntax highlighting

" unbind command-line-window
map q <Nop>
" visual block bind
nnoremap <C-b> <c-v>
" quit and save binds
map <C-q> :q!<CR> 
map <C-s> :w<CR>
" search and replace in whole file
map <C-f> :%s/
"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" copy-paste out of vim, must install gvim
map <C-c> "+y
map <C-v> "+p

" navigating buffers
map <C-e> :e 
map <C-h> :bp<CR>
map <C-l> :bn<CR>
map <C-w> :bd<CR>
map <C-a> :ls<CR>

" unmap annoying Ex mode
map <S-q> <Nop>

" do not write .viminfo file
let skip_defaults_vim=0
set viminfo=""

" fix color scheme inside tmux
set background=dark
set t_Co=256
