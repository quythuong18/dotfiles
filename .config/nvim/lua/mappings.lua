-- === MAPPINGS ===

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- set the leader key
vim.g.mapleader = ' '

-- NORMAL MODE
-- Close a buffer
map('n', 'mm', ':bd<CR>')
-- Close all buffers
map('n', 'MM', '::%bd|e#|bd#|\'"<CR>')
-- Save file
map('n', '<C-s>', ':w<CR>')
-- Copy all
--map('n', '<C-A>', ':%y+<CR>')
map('v', '<C-c>', ':yank+<CR>')

-- clear search highlighting
map('n', '<leader>h', ':nohl<CR>')

-- Scroll up and down a half page and the cursor is in the middle
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

-- Scroll 5 lines
map('n', '<C-e>', '5<C-e>')
map('n', '<C-y>', '5<C-y>')

-- set CAPSLOCK to ESC
map('n', '<CAPSLOCK>', '<ESC>')

-- Internal terminal
-- map('n', '<F7>', ':FloatermNew<CR>')
-- map('i', '<F4>', '<ESC>:FloatermToggle')
-- map('n', '<F3>', ':FloatermKill<CR>')
-- map('n', '<F8>', ':FloatermNext<CR>')

-- Bufferline mappings
map('n', '<C-n>', ':bnext<CR>')
map('n', '<C-p>', ':bprev<CR>')

-- Navigating split windows
map('n', '<C-h>', '<C-w>h')
map('n', '<C-l>', '<C-w>l')

-- Mappings within plugins
-- file browser
map('n', '<leader>e', ':NvimTreeToggle<CR>')

-- Speech motions
map('n', '<leader><leader>', ':HopWord<CR>')

-- INSERT MODE
-- switch to normal mode
map('i', 'jj', '<ESC>')
-- insert mode motions
map('i', '<C-l>', '<Right>')
map('i', '<C-j>', '<Down>')
map('i', '<C-h>', '<Left>')
map('i', '<C-k>', '<Up>')

-- save file
map('i', '<C-s>', '<ESC>:w<CR>')

