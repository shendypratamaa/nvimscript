lua <<EOF
require('neoscroll').setup({
  pre_hook = function(info) if info == "cursorline" then vim.wo.cursorline = false end end,
  post_hook = function(info) if info == "cursorline" then vim.wo.cursorline = true end end,
  hide_cursor = false,
  stop_eof = true,
  use_local_scrolloff = false,
  respect_scrolls_alone = true,
  easing_function = nil,
  pre_hook = nil,
  post_hook = nil
})
EOF

lua << EOF
local t = {}
  t['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '350', 'sine', [['cubic']] } }
  t['<C-d>'] = { 'scroll', {  'vim.wo.scroll', 'true', '350', 'sine', [['cubic']] } }
  require('neoscroll.config').set_mappings(t)
EOF
