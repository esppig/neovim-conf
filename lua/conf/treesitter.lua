local M = {}

function M.config()

    require("nvim-treesitter.configs").setup {

        -- install language parse
        ensure_installed = {"lua", "go", "rust", "c", "python", "scheme"},

        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false
        },
    }
end


return M