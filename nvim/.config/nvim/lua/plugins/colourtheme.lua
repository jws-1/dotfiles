return {
	"shaunsingh/nord.nvim",
	lazy = false,
	--priority = 1000,
	config = function()
		-- Load the colorscheme
		require("nord").set()

		-- Toggle background transparency
		local bg_transparent = false

		local toggle_transparency = function()
			bg_transparent = not bg_transparent
			vim.g.nord_disable_background = bg_transparent
			vim.cmd([[colorscheme nord]])
		end

		vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true })
	end,
}
