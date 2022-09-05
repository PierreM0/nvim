-- C-s to save and C-r to reload config
local keymap  = vim.api.nvim_set_keymap
keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<ESC>:w<CR>', {})
keymap('n', '<c-r>', ':so ~/.config/nvim/init.lua<CR>', {})
keymap('i', '<c-r>', '<ESC>:so ~/.config/nvim/init.lua<CR>', {})
-- No more w to switch buffer

local opt = {noremap = true}
keymap('n', '<c-h>', '<c-w>h', opt)
keymap('n', '<c-j>', '<c-w>j', opt)
keymap('n', '<c-k>', '<c-w>k', opt)
keymap('n', '<c-l>', '<c-w>l', opt)

local function nkeymap(key, map)
  keymap('n', key, map, opt)
end

nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
nkeymap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')

print "keybinds ... done"
