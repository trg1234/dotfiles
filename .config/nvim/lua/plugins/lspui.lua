return {
  "jinzhongjia/LspUI.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("LspUI").setup({
      lightbulb = {
        enable = true,
        command_enable = true,
        virtual_text = true,
      },
      rename = {
        enable = true,
        mode = "popup", -- or "float"
      },
      diagnostic = {
        enable = true,
        virtual_text = true,
        virtual_lines = false,
        signs = true,
        underline = true,
        update_in_insert = false,
      },
      hover = {
        enable = true,
        keybind = "K",
        opts = {
          border = "rounded",
        },
      },
    })
  end,
}
