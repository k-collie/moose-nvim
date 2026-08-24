-- check the MOOSE_LSP environment variable, default to moose-opt
local bin_name = vim.env.MOOSE_LSP
if bin_name == nil then
	bin_name = 'moose-opt'
end

return {
  cmd = { bin_name, '--language-server' },
  filetypes = { 'hit' },
  root_markers = { '.git' },
}
