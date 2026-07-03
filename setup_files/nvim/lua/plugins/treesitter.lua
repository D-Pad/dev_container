-- Tree-sitter setup for nvim-treesitter main branch (post-archive rewrite)
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "vue", "typescript", "javascript", "tsx", "css", "html", 
        "json", "lua"
      },
      highlight = {
        enable = true,
        -- Optional: disable for languages that cause issues
        -- disable = { "vue" }, -- try this temporarily if broken
      },
      indent = { enable = true },
    })
  end,
}

