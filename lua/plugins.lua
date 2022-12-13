local PluginsConfig = {}

function PluginsConfig.setup() 
	local packer = require 'packer'

	local function plugins(use) 
	-- MODIFIABLE SECTION START
		use 'nvim-treesitter/nvim-treesitter'
 		use 'sheerun/vim-polyglot'

		use 'nvim-lua/telescope.nvim'
		use 'nvim-treesitter/nvim-treesitter-textobjects'
		use {
    	'numToStr/Comment.nvim',
    	config = function()
      	require('Comment').setup()
    	end
		}

		use {
  		'nvim-tree/nvim-tree.lua',
  		requires = {
    		'nvim-tree/nvim-web-devicons', -- optional, for file icons
  		},
  		tag = 'nightly', -- optional, updated every week. (see issue #1193)
			config = function() 
				require('nvim-tree').setup({
					hijack_cursor = false,
  				on_attach = function(bufnr)
    				local bufmap = function(lhs, rhs, desc)
      				vim.keymap.set('n', lhs, rhs, {buffer = bufnr, desc = desc})
    				end

    				-- See :help nvim-tree.api
    				local api = require('nvim-tree.api')
   
    				bufmap('L', api.node.open.edit, 'Expand folder or go to file')
    				bufmap('H', api.node.navigate.parent_close, 'Close parent folder')
    				bufmap('gh', api.tree.toggle_hidden_filter, 'Toggle hidden files')
  				end
        })
			end
		}

		use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
		}
	-- MODIFIABLE SECTION END
	end 

  packer.startup(plugins)
	
	require'treesitter_config'.setup()
	require'treesitter_textobjects_config'.setup()
  require'lualine_config'.setup() 
end

return PluginsConfig
