local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    -- FORMATADORES
    null_ls.builtins.formatting.prettier.with({
      filetypes = {
        "html", "css", "scss", "javascript", "javascriptreact",
        "typescript", "typescriptreact", "json", "yaml", "markdown",
      },
    }),
    null_ls.builtins.formatting.stylua, -- opcional para arquivos lua

    -- LINTERS
    null_ls.builtins.diagnostics.eslint_d,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})

return {}

