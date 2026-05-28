-- Tree-sitter setup for nvim-treesitter main branch (post-archive rewrite)
return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  branch = "main",
  build = ":TSUpdate",
  config = function()
    -- Minimal setup (many old options moved to Neovim core)
    require("nvim-treesitter").setup()

    -- Install your parsers (this replaces ensure_installed)
    local parsers = {
      "vue", "javascript", "java", "css", "python", "typescript", "rust",
      "bash", "c", "cpp", "xml"
    }
    require("nvim-treesitter").install(parsers)
  end,
}

--[[
return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false, 
    build = ':TSUpdate',
    branch = 'main',
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
--]]

