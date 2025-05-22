local ok, lspconfig = pcall(require, "lspconfig")
if not ok then
  vim.notify("nvim-lspconfig não carregado!", vim.log.levels.ERROR)
  return {}
end

-- TypeScript e React (JSX/TSX)
if lspconfig.ts_ls then
  lspconfig.ts_ls.setup({})
end

-- HTML / CSS / JSON
lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.jsonls.setup({})

-- Vue (Volar)
if lspconfig.volar then
  lspconfig.volar.setup({})
end

-- Elm
if lspconfig.elmls then
  lspconfig.elmls.setup({})
end

-- Angular (opcional)
if lspconfig.angularls then
  lspconfig.angularls.setup({
    on_new_config = function(new_config, _)
      new_config.cmd = { "ngserver", "--stdio", "--tsProbeLocations", "", "--ngProbeLocations", "" }
    end,
  })
end

-- Tailwind
if lspconfig.tailwindcss then
  lspconfig.tailwindcss.setup({})
end

return {}

