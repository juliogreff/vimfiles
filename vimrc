set nocompatible

source ~/.vim/vundlerc " initializes vundle
source ~/.vim/vundles  " load bundles

if has("gui_macvim")       " macvim specific stuff
    set guifont=Monaco:h12 " set font
endif

if has("gui_running")    " gui specific stuff. includes macvim and gvim
    set guioptions=egrt  " removes toolbars
endif

set colorcolumn=80   " no code after 80 columns!
set modelines=0

set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set shiftround
set backspace=indent,eol,start
set scrolloff=5
set nowrap

set encoding=utf-8
set ttyfast

set wildmenu
set wildmode=list:full

set ruler
set number
set foldmethod=marker
set list
set listchars=tab:▸\ ,eol:¬

set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" \v handles regexes like perl
nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
" clears search highlights
nnoremap <cr> :noh<cr>
" tabs matching brackets
nnoremap <tab> %
vnoremap <tab> %

" strips trailing whitespaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" convert tabs to spaces
nnoremap <leader>T :%s/\t/    /g<cr>:let @/=''<cr>

syntax enable
colorscheme ir_black
set background=dark

" Command-Option-(Left/Right) to switch tabs
nnoremap <M-D-Left> :tabp<cr>
nnoremap <M-D-Right> :tabn<cr>
inoremap <M-D-Left> <esc>:tabp<cr>
inoremap <M-D-Right> <esc>:tabn<cr>

set backup
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set writebackup

" Sets 2-spaces indentation for Ruby
autocmd Filetype ruby setlocal ts=2
autocmd Filetype ruby setlocal sts=2
autocmd Filetype ruby setlocal sw=2

" Sets 2-spaces indentation for YAML
autocmd BufNewFile,BufRead *.yaml,*.yml setf yaml
autocmd Filetype yaml setlocal sw=2
autocmd Filetype yaml setlocal sts=2

autocmd BufNewFile,BufRead *.clj setf clojure

autocmd BufNewFile,BufRead *.go setf go

autocmd BufNewFile,BufRead *.ejs setf html

autocmd Filetype javascript setlocal ts=2
autocmd Filetype javascript setlocal sts=2
autocmd Filetype javascript setlocal sw=2

autocmd Filetype php setlocal noexpandtab

nnoremap <silent> <F2> :NERDTreeToggle<cr>
inoremap <silent> <F2> <esc>:NERDTreeToggle<cr>

nnoremap <silent> <F1> :Errors<cr>
inoremap <silent> <F1> <esc>:Errors<cr>

let g:user_zen_settings = {
\  'indentation' : '    '
\}

let g:syntastic_enable_signs=1

let g:syntastic_disabled_filetypes=['html']

set mouse=a

" keep buffer
set viminfo='10,\"30,:20,%,n~/.viminfo
au BufReadPost * if line("'\"")|execute("normal `\"")|endif

set pastetoggle=<F4>

" tabs
nnoremap <F11> :tabp<cr>
nnoremap <F12> :tabn<cr>

set wildignore+=.git\*,.hg\*,.svn\*

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Unfuck my screen
nnoremap U :syntax sync fromstart<cr>:redraw!<cr>
