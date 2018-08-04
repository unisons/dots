" Visual colorscheme
Plug 'lifepillar/vim-solarized8'
Plug 'rakr/vim-one'

" Source Search
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'skywind3000/vim-preview'

" Tmux Navigation
Plug 'tmux-plugins/tpm', { 'dir': '~/.tmux/plugins/tpm' }
Plug 'christoomey/vim-tmux-navigator'

" Window Resizer
Plug 'simeji/winresizer'

" Marker
Plug 'inkarkat/vim-mark'

" Auto detect indentation
Plug 'tpope/vim-sleuth'

" Undo Tree
Plug 'mbbill/undotree'

" NERD Tree git support
Plug 'Xuyuanp/nerdtree-git-plugin'

" Buffer delete
Plug 'moll/vim-bbye'

" Dim inactive
Plug 'blueyed/vim-diminactive'
let g:diminactive_enable_focus = 1

" TODO
" [plugin] Fuzzy Search // rarely used so optional
" [plugin] Auto complete
" Search without moving mouse
"  - motion plugin?
"  - Fuzzy search related??
"
" Mouse support
"  - consider again, w/o it, it seems good
"  - ! tmux mouse
" Stop auto comment for single line comment
"  - do it for filetype, refer to comments option
"  - no suitable solution for this
