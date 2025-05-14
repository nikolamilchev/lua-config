-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

local cmd = vim.cmd

-- Русский язык

cmd("set keymap=russian-jcukenwin")
cmd("set iminsert=0")
cmd("set imsearch=0")
vim.api.nvim_set_keymap('n', '<F7>', ':NvimTreeFindFile<CR>', { noremap = true, silent = true }) -- Открывает nvim-tree и фокусируется на текущем файле при нажатии F6
vim.api.nvim_set_keymap('n', '<F6>', ':NvimTreeToggle<CR>', { noremap = true, silent = true }) -- Открывает nvim-tree и фокусируется на текущем файле при нажатии F6

-- Перемещение к предыдущему буферу с помощью tab
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })
    
-- Перемещение к следующему буферу с помощью стрелки shift+tap
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<BS>', ':bd<CR>', { noremap = true, silent =true }) -- Закрывает текущий буфер при нажатии Escape

-- Пример конфига для LSP
vim.keymap.set('n', '<F12>', vim.lsp.buf.definition, { desc = 'Go to Definition' })
vim.keymap.set('n', '<S-F12>', vim.lsp.buf.references, { desc = 'Go to References' })
vim.keymap.set('n', '<C-S-F12>', vim.lsp.buf.hover, { desc = 'Show Documentation' })

-- Создать новую вкладку по Ctrl+Shift+N
vim.keymap.set("n", "<C-S-n>", ":tabnew<CR>", { 
  noremap = true,  -- Отключает рекурсивные мэппинги
  silent = true,   -- Не выводит команду в статус
  desc = "New tab" -- Описание для плагинов вроде which-key
})
