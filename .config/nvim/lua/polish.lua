-- ~/.config/nvim/lua/user/polish.lua
-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

-- Autocmd group to lazy-load obsidian.lua on Markdown files
local obsidian_grp = vim.api.nvim_create_augroup("LoadObsidian", { clear = true })
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  group = obsidian_grp,
  pattern = { "*.md" },
  callback = function() require("obsidian").setup {} end,
})
