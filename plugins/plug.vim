if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'jiangmiao/auto-pairs'
  Plug 'simeji/winresizer'
  Plug 'christianchiarulli/nvcode-color-schemes.vim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'p00f/nvim-ts-rainbow'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'tpope/vim-fugitive'
  Plug 'justinmk/vim-sneak'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'windwp/nvim-ts-autotag'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'karb94/neoscroll.nvim'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  Plug 'glepnir/dashboard-nvim'
  Plug 'mhinz/vim-signify'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-commentary'
  Plug 'junegunn/gv.vim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'liuchengxu/vim-which-key'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'akinsho/bufferline.nvim'
  Plug 'mattn/emmet-vim'
  Plug 'kdheepak/lazygit.nvim'
  Plug 'Honza/vim-snippets'
call plug#end()
