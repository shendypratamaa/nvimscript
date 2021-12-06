lua <<EOF
  require("nvim-treesitter.install").prefer_git = true
  require 'nvim-treesitter.install'.compilers = { "gcc" }
  local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
  parser_config.typescript.used_by = "javascriptflow"
  require('nvim-treesitter.configs').setup({
      ensure_installed = "all",
      ignore_install = {"haskell"},

      highlight = {
      enable = true,
      disable = { "c", "rust" },
      custom_captures = {
        ["keyword"] = "TSString",
        ["foo.bar"] = "identifier", 
        },
      additional_vim_regex_highlighting = true,
      },
      incremental_selection = { 
      enable = true,
      keymaps = { 
        init_semection = "gnn",
        },
      }, 
      indent = {
      enable = true, 
      },
      textobjects = {
      enable = true,
    },
  })
EOF
