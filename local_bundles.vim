Plug 'tpope/vim-sensible'

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

" Auto complete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'terryma/vim-multiple-cursors'

" Vim sugar for the UNIX shell commands that need it the most.
Plug 'tpope/vim-eunuch'

Plug 'editorconfig/editorconfig-vim'

Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-repeat'

Plug 'terryma/vim-smooth-scroll'

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

" TODO
" Stop auto comment for single line comment
"  - do it for filetype, refer to comments option
"  - no suitable solution for this
