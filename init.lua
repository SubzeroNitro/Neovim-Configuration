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
vim.opt.expandtab = false
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
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

if vim.g.neovide then
    vim.g.neovide_refresh_rate = 144

    vim.g.neovide_cursor_animation_length = 0

    vim.g.neovide_fullscreen = true

    vim.g.neovide_padding_top = 5
    vim.g.neovide_padding_bottom = 5
    vim.g.neovide_padding_left = 5
    vim.g.neovide_padding_right = 5

    vim.g.neovide_hide_mouse_when_typing = true

    vim.o.guifont = "RobotoMono Nerd Font:h16"
    vim.o.linespacing = 0
end

core.utilities.bootstrap(core.plugins)
core.utilities.load_key_mappings(core.mappings)
