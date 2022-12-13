local TreesitterConfig = {}

function TreesitterConfig.setup() 
	require'nvim-treesitter.configs'.setup {
		ensure_installed = { 'c', 'lua', 'rust', 'cmake', 'cpp' }, 
		hightlight = {
			enable = true,
		}
	}
end

return TreesitterConfig
