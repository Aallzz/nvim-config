local TreesitterTextObjectsConfig = {}

function TreesitterTextObjectsConfig.setup() 
	require('nvim-treesitter.configs').setup({
 		highlight = {
    	enable = true,
  	},
  	textobjects = {
    	select = {
      	enable = true,
      	lookahead = true,
      	keymaps = {
        	['af'] = '@function.outer',
        	['if'] = '@function.inner',
        	['ac'] = '@class.outer',
        	['ic'] = '@class.inner',
      	}
    	},
  	},
  	ensure_installed = { 'c', 'lua', 'rust', 'cmake', 'cpp' },	
	})
end

return TreesitterTextObjectsConfig
