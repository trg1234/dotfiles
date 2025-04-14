-- lua/config/lazy.lua

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  -- Configure plugin specifications
  spec = {
    -- add LazyVim and import its plugins (includes nvim-cmp by default, ensure it's disabled in disabled.lua)
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },

    -- == Import the desired extras ==
    { import = "lazyvim.plugins.extras.lang.rust" }, -- For rustaceanvim and rust setup
    { import = "lazyvim.plugins.extras.coding.blink" }, -- For blink.cmp completion

    -- == Ensure other completion extras are NOT imported ==
    -- { import = "lazyvim.plugins.extras.coding.nvim-cmp" }, -- Make sure this is commented out or absent

    -- import/override with your custom plugins from lua/plugins/
    { import = "plugins" },
  },

  -- Configure lazy.nvim options
  defaults = {
    lazy = false,
    version = false, -- always use the latest git commit
  },

  install = {
    colorscheme = { "tokyonight", "habamax" },
  },

  checker = {
    enabled = true, -- check for plugin updates periodically
    notify = false, -- notify on update
  },

  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
