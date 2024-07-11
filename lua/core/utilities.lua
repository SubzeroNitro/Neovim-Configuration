local M = {}

function M.bootstrap(plugins, options)
    local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

    if not (vim.uv or vim.loop).fs_stat(lazy_path) then
		vim.fn.system({"git", 
			"clone", 
			"--filter=blob:none",
			"https://github.com/folke/lazy.nvim.git",
			"--branch=stable",
			lazy_path})
    end

    vim.opt.rtp:prepend(lazy_path)

    require("lazy").setup(plugins.config, options or {})

    plugins.initialize()
end

function M.load_key_mappings(mappings)
    for mode, map in pairs(mappings.config) do
		for _, mapping in ipairs(map) do
			local keybind = mapping[1]
			local command = mapping[2]
			local options = mapping[3]

			vim.keymap.set(mode, keybind, command, options)
		end
    end
end

return M
