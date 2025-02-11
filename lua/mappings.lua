local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>gr', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }) -- Oil
vim.keymap.set("n", "<leader>th", ":Themery<CR>", {	desc = "Open Themery" }) -- Open Themery

-- Grapple Maps
vim.keymap.set("n", "<leader>m", require("grapple").toggle)
vim.keymap.set("n", "<leader>M", require("grapple").toggle_tags)
vim.keymap.set("n", "<leader>1", "<cmd>Grapple select index=1<cr>")
vim.keymap.set("n", "<leader>2", "<cmd>Grapple select index=2<cr>")
vim.keymap.set("n", "<leader>3", "<cmd>Grapple select index=3<cr>")
vim.keymap.set("n", "<leader>4", "<cmd>Grapple select index=4<cr>")
vim.keymap.set("n", "<leader>5", "<cmd>Grapple select index=5<cr>")
vim.keymap.set("n", "<leader>6", "<cmd>Grapple select index=6<cr>")
vim.keymap.set("n", "<leader>7", "<cmd>Grapple select index=7<cr>")

-- Closes the terminal
vim.api.nvim_set_keymap('t', '<C-x>', [[<C-\><C-n>:q!<CR>]], { noremap = true, silent = true })

-- Opens web files in safari/browser --> Not working/Fix this
vim.keymap.set("n", "<leader>x", "<leader>gx", { desc = "Open URL under cursor" })

-- Open config from anywhere
vim.keymap.set('n', '<leader>oc', function()
	require('oil').open('~/.config/nvim')
end)

