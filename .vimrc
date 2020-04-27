set nocompatible

""" Plugins
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'

" Plug 'Yggdroot/indentLine'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mhinz/vim-signify'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'

Plug 'preservim/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'junegunn/fzf', { 'do': './install --bin'  }
Plug 'junegunn/fzf.vim'

Plug 'sheerun/vim-polyglot'

call plug#end()

""" Vim settings
silent !mkdir ~/.vim/tmp > /dev/null 2>&1
set directory^=~/.vim/tmp//

set mouse=a
set number
set cursorline
set autoindent
set smarttab
set autoread
set ignorecase
set smartcase
set scrolloff=3
set incsearch
set history=1000
set listchars=tab:→\ ,nbsp:␣,trail:·

""" Key bindings
" nmap <C-[> :tabprevious<CR>
nmap <C-]> :tabnext<CR>
nmap <C-w> :tabclose<CR>
nmap <C-t> :tabnew<CR>
" nmap <C-b> :NERDTreeToggle<CR>
" FIXME: does not work unless :E called previously...
nmap <C-b> :Rexplore<CR>
nmap <leader>w :w<CR>

cmap w!! w !sudo tee % > /dev/null

" Shift tab - deindent
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

""" Airline
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#close_symbol = '×'
let g:airline#extensions#tabline#show_close_button = 1

""" FZF
" let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
nmap <C-p> :Files<CR>

""" Color schemes
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
colorscheme codedark

""" IndentLine
" let g:indentLine_color_term = 239
" let g:indentLine_char = '│'
" " " '¦'
" let g:indentLine_leadingSpaceChar = '·'
" let g:indentLine_leadingSpaceEnabled = 1
" let g:indentLine_indentLevel = 2

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=235

set tabstop=2
set shiftwidth=2
set expandtab

""" Signify
let g:signify_sign_change = '~'
nnoremap <leader>gd :SignifyDiff<CR>

""" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

""" Tagbar
nmap <leader>p :TagbarToggle<CR>
let g:tagbar_indent = 1
let g:tagbar_foldlevel = 0
let g:tagbar_sort = 0

