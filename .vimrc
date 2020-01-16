" show existing tab with 4 spaces width
filetype plugin indent on
" indenting with '>' use 4 spaces width
set tabstop=4
" on pressing tab insert 4 spaces
set shiftwidth=4
set expandtab
set number
" FORMATTERS
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

set encoding=UTF-8

call plug#begin('~/.vim/plugins')
  " Nerd tree
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  "Fuzzy Finder
  Plug 'junegunn/fzf.vim'
  "Auto Pairs
  Plug 'jiangmiao/auto-pairs'
  "Comments
  Plug 'tpope/vim-commentary'
  "Oceanic theme
  Plug 'markvincze/panda-vim', {'as' : 'panda'}
  "darkone.vim
  Plug 'joshdick/onedark.vim' 
  "Yet Another Javascript syntax
  Plug 'othree/yajs.vim'
  "JSX support
  Plug 'mxw/vim-jsx'
  " Ale - async linting
  Plug 'dense-analysis/ale'
  
  "Prettier 
  Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }
  " Auto import file paths
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
  "Always load this last
  Plug 'ryanoasis/vim-devicons'
call plug#end()

set guifont=Hack_Nerd_Font:h11

" Toggle nerd tree 
map <C-n> :NERDTreeToggle<CR>

" colorscheme configs
 syntax enable
" for vim 7
 set t_Co=256

" for vim 8
 if (has("termguicolors"))
  set termguicolors
 endif
colorscheme panda
let g:onedark_termcolors=25
" Always keep ale gutter open
let g:ale_sign_column_always = 0
" Change ale/eslint error and warning
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

" Open nerdtree on right side
let g:NERDTreeWinPos = "right"

" FORMATTERS
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css
" mapping to surround selected text in quotes
vmap " :s/\%V\(.*\)\%V/"\1"<CR>
vmap ' :s/\%V\(.*\)\%V/'\1'<CR>
