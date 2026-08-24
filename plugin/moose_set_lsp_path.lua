-- set the path to moose executable used as a language server
--
-- e.g. if I have a moose app called foo then I would set it to either foo-opt or foo-dbg
vim.api.nvim_create_user_command(
  'MooseSetLspPath',
  function(opts)
    local path = opts.args
    local cmd = {path, '--language-server'}
    local lsp_name = 'moose'

    vim.lsp.enable(lsp_name, false)
    vim.lsp.config(lsp_name, { cmd = cmd })
    vim.lsp.enable(lsp_name)
  end,
  { desc = 'Set path to moose LSP executable', nargs = 1, complete = "file" }
)
