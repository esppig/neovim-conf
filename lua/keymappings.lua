local utils = require('utils')

utils.map('n', '<C-l>', '<cmd>noh<CR>') -- clear highlights
utils.map('i', 'jk', '<Esc>') -- jk to escape

-- telescope
utils.map('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>')
utils.map('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>')
utils.map('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>')
utils.map('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>')

-- term
utils.map('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
utils.map('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

-- outline
utils.map('n', '<leader>lb', ':SymbolsOutline<cr>')

-- lsp
utils.map('n', '<leader>le', ':lua vim.diagnostic.open_float()<cr>')
utils.map('n', '<leader>lq', ':lua vim.diagnostic.setloclist()<cr>')
utils.map('n', '<leader>lk', ':lua vim.lsp.buf.hover()<cr>')
utils.map('n', '<leader>lr', ':lua vim.lsp.buf.rename()<cr>')
utils.map('n', '<leader>lh', ':lua vim.lsp.buf.signature_help()<cr>')
utils.map('n', '<leader>la', ':lua vim.lsp.buf.code_action()<cr>')
utils.map('n', '<leader>lf', ':lua vim.lsp.buf.formatting()<cr>')

utils.map('n', '<leader>gD', ':lua vim.lsp.buf.declaration()<cr>')
utils.map('n', '<leader>gd', ':lua vim.lsp.buf.definition()<cr>')
utils.map('n', '<leader>gt', ':lua vim.lsp.buf.type_definition()<cr>')
utils.map('n', '<leader>gi', ':lua vim.lsp.buf.implementation()<cr>')

utils.map('n', '<leader>gp', ':lua vim.diagnostic.goto_prev()<cr>')
utils.map('n', '<leader>gn', ':lua vim.diagnostic.goto_next()<cr>')
utils.map('n', '<leader>gr', ':lua vim.lsp.buf.references()<cr>')
utils.map('n', '<leader>wa', ':lua vim.lsp.buf.add_workspace_folder()<cr>')
utils.map('n', '<leader>wr', ':lua vim.lsp.buf.remove_workspace_folder()<cr>')
utils.map('n', '<leader>wl', ':lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>')

-- tabline
utils.map("n", "<leader>ta", ":$tabnew<CR>")
utils.map("n", "<leader>tc", ":tabclose<CR>")
utils.map("n", "<leader>to", ":tabonly<CR>")
utils.map("n", "<leader>tn", ":tabn<CR>")
utils.map("n", "<leader>tp", ":tabp<CR>")
-- move current tab to previous position
utils.map("n", "<leader>tmp", ":-tabmove<CR>")
-- move current tab to next position
utils.map("n", "<leader>tmn", ":+tabmove<CR>")
