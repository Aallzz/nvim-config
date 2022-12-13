vim.o.number = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2 

vim.opt.showmode = false -- mode should be displayed in lualine

vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')

local key_mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(
		mode, 
		key,
		result,
		{noremap = true, silent = true}
	)
end

key_mapper('i', 'jk', '<ESC>')
key_mapper('v', 'jk', '<ESC>')


require("plugins").setup()
