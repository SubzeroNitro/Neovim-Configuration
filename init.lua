local core = require("core")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.autoread = false
vim.opt.breakindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = "menuone,preview,noselect"
vim.opt.confirm = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "line,number"
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.termguicolors = true

core.utilities.bootstrap(core.plugins)
