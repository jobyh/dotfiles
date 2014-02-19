"   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"   __ _  ____  _  __(_)_ _  ________
"  /  ' \/ __/ | |/ / /  ' \/ __/ __/
" /_/_/_/_/    |___/_/_/_/_/_/  \__/
"
" ~~~~~~~~~~~~ /></ ~~~~~~~~~~~~~~
"
" Joby Harding's .vimrc 2013
" https://github.com/jobyh/mr_vimrc
"
" Any workstation-specific Vim config
" I tend to put into a local .gvimrc
" As it's generally the case that the
" terminal settings also control font
" size of non-gui Vim.
"
" The plugins section comes first so
" that it's possible to override any
" settings automatically set by them
" later in the config file.
"

" Plugins
" =======

" Pathogen ~ https://github.com/tpope/vim-pathogen
" --------
" This call needs to be first (package manager).
call pathogen#infect()

" Generate helptags.
call pathogen#helptags()

" Tagbar ~ https://github.com/majutsushi/tagbar
" ------
" Toggle display with F8.
nmap <F8> :TagbarToggle<CR>
" Sort tags by order in file (default is alphabetical).
let g:tagbar_sort = 0

" Software Capslock ~ https://github.com/tpope/vim-capslock
" -----------------
imap <C-L> <Plug>CapsLockToggle

" Colorscheme
" ===========
" This section needs to be after Pathogen call.
set background=dark
colorscheme solarized


" General settings
" ================
" Show line numbers.
set number
" Display cursor line.
set cursorline
" Unset enter Ex mode.
nnoremap Q <nop>
" File type detection.
filetype on


" GUI Settings
" ============
" Tend to use my .gvimrc for
" localized settings so any
" global GUI settings live here.

" Don't show the toolbar.
if has('gui_running')
    " Remove menu bar.
    set guioptions -=m
    " Remove toolbar.
    set guioptions -=T
    " Remove right scrollbar.
    set guioptions -=r
    " Remove right scrollbar in splits.
    set guioptions -=R
    " Remove left scrollbar.
    set guioptions -=l
    " Remove left scrollbar in splits.
    set guioptions -=L
endif


" Tab & indent settings
" =====================
" Set automatic indentation.
set smartindent
" set cindent

" ~ Hard tabs ~
" Size of <Tab> in spaces.
set tabstop=2
" Size of auto indent in spaces.
set shiftwidth=2
set expandtab


" Text search
" ===========
" Highlight search matches.
set hlsearch
" Find matches as you type.
set incsearch


" Color and highlighting
" ======================
" Enable syntax highlighting.
syntax enable
" Show trailing whitespace.
match error /\s\+$/
" Error background red.
hi error ctermbg=red
hi error guibg=red
" Error text black.
hi error ctermfg=black
hi error guifg=black


" Key mappings
" ============
" Center on current line.
nnoremap <Space><Space> zz
" Current line to top.
nnoremap <Space>t zt
" Current line to bottom.
nnoremap <Space>b zb
" Remove trailing whitespace.
nnoremap <Leader>rmws :%s/\s\+$//g<CR>
" Remove ^M line end additional characters.
nnoremap <Leader>rmle :%s/\+$//g<CR>
" Open .vimrc in a split ~ http://learnvimscriptthehardway.stevelosh.com/chapters/07.html
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
" Open .gvimrc in a split.
nnoremap <Leader>eg :vsplit $MYGVIMRC<CR>
" Source .vimrc ~ http://learnvimscriptthehardway.stevelosh.com/chapters/07.html
nnoremap <Leader>sv :source $MYVIMRC<CR>
" Source .gvimrc
nnoremap <Leader>sg :source $MYGVIMRC<CR>
" Change split.
nnoremap <Leader>w <C-W>


" Syntax specific mappings
" ========================
" Insert semicolon at end of line.
autocmd FileType php,javascript,scss,css nnoremap ;; A;<Esc>
" Insert comma at end of line.
autocmd FileType php,javascript nnoremap ,, A,<Esc>
" Insert colon at end of line.
autocmd FileType python nnoremap :: A:<Esc>
" Generic python indent settings.
autocmd FileType python set tabstop=4
autocmd FileType python set shiftwidth=4


" Scrolling
" =========
" Number of lines from vertical edge to start scrolling.
set scrolloff=7

" Buffer settings
" ===============
" Map left and right arrows to previous and next buffer.
noremap <left> :bp<CR>
noremap <right> :bn<CR>

" Format options
" ==============
" Auto insert comment leader options.
set formatoptions+=r,o,c

" Filetype-specific settings
" ==========================
" Conf.
autocmd BufRead,BufNewFile *.conf setfiletype dosini
" Markdown.
autocmd BufRead,BufNewFile *.md set syntax=markdown
