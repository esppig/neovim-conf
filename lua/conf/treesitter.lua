local M = {}

function M.config()

    require("nvim-treesitter.configs").setup {

        -- install language parse
        -- ensure_installed = {"lua", "go", "rust", "c", "python", "scheme"},

        -- 启用代码高亮
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false
        },

        -- 启用增量选择
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = '<CR>',
                node_incremental = '<CR>',
                node_decremental = '<BS>',
                scope_incremental = '<TAB>'
            }
        },

        -- 基于TreeSitter的代码格式化
        indent = {
            enable = true
        }
    }
end


return M
