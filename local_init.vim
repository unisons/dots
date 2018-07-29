" Setting for visual {
set termguicolors

set background=dark
"let g:solarized_termtrans = 1
let g:solarized_visibility = 'high'
"colorscheme solarized8_flat
colorscheme solarized8_high
if g:colors_name == 'solarized8_flat'
    " from solarized8
    highlight CursorLine cterm=None gui=None ctermbg=236 guibg=#073642 guisp=#eee8d5
endif

set cursorline

let g:airline_powerline_fonts = 1
if g:colors_name =~ 'solarized'
    let g:airline_theme='base16_solarized'
elseif g:colors_name =~ 'molokai'
    let g:airline_theme='molokai'
endif
" }

" Setting for source search {
" }
