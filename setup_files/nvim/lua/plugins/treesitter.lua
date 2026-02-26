-- Tree sitter setup
return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            sync_install = false,
            ensure_installed = {
                "vue", "javascript", "css", "python", "typescript", "rust",
                "bash", "c"
            },
            highlight = {
                enable = true,
                disable = { "cpp" },
                additional_vim_regex_highlighting = false
            },
            indent = {
                enable = true
            }
        })
    end
}
