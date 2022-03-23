local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "buzy.lsp.lsp-installer"
require("buzy.lsp.handlers").setup()
require "buzy.lsp.null-ls"
