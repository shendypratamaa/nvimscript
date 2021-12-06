lua <<EOF
require('neoscroll').setup({
  pre_hook = function(info) if info == "cursorline" then vim.wo.cursorline = false end end,
  post_hook = function(info) if info == "cursorline" then vim.wo.cursorline = true end end
})
EOF

lua <<EOF
local t = {}
t['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '500', 'sine', [['cursorline']] } }
t['<C-d>'] = { 'scroll', {  'vim.wo.scroll', 'true', '500', 'sine', [['cursorline']] } }
require('neoscroll.config').set_mappings(t)
EOF
