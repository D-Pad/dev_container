local jdtls = require("jdtls")

local root_markers = { "pom.xml", "build.gradle", "build.gradle.kts", "mvnw", "gradlew", ".git" }
local root_dir = require("jdtls.setup").find_root(root_markers)
if not root_dir then return end

local project_name = vim.fn.fnamemodify(root_dir, ":p:h:t")
local workspace_dir = vim.fn.stdpath("cache") .. "/jdtls/workspace/" .. project_name

local config = {
  cmd = { "jdtls", "-data", workspace_dir },  -- Mason puts jdtls on PATH
  root_dir = root_dir,
  settings = {
    java = {
      configuration = {
        runtimes = {
          -- add the JDKs that are installed
          { name = "JavaSE-26", path = "/usr/lib/jvm/default", default = true },
        },
      },
    },
  },
}

jdtls.start_or_attach(config)
