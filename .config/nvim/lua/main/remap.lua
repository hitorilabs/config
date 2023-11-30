vim.g.mapleader = " "

-- regular mappings
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>d", vim.cmd.Ex, { desc = "Open Explorer" })
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
vim.keymap.set("n", "J", "j", { desc = "unmap bc conflict with tmux movement" })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function()
	builtin.find_files({
		previewer = true,
		layout_strategy = 'horizontal',
		layout_config = {
			horizontal = {
				mirror = false,
				preview_width = 0.7,
				width = 0.95,
				height = 0.95,
			},
		},
	})
end, {})
vim.keymap.set('n', '<leader>fh', function()
    builtin.find_files({
        find_command = {"rg", "--files", "--hidden", "--glob", "!.git/*"},
		previewer = true,
		layout_strategy = 'horizontal',
		layout_config = {
			horizontal = {
				mirror = false,
				preview_width = 0.7,
				width = 0.95,
				height = 0.95,
			},
		},
    })
end, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>hh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, {})

