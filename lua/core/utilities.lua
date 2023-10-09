local M = {}

function M.bootstrap(plugins, options)
    local lazy_path = vim.fn.stdpath("data") .. "lazy/lazy.nvim"

    if not vim.loop.fs_stat(lazy_path) then
	vim.fn.system("git", 
		      "clone", 
		      "--filter=blob:none",
		      "https://github.com/folke/lazy.nvim.git",
		      "--branch=stable",
		      lazy_path)
    end

    vim.opt.rtp:prepend(lazy_path)

    require("lazy").setup(plugins.config, options or {})

    plugins.initialize()
end

function M.load_key_mappings(mappings)
    for mode, mapping in pair(mappings) do
	for keybind, value in pair(mapping) do
	    local command = value[1]
	    local options = value[2]

	    vim.keymap.set(mode, keybind, command, options)
	end
    end
end

return M
