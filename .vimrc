call pathogen#infect()
call pathogen#helptags()

filetype plugin on

set encoding=utf-8
scriptencoding utf-8
syntax on

set directory=~/.vim/swap//

set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.DS_Store,*.db,.git

set completeopt=menuone,longest,preview
set wildmode=list:longest
set confirm

set t_BE=                " death to bracketed paste
colorscheme molokai
set t_Co=256             " 256 colors

set nowrap               " Don't wrap text
set linebreak            " Don't wrap textin the middle of a word

set colorcolumn=79       " set line marker at 79 chars
set synmaxcol=128        " dont color anything longer than 128 chars
set ruler
set nonumber

set ttyfast              " ive got a fast terminal
set lazyredraw           " to avoid scrolling problems
set showmatch            " Show matching [{()}]
set incsearch            " Search as chars are entered
set hlsearch             " Highlight searchs
set ignorecase smartcase " Smart search regarding case

"" Enable folding based on syntax rules
set foldmethod=syntax
set nofoldenable

"" Adjust the highlighting
highlight Folded guibg=grey guifg=blue

" Markdown
" au BufNewFile,BufFilePre,BufRead *.markdown,*.mdown,*.md,*.txt set filetype=markdown
" autocmd Filetype markdown setlocal nofoldenable spell textwidth=80

" Ruby
" au BufNewFile,BufFilePre,BufRead Vagrantfile,*.rb,Berksfile* set filetype=ruby
" autocmd FileType ruby setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2

" git commits
au BufNewFile,BufRead COMMIT_EDITMSG set spell

" leader stuffs
let mapleader=","
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <space> :nohlsearch<cr>

" make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

" remap ctrl+e to ESC
nnoremap <C-e> <C-[>
inoremap <C-e> <C-[>
vnoremap <C-e> <C-[>

" don't use the arrow keys in all modes
noremap  <Up>    <NOP>
noremap  <Down>  <NOP>
noremap  <Left>  <NOP>
noremap  <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

" Remove for hard mode
" noremap h <NOP>
" noremap j <NOP>
" noremap k <NOP>
" noremap l <NOP>

map <F1> :NERDTreeToggle<CR>
map <F2> :SyntasticToggleMode<CR>

" CtrlP ignore files/dirs
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn))$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
let g:ctrlp_working_path_mode = 'r'

let g:ctrlp_map = '<c-p>'       " Remapping for CtrlP plugin
let g:ctrlp_cmd = 'CtrlP'       " Remapping for CtrlP plugin
let g:ctrlp_show_hidden = 1

let g:ruby_path = system('echo $HOME/.rbenv/shims')

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
