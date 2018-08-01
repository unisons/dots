" Setting for visual {
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=dark
colorscheme solarized8_high
"colorscheme solarized8_flat
"let g:solarized_termtrans = 1
let g:solarized_visibility = 'high'

"colorscheme one
"let g:one_allow_italics = 1
"set background=dark
"colorscheme one

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

" Setting for c.vim
"  disable for nativation between panes(windows)
let g:C_Ctrl_j = 'off'

" Setting for source search {

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
