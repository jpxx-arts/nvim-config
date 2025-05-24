function ColorMyPencils(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	require("tokyonight").setup({
			style = "night",    -- "night", "storm", "moon" ou "day"
			terminal_colors = true,
	})
end
