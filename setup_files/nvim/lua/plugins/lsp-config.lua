return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "mason-org/mason-lspconfig.nvim",   -- Updated organization
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls", "bashls", "pyright", "rust_analyzer", "ts_ls", 
          "vtsls", "vue_ls", "clangd", "cssls"
        },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local vue_plugin_path = vim.fn.stdpath("data") ..
        "/mason/packages/vue-language-server/node_modules/@vue/language-server"

      -- Apply capabilities + custom settings to each server
      local servers = { 
        "lua_ls", "bashls", "pyright", "rust_analyzer", "clangd", "cssls",
      }

      for _, server in ipairs(servers) do
        vim.lsp.config(server, { capabilities = capabilities })
      end

      -- === TypeScript + Vue integration ===
      vim.lsp.config("vtsls", {
        capabilities = capabilities,
        filetypes = { 
          "typescript", 
          "javascript", 
          "javascriptreact", 
          "typescriptreact", 
          "vue" 
        },
        settings = {
          vtsls = {
            tsserver = {
              globalPlugins = {
                {
                  name = "@vue/typescript-plugin",
                  location = vue_plugin_path,
                  languages = { "vue" },
                },
              },
            },
          },
        },
      })
        
      -- Vue LS
      vim.lsp.config("vue_ls", {
        capabilities = capabilities,
        init_options = { vue = { hybridMode = false } }, -- optional, for full features
      })

      -- Enable the servers (Neovim 0.11+ style)
      vim.lsp.enable({ "vtsls", "vue_ls" }) 

      -- Your keymaps
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
    
    end,
  },
}

--[[
return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "bashls",
                    "pyright",
                    "rust_analyzer",
                    "volar",
                    "clangd",
                    "cssls"
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.bashls.setup({
                capabilities = capabilities
            })
            lspconfig.pyright.setup({
                capabilities = capabilities
            })
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities
            })
            lspconfig.clangd.setup({
                capabilities = capabilities
            })
            lspconfig.omnisharp.setup({
                capabilities = capabilities,
                cmd = {
                    "omnisharp",
                    "--languageserver",
                    "--hostPID",
                    tostring(vim.fn.getpid())
                },
                enable_editorconfig_support = true,
                enable_ms_build_load_projects_on_demand = false,
                enable_roslyn_analyzers = true,
                organize_imports_on_format = true,
                enable_import_completion = true,
            })
            lspconfig.volar.setup({
                capabilities = capabilities,
                filetypes = {
                    'typescript', 'javascript', 'javascriptreact',
                    'typescriptreact', 'vue'
                },
                init_options = {
                    typescript = {
                        tsdk = "/root/.local/share/nvim/mason/packages/vue-language-server/node_modules/typescript/lib/"
                    }
                }
            })
            lspconfig.cssls.setup({
                capabilities = capabilities
            })
 

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

        end
    },
}
]]--

