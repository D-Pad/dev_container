return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night", -- Options: "night", "storm", "day", "moon"
        transparent = false
      })
      vim.cmd("colorscheme tokyonight")
    end,
    opts = {},
}

