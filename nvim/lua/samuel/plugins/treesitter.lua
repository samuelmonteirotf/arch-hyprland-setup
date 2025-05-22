require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "html", "css", "javascript", "typescript", "tsx", "json", "lua",
    "vue", "elm", "bash", "markdown", "yaml"
  },
  highlight = { enable = true },
  autotag = { enable = true },
})

return {}

