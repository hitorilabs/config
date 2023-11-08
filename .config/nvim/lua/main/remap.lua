vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>E", vim.cmd.Ex, { desc = "Open Explorer" })
vim.keymap.set("n", "<leader>w", vim.cmd.w)
