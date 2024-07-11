local M = {}

M.config = {
	["n"] = {
		{ "<Esc>", "<cmd>nohlsearch<CR>" },
		{ "<leader>d", vim.diagnostic.goto_prev, { desc = "Go to previous [d]iagnostic message" } },
		{ "<leader>D", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" } },
		{ "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [e]rror messages" } },
		{ "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [q]uickfix list" } },
		{ "<C-h>", "<C-w>h", { silent = true } },
		{ "<C-j>", "<C-w>j", { silent = true } },
		{ "<C-k>", "<C-w>k", { silent = true } },
		{ "<C-l>", "<C-w>l", { silent = true } }
	},
	["t"] = {
		{ "<C-q>", "<C-\\><C-n>", { desc = "Exit terminal mode" } },
		{ "<C-h>", "<C-\\><C-n><C-w>h", { silent = true } },
		{ "<C-j>", "<C-\\><C-n><C-w>j", { silent = true } },
		{ "<C-k>", "<C-\\><C-n><C-w>k", { silent = true } },
		{ "<C-l>", "<C-\\><C-n><C-w>l", { silent = true } }
	}
}

return M
