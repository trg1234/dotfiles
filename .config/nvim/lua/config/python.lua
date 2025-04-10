-- Set Python 3 provider using venv
local python_host = vim.fn.expand("~/.venvs/nvim/bin/python")
if vim.fn.filereadable(python_host) == 1 then
  vim.g.python3_host_prog = python_host
end
