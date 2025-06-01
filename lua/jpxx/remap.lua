vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", function() vim.cmd("q!") end, { noremap = true, silent = true })

-- Shortcuts
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true, desc = "Mover linha para baixo" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true, desc = "Mover linha para cima" })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set('n', "'", function()
  local mark = vim.fn.getcharstr()
  vim.cmd("normal! '" .. mark .. "zz")
end, { noremap = true, desc = "Pular para a linha da marca e centralizar" })

vim.keymap.set('n', "`", function()
  local mark = vim.fn.getcharstr()
  vim.cmd("normal! `" .. mark .. "zz")
end, { noremap = true, desc = "Pular para marca e centralizar" })

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- terminal
vim.keymap.set("n", "<leader>th", ":split | terminal<CR>", { desc = "Terminal horizontal" })
vim.keymap.set("n", "<leader>tv", ":botright vsplit | vertical resize 40 | terminal<CR>", { desc = "Terminal vertical" })
-- mover entre "janela"
vim.keymap.set({ "n", "t" }, '<C-h>', [[<C-\><C-n><C-w>h]], { noremap = true, silent = true })
vim.keymap.set({ "n", "t" }, '<C-j>', [[<C-\><C-n><C-w>j]], { noremap = true, silent = true })
vim.keymap.set({ "n", "t" }, '<C-k>', [[<C-\><C-n><C-w>k]], { noremap = true, silent = true })
vim.keymap.set({ "n", "t" }, '<C-l>', [[<C-\><C-n><C-w>l]], { noremap = true, silent = true })

vim.keymap.set("n", "<leader>er", vim.diagnostic.open_float, { desc = "Mostra erro na linha" })

-- nvim tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- Função para alternar o estado do Copilot.vim
local function toggle_copilot_plugin()
    if vim.g.copilot_enabled == nil then
        vim.g.copilot_enabled = true
    end

    if vim.g.copilot_enabled then
        vim.cmd('Copilot disable')
        print("Copilot (plugin) desativado.")
        vim.g.copilot_enabled = false
    else
        vim.cmd('Copilot enable')
        print("Copilot (plugin) ativado.")
        vim.g.copilot_enabled = true
    end
end

-- Mapear a tecla F8 (exemplo) para alternar o Copilot
vim.keymap.set('n', '<F8>', toggle_copilot_plugin, { noremap = true, silent = true, desc = "Toggle Copilot (plugin)" })

