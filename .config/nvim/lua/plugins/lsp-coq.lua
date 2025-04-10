return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "ms-jpq/coq_nvim",
    },
    opts = {
      servers = {
        rust_analyzer = {},
        jsonls = {},
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        },
        pyright = {},
        yamlls = {},
      },
      setup = {
        -- Wrap all LSPs with coq's lsp_ensure_capabilities
        ["*"] = function(server, opts)
          local coq = require("coq")
          require("lspconfig")[server].setup(coq.lsp_ensure_capabilities(opts))
          return true -- skip default setup
        end,
      },
    },
  },
}
