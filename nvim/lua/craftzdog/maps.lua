-- vim.g.mapleader = " "

local keymap = vim.keymap
keymap.set('i', 'jk', '<Esc>')
keymap.set('n', 'jk', '<Esc>')
keymap.set('v', 'jk', '<Esc>')
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})
keymap.set("n", "fn", ":FloatermNew<CR>")
keymap.set("i", "fn", ":FloatermNew<CR>")
-- keymap.set("i", "ft", ":FloatermToggle<CR>")
-- dap
keymap.set("n", "tb", "<Cmd>lua require('dap').toggle_breakpoint()<CR>")
keymap.set("i", "tb", "<Cmd>lua require('dap').toggle_breakpoint()<CR>")
keymap.set("n", "<F5>", "<Cmd>lua require('dap').continue()<CR>")

-- New tab
keymap.set('n', 'te', ':tabedit')
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous t

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
