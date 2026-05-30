local core = require("core")

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.lazydev_enabled = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.autoread = false
vim.opt.breakindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = "menuone,preview,noselect"
vim.opt.confirm = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "line,number"
vim.opt.expandtab = false
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.mousemoveevent = true
vim.opt.number = true
vim.opt.scrolloff = 10
vim.opt.shiftwidth = 4
vim.opt.showmode = false
vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.softtabstop = 0
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.timeout = true
vim.opt.timeoutlen = 300
vim.opt.undofile = true

core.utilities.bootstrap(core.plugins)
core.utilities.load_key_mappings(core.mappings)
