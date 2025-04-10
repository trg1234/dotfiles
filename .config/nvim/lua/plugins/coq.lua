return {
  {
    "ms-jpq/coq_nvim",
    branch = "coq",
    dependencies = {
      { "ms-jpq/coq.artifacts", branch = "artifacts" },
    },
    build = ":COQdeps",
    init = function()
      vim.g.coq_settings = {
        auto_start = "shut-up", -- Start automatically without prompts
      }
    end,
  },
}
