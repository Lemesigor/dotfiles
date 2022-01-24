if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'arcticicestudio/nord-vim'

" Syxtax hightlight for multiple langues
Plug 'sheerun/vim-polyglot'

" Status bar
Plug 'ryanoasis/vim-devicons'
Plug 'kristijanhusak/defx-icons'
Plug 'vim-airline/vim-airline'

" Navigation
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Telescope file finder / picker
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
" Autocomplete
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
" Add pairs
Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

Plug 'airblade/vim-gitgutter'

Plug 'honza/vim-snippets'
call plug#end()
