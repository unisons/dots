"----------------------------------------------------
" Setting for visual {
"----------------------------------------------------
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

if 1
  set background=dark
  colorscheme solarized8_high
  "colorscheme solarized8_flat
  "let g:solarized_termtrans = 1
  let g:solarized_visibility = 'high'
elseif 1
  colorscheme one
  let g:one_allow_italics = 1
  set background=dark
  colorscheme one
endif

if exists('g:colors_name')
  if g:colors_name == 'solarized8_flat'
    " from solarized8
    highlight CursorLine cterm=None gui=None ctermbg=236 guibg=#073642 guisp=#eee8d5
  endif
endif

set cursorline

let g:airline_powerline_fonts = 1
if exists('g:colors_name')
  if g:colors_name =~ 'solarized'
    let g:airline_theme='base16_solarized'
    "let g:airline_theme='solarized'
    "let g:airline_solarized_bg='dark'
  elseif g:colors_name =~ 'molokai'
    let g:airline_theme='molokai'
  elseif g:colors_name =~ 'one'
    let g:airline_theme='one'
  else
    let g:airline_theme='one'
  endif
endif

let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_char = '›│|⎸▏' " only first charactor has effect
let g:indentLine_setColors = 0
highlight Conceal ctermfg=243 guifg=#657b83

"}

"----------------------------------------------------
" Setting for autoread {
"----------------------------------------------------
" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
"autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
autocmd FocusGained,BufEnter * if mode() != 'c' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
"}

"----------------------------------------------------
" Setting for Navigation {
"----------------------------------------------------
" c.vim : disable for nativation between panes(windows)
let g:C_Ctrl_j = 'off'

" NERDTree : Disalbe Ctrl + j/k for pane navigation
let g:NERDTreeMapJumpNextSibling = 'J'
let g:NERDTreeMapJumpPrevSibling = 'K'
" }

"----------------------------------------------------
" Setting for source search {
"----------------------------------------------------
" add more options to ctags, including line number
"let g:gutentags_ctags_extra_args = [ '--fields=+niSz' ]
let g:gutentags_ctags_extra_args = [ '--fields=+n' ]
" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']
" config project root markers.
let g:gutentags_project_root = ['.root']
" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')
" forbid gutentags adding gtags databases
let g:gutentags_auto_add_gtags_cscope = 0
"}

"----------------------------------------------------
" Setting for undo tree {
"----------------------------------------------------
if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
  nnoremap <F5> :UndotreeToggle<cr>
endif
" }

"----------------------------------------------------
" Setting for NERD tree {
"----------------------------------------------------
function! s:myNERDTreeSwitch( cmd )
  let s:bufname = expand('%')
  let s:bufpath = expand('%:p')
  let s:bufexist = filereadable( s:bufpath )
  if s:bufname =~ 'NERD_tree'
    execute 'wincmd p'
  elseif empty( s:bufname ) == 1 || s:bufexist == 0 "emtpy or not exist
    execute 'NERDTreeFocus'
  else
    execute a:cmd
  endif
endfunction
nnoremap <silent> <F2> :call <sid>myNERDTreeSwitch('NERDTreeFind')<CR>
nnoremap <silent> <F3> :call <sid>myNERDTreeSwitch('NERDTreeFocus')<CR>
" }

"----------------------------------------------------
" Setting for Tab/Buffer Control {
"----------------------------------------------------
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <silent> <leader><Tab> :Bdelete<CR>
nmap <silent> <Tab> <Plug>AirlineSelectNextTab<CR>
nmap <silent> <S-Tab> <Plug>AirlineSelectPrevTab<CR>
" }

"----------------------------------------------------
" Setting for deoplete {
"----------------------------------------------------
let g:UltiSnipsExpandTrigger="<c-i>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" }

"----------------------------------------------------
" Setting for windresizer {
"----------------------------------------------------
let g:winresizer_start_key="<C-w>e"
" }

"----------------------------------------------------
" Setting for search {
"----------------------------------------------------
nmap / <Plug>(incsearch-forward)
nmap ? <Plug>(incsearch-backward)
nmap g/ <Plug>(incsearch-stay)

nmap <space>/ <Plug>(easymotion-sn)
omap <space>/ <Plug>(easymotion-tn)

nmap z? <Plug>(incsearch-fuzzy-?)
nmap z/ <Plug>(incsearch-fuzzy-stay)

nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>
" }

"----------------------------------------------------
" Setting mouse
"----------------------------------------------------
set mouse=n

"----------------------------------------------------
" Setting for smooth/animated scroll
"----------------------------------------------------
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*3/2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*3/2, 0, 4)<CR>
