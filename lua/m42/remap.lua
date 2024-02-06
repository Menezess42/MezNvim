-- Atalho para exibir os resultados da última expressão do Vim
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Exibir resultados da última expressão

-- Movimentar linhas selecionadas para baixo/acima no modo visual
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Mover linhas selecionadas para baixo
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Mover linhas selecionadas para cima

-- Unir linha abaixo na linha atual e mover o cursor para o final da linha
vim.keymap.set("n", "J", "mzJ`z") -- Unir linha abaixo e mover cursor para o final
-- Rolagem para baixo e centralização da tela (Ctrl + D / Ctrl + U)
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Rolagem para baixo e centralização da tela
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Rolagem para cima e centralização da tela
-- Movimentação de busca para a próxima/última correspondência e centralização da tela
vim.keymap.set("n", "n", "nzzzv") -- Próxima correspondência e centralização
vim.keymap.set("n", "N", "Nzzzv") -- Última correspondência e centralização


-- Deletar e colar no modo visual; preserva a seleção
vim.keymap.set("x", "<leader>p", [["_dP]]) -- Deletar e colar com preservação da seleção
-- Copiar texto selecionado para a área de transferência
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- Copiar texto selecionado
-- Copiar linha atual para a área de transferência
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- Copiar linha atual

vim.keymap.set("n", "<leader>pp", ":put +<CR>")

-- Deletar texto selecionado; mantém a seleção
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]]) -- Deletar texto selecionado

-- Atalho para copiar para o clipboard
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true, silent = true })

-- Comando para colar do clipboard
vim.api.nvim_command('command! PasteFromClipboard call system("xclip -o -selection clipboard | nvim")')


-- Mapeamento de tecla para sair do modo de inserção
vim.keymap.set("i", "<C-c>", "<Esc>") -- Sair do modo de inserção

-- Desabilitar comando "Q" para evitar acidentes
vim.keymap.set("n", "Q", "<nop>") -- Desabilitar comando "Q"

-- Executar comando tmux para abrir uma nova janela e iniciar "tmux-sessionizer"
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- Abrir tmux-sessionizer

-- Formatar o código usando o LSP (Language Server Protocol)
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- Formatar código com LSP

-- Navegação entre erros e warnings do LSP
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") -- Próximo erro/warning
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") -- Erro/warning anterior
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") -- Próxima referência
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") -- Referência anterior

-- Substituir todas as ocorrências da palavra sob o cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- Substituir todas as ocorrências
-- Adicionar permissão de execução ao arquivo atual
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) -- Adicionar permissão de execução

-- Abrir o arquivo de configuração do Packer
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>") -- Abrir arquivo de configuração do Packer
-- Executar comando para gerar chuva de caracteres no Vim
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>") -- Gerar chuva de caracteres

-- Recarregar o arquivo de configuração do Vim
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end) -- Recarregar configuração do Vim

