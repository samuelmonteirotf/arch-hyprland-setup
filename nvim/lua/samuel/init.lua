local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	error("lazy.nvim não encontrado: " .. lazypath)
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("samuel.plugins")

-- Configuração básica
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true

-- Atalhos
require("samuel.plugins.keymaps")
