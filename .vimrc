" Pathogen requirements
set nocompatible
filetype off
" Vundle requirements
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
" PLUGINS
" ++++++++++++++++++++++++++++
" http://tinyurl.com/mwm8dsp

" Plugins on GitHub
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
" Plugin 'powerline/fonts'
Plugin 'tomtom/tcomment_vim'
Plugin 'morhetz/gruvbox'
" Plugin 'vim-scripts/restore_view.vim'
Plugin 'ap/vim-css-color'
" Plugin 'digitaltoad/vim-jade'
" Plugin 'digitaltoad/vim-pug'
" Plugin 'gavocanov/vim-js-indent'
Plugin 'mxw/vim-jsx'
" Plugin 'othree/yajs.vim'
" Plugin 'othree/javascript-libraries-syntax.vim'
" Plugin 'chrisbra/csv.vim'
" Plugin 'terryma/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'

" ++++++++++++++++++++++++++++
filetype plugin indent on


" Layout
set cursorline
set colorcolumn=80
set title
set ruler
set number
set mouse=a
" Indenting
set cindent
set smartindent
" Tabbing
set tabstop=2
set shiftwidth=2
set expandtab
" ----------------------------
set encoding=utf-8                    " Unicode character Support
set backspace=indent,eol,start        " Deleting
set completeopt=menu,menuone,longest  " Completion
set path+=**                          " Fuzzy file search
" ----------------------------
" ColorScheme
set t_Co=256
set background=dark
syntax on
silent! colorscheme gruvbox
" Swap file directory
" Stop swp polluting the working directory
set backupdir=$HOME/.vim/tmp
set directory=$HOME/.vim/tmp
set backupcopy=yes

" NERDTree Configs
map <C-L> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Airline Configs
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'unicode'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" Key Mappings
" Show the highlight group names for syntax highlighting
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Toggle search term highlighting
map <C-H> :set hlsearch!<CR>

" MIME Type / Language Mappings
au BufRead,BufNewFile *.resx set filetype=xml
au BufRead,BufNewFile *.mustache set filetype=javascript
au BufRead,BufNewFile Gruntfile set filetype=javascript
au BufRead,BufNewFile Guardfile set filetype=ruby
