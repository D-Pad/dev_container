return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",           -- important if you're tracking main
  build = ":TSUpdate",
  config = function()
    -- New main branch API is simpler
    require("nvim-treesitter").setup({
      -- No more "ensure_installed" in the same way — handle it separately
      highlight = { enable = true },
      indent = { enable = true },
    })

    -- Install/update parsers (do this once)
    local parsers = { 
      "vue", "typescript", "javascript", "tsx", "css", "html", "json", 
      "lua", "python", "java" 
    }
    require("nvim-treesitter").install(parsers)
  end,
}


--[[
-- Tree-sitter setup for nvim-treesitter main branch (post-archive rewrite)
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "vue", "typescript", "javascript", "tsx", "css", "html", 
        "json", "lua", "python"
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
--]]

