lua <<EOF
require'lualine'.get_config()
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight-vim',
    component_separators = {left = ' ', right = ' '},
    section_separators = {left = ' ', right = ' '},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {
        {'mode', fmt = function(str) return str:sub(1,1) end}},
        lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
EOF
