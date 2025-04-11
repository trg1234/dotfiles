-- lua/plugins/mason.lua (Corrected LSP names)
return {
  "williamboman/mason.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    ensure_installed = {
      -- == LSPs ==
      "rust-analyzer",
      "typescript-language-server",
      "eslint-lsp",
      "pyright",
      "lua-language-server",
      "html-lsp", -- <<< CORRECTED NAME
      "css-lsp", -- <<< CORRECTED NAME
      "tailwindcss-language-server", -- Check this one too via :Mason search if needed
      "json-lsp", -- Check this one too (likely correct)
      "yaml-language-server",
      "taplo",
      "marksman",
      "bash-language-server",
      "dockerfile-language-server",
      "clangd",

      -- == Formatters ==
      "prettierd",
      "black",
      "ruff",
      "stylua",
      "shfmt",
      "clang-format",

      -- == Linters ==
      "eslint_d",
      "stylelint", -- Check this one too
      "shellcheck",
      "hadolint",
      "markdownlint",

      -- == DAPs ==
      -- "debugpy",
      -- "codelldb",
    },
    -- ui = { border = "rounded" }
  },
}
