set termguicolors

lua <<EOF
  require'nvim-treesitter.configs'.setup({
    ensure_installed = "maintained",
    ignore_install = { "haskel" },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    autotag = {
      enable = true,
    },
    matchup = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      }
    },
    indent = {
      enable = true, 
    }
  })
EOF
