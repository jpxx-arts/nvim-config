function ColorMyPencils(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	-- Configurações opcionais (escolha uma variante):
	require("tokyonight").setup({
		style = "night",    -- "night", "storm", "moon" ou "day"
	})
end

ColorMyPencils()

