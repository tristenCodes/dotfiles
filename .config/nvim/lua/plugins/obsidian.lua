return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,

  -- ❌ REMOVE THIS
  -- ft = "markdown",

  -- ✅ LOAD ONLY INSIDE YOUR VAULT
  event = {
    "BufReadPre " .. vim.fn.expand "~" .. "/Documents/repos/brain/**.md",
    "BufNewFile " .. vim.fn.expand "~" .. "/Documents/repos/brain/**.md",
  },

  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  opts = {
    workspaces = {
      {
        name = "brain",
        path = "~/Documents/repos/brain",
      },
    },
  },
}
