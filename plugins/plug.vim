" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'jiangmiao/auto-pairs'
    Plug 'simeji/winresizer'
    Plug 'joshdick/onedark.vim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tpope/vim-fugitive'
    Plug 'justinmk/vim-sneak'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ap/vim-css-color'
    Plug 'karb94/neoscroll.nvim'
    Plug 'Yggdroot/indentLine'
call plug#end()
