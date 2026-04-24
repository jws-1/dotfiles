return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.config").setup({
            -- 'c', 'vim', 'vimdoc', and 'query' are required for Neovim's core functionality
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python" },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end
}
