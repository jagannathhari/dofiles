

-- For My Convenience

vim.keymap.set('n', '<leader>rr', ':-r! skelten %<CR>', { noremap = true, silent = false })
vim.keymap.set('v', '<A-f>', ':\'<,\'>!clang-format -style=\"{IndentWidth: 4,TabWidth: 4,ColumnLimit: 0}\"<CR>',{ noremap = true, silent = false })
vim.keymap.set('n', '<A-f>', ':%!clang-format -style=\"{IndentWidth: 4,TabWidth: 4,ColumnLimit: 0}\"<CR>',{ noremap = true, silent = false })

vim.keymap.set('n', '<M-j>', ':bnext<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<M-k>', ':bprev<CR>', {noremap = true, silent = true})

-- vim.keymap.set('n', '<C-j>', ':bprev<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-j>', ':cnext<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-k>', ':cpre<CR>', {noremap = true, silent = true})


-- Map the function to a key combination
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

-- Keybinding for "Find References"
-- vim.api.nvim_set_keymap('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>gs', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<Leader>lh', '<cmd>lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<Tab>', '>>_', { noremap = true })
vim.api.nvim_set_keymap('n', '<S)-Tab>', '<<_', { noremap = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', '<C-D>', { noremap = true })
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true })
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<Esc><Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>cc', '<cmd>cclose<CR>')
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<CR>')
vim.keymap.set('n',"<leader>sd",vim.diagnostic.setqflist)

-- Function to run grep and open quickfix list
function GrepAndOpenQuickfix()
    local pattern = vim.fn.input('Grep pattern: ')
    if pattern ~= '' then
        vim.cmd('silent grep! ' .. pattern)
        vim.cmd('copen')
    end
end

vim.api.nvim_set_keymap('n', '<leader>ss', ':lua GrepAndOpenQuickfix()<CR>', { noremap = true, silent = true })


-- https://github.com/ThePrimeagen/init.lua/blob/249f3b14cc517202c80c6babd0f9ec548351ec71/lua/theprimeagen/remap.lua
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- kakoune like
vim.keymap.set({"n","v"}, "gi", "_")
vim.keymap.set({"n","v"}, "gl", "$")

vim.keymap.set({"n","v"}, "gj", "GG")
vim.keymap.set({"n","v"}, "gk", "gg")

