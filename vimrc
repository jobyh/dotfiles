" Pathogen
call pathogen#infect()
syntax on
filetype plugin indent on

" Colourscheme
syntax enable
set background=dark
"set background=dark
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
" show whitespace at end of lines
match error /\s\+$/
hi error guibg=red
hi error guifg=black
colorscheme solarized
"colorscheme gummybears

"----------------------------------------------------------
" SETTINGS
"----------------------------------------------------------
set autoindent

syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set number
set cursorline

"code folding
set foldmethod=indent
set foldlevel=99
"set nofoldenable

"search settings
set hlsearch
set incsearch

" show whitespace at end of lines
match error /\s\+$/
hi error guibg=red
hi error guifg=black

"auto comment newlines after comment start in INSERT mode
:set formatoptions+=r

" highlight bg color of current line"
hi cursorline guibg=#333333

"----------------------------------------------------------
" KEY REMAPPING
"----------------------------------------------------------
"

"auto-insert closing brace from http://vim.wikia.com/wiki/Automatically_append_closing_characters
"
inoremap {  {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{  {
inoremap {}  {}

inoremap (  ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((  (
inoremap ()  ()

nmap <Space> z
nmap <Space><Space> zz

" Insert file from snippets
nnoremap :snpt :r ~/snpt/
" Remove trailing whitespace shortcut (includes user confirm)
nnoremap :rmws :%s/\s\+$//g<CR>


"SYNTAX BASED SETTINGS ----------------------------------------------

" Show indent levels using python indent plugin.
" autocmd FileType python execute <Leader>ig

" WORD PROCESSING
"----------------------------------------------------------
" some settings from <http://tech.geoff.me/2008/05/vim-word-processor.html> to make vim better as a word processor
autocmd BufRead *\.txt setlocal formatoptions=lr
"wrap lines by word (character default)
autocmd BufRead *\.txt setlocal lbr
"map j and k keys so that they move up and down inside wrapped lines
autocmd BufRead *\.txt map j gj
autocmd BufRead *\.txt map k gk
autocmd BufRead *\.txt setlocal smartindent

" Highlight trailing whitespace.
autocmd ColorScheme * highlight RedundantSpaces ctermbg=red
"autocmd BufRead *\.txt setlocal spell spelllang=en_GB

"----------------------------------------------------------

" Tagbar plugin
nmap <F8> :TagbarToggle<CR>

" Indent guides plugin
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" PHP documenter script bound to Control-P
autocmd FileType php inoremap <C-p> <ESC>:call PhpDocSingle()<CR>i
autocmd FileType php nnoremap <C-p> :call PhpDocSingle()<CR>
autocmd FileType php vnoremap <C-p> :call PhpDocRange()<CR>

" Unset 'enter Ex mode' command
nnoremap Q <nop>

" Ctrl-P plugin binding
let g:ctrlp_map = '<Leader>o'
let g:ctrlp_cmd = 'CtrlP'

" Processing Vim plugin settings.
" Offline docs.
let processing_doc_path="/Applications/Processing.app/Contents/Resources/Java/modes/java/reference"
filetype plugin on
let g:use_processing_java=1
