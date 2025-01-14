-- === MAPPINGS ===

-- set the leader key
vim.g.mapleader = ' '

-- NORMAL MODE
-- Close a buffer
vim.keymap.set('n', 'mm', ':bd<CR>')
-- Close all buffers
vim.keymap.set('n', 'MM', '::%bd|e#|bd#|\'"<CR>')
-- Save file
vim.keymap.set('n', '<C-s>', ':w<CR>')
-- Copy all
--map('n', '<C-A>', ':%y+<CR>')
vim.keymap.set('v', '<C-c>', ':yank+<CR>')

-- clear search highlighting
vim.keymap.set('n', '<leader>h', ':nohl<CR>')

-- Scroll up and down a half page and the cursor is in the middle
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Scroll 5 lines
vim.keymap.set('n', '<C-e>', '5<C-e>')
vim.keymap.set('n', '<C-y>', '5<C-y>')

-- show error
vim.keymap.set("n", "<leader>se", vim.diagnostic.open_float)


-- set CAPSLOCK to ESC
vim.keymap.set('n', '<CAPSLOCK>', '<ESC>')

-- Bufferline mappings
vim.keymap.set('n', '<C-n>', ':bnext<CR>')
vim.keymap.set('n', '<C-p>', ':bprev<CR>')

-- Navigating split windows
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Mappings within plugins
-- file browser
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')

-- Speech motions
vim.keymap.set('n', '<leader><leader>', ':HopWord<CR>')

-- INSERT MODE
-- switch to normal mode
vim.keymap.set('i', 'jj', '<ESC>')
-- insert mode motions
-- map('i', '<C-l>', '<Right>')
-- map('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-f>', '<Right>')
vim.keymap.set('i', '<C-b>', '<Left>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')

-- save file
vim.keymap.set('i', '<C-s>', '<ESC>:w<CR>')

-- COMMAND MODE
vim.keymap.set('c', '<C-a>', '<Home>')
vim.keymap.set('c', '<C-e>', '<End>')
