lua <<EOF
  require'nvim-treesitter.configs'.setup({
    ensure_installed = "maintained",
    ignore_install = { "haskel" },
    highlight = {
      enable = false,
      disable = { "c", "rust" },
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

let g:nvcode_termcolors=256

colorscheme palenight

hi Normal guibg=NONE ctermbg=NONE

if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
