Plug 'tpope/vim-sensible'

if !has('nvim')
    Plug 'noahfrederick/vim-neovim-defaults'
endif

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
Plug 'inkarkat/vim-ingo-library' " Dep of vim-mark

" Auto detect indentation
"Plug 'tpope/vim-sleuth'
Plug 'ciaranm/detectindent'

" Undo Tree
Plug 'mbbill/undotree'

" NERD Tree git support
Plug 'Xuyuanp/nerdtree-git-plugin'

" Buffer delete
Plug 'moll/vim-bbye'
" Buffer manager
Plug 'jlanzarotta/bufexplorer'

" Dim inactive
Plug 'blueyed/vim-diminactive'
let g:diminactive_enable_focus = 1

" Auto complete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'terryma/vim-multiple-cursors'

" Vim sugar for the UNIX shell commands that need it the most.
Plug 'tpope/vim-eunuch'

" Code Format
Plug 'editorconfig/editorconfig-vim'

" Search
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-repeat'
Plug 'haya14busa/vim-asterisk'
let g:asterisk#keeppos = 1

Plug 'terryma/vim-smooth-scroll'

Plug 'thirtythreeforty/lessspace.vim' " remove trailing whitespace on editting line
let g:lessspace_normal = 0

Plug 'farmergreg/vim-lastplace' "intelligent repopen last position handling git commit message

Plug 'thaerkh/vim-indentguides'

"Plug 'junegunn/vim-easy-align' " TODO review this plugin

" TODO
" Stop auto comment for single line comment
"  - do it for filetype, refer to comments option
"  - no suitable solution for this
"
"  [plug] easy align
