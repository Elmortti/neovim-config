local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- require("telescope").setup({
-- 	extensions = {
-- 		fzf = {
-- 			fuzzy = true,
-- 			override_generic_sorter = true,
-- 			override_file_sorter = true,
-- 			case_mode = "smart_case",
-- 		}
-- 	}
-- })
-- require("telescope").load_extension("fzf")
