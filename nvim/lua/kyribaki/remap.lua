vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("v", "<leader>p", "\"_dP")

-- GoLang
vim.keymap.set("n", "<leader>ee", "iif err != nil {<CR>log.Fatal(err)<CR>}<ESC>")

-- Toggle between relative and absolute line numbers
vim.api.nvim_set_keymap('n', '<leader>lines', ':lua ToggleLineNumbers()<CR>', { noremap = true, silent = true })

function ToggleLineNumbers()
  if vim.wo.relativenumber then
    vim.wo.number = false
    vim.wo.relativenumber = false
  else
    vim.wo.relativenumber = true
    vim.wo.number = true
  end
end
