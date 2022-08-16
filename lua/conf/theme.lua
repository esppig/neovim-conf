local M = {}

function M.config0()

    require('nvim-treesitter.configs').setup {
        -- A list of parser names, or "all"
        ensure_installed = { "c", "lua", "rust", "go" },

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- List of parsers to ignore installing (for "all")
        ignore_install = { "javascript" },

        highlight = {
            -- `false` will disable the whole extension
            enable = true,

            -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
            -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
            -- the name of the parser)
            -- list of language that will be disabled
            -- disable = { "c", "rust" },

            -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
            -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
            -- Using this option may slow down your editor, and you may see some duplicate highlights.
            -- Instead of true it can also be a list of languages
            additional_vim_regex_highlighting = false,
        },
    }
end

function M.config()
    -- Lua
    require('onedark').setup  {
        -- Main options --
        style = 'cool', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
        transparent = true,  -- Show/hide background
        term_colors = true, -- Change terminal color as per the selected theme style
        ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
        cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
        -- toggle theme style ---
        toggle_style_key = '<leader>ts', -- Default keybinding to toggle
        toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between
        -- Change code style ---
        -- Options are italic, bold, underline, none
        -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
        code_style = {
            comments = 'italic',
            keywords = 'none',
            functions = 'none',
            strings = 'none',
            variables = 'none'
        },

        -- Custom Highlights --
        colors = {}, -- Override default colors
        highlights = {}, -- Override highlight groups

        -- Plugins Config --
        diagnostics = {
            darker = true, -- darker colors for diagnostic
            undercurl = true,   -- use undercurl instead of underline for diagnostics
            background = true,    -- use background color for virtual text
        },
    }

    require('onedark').load()
end

-- vscode theme
function M.config1()
    -- For dark theme (neovim's default)
    vim.o.background = "dark"
    -- For light theme
    -- vim.o.background = "light"
    -- Enable transparent background
    vim.g.vscode_transparent = 1
    -- Enable italic comment
    vim.g.vscode_italic_comment = 1
    -- Disable nvim-tree background color
    vim.g.vscode_disable_nvimtree_bg = true
    vim.cmd([[colorscheme vscode]])
end


function M.config3()
    vim.opt.laststatus = 3
    vim.opt.fillchars:append({
        horiz = '━',
        horizup = '┻',
        horizdown = '┳',
        vert = '┃',
        vertleft = '┨',
        vertright = '┣',
        verthoriz = '╋',
    })

    -- Default options:
    require('kanagawa').setup({
        undercurl = true,           -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true},
        statementStyle = { bold = true },
        typeStyle = {},
        variablebuiltinStyle = { italic = true},
        specialReturn = true,       -- special highlight for the return keyword
        specialException = true,    -- special highlight for exception handling keywords
        transparent = true,        -- do not set background color
        dimInactive = true,        -- dim inactive window `:h hl-NormalNC`
        globalStatus = true,       -- adjust window separators highlight for laststatus=3
        colors = {},
        overrides = {},
    })

    -- setup must be called before loading
    vim.cmd("colorscheme kanagawa")
end

function M.config4()

    require('onenord').setup({
        theme = "dark", -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
        borders = true, -- Split window borders
        fade_nc = false, -- Fade non-current windows, making them more distinguishable
        -- Style that is applied to various groups: see `highlight-args` for options
        styles = {
            comments = "NONE",
            strings = "NONE",
            keywords = "NONE",
            functions = "NONE",
            variables = "NONE",
            diagnostics = "underline",
        },
        disable = {
            background = true, -- Disable setting the background color
            cursorline = false, -- Disable the cursorline
            eob_lines = true, -- Hide the end-of-buffer lines
        },
        -- Inverse highlight for different groups
        inverse = {
            match_paren = false,
        },
        custom_highlights = {}, -- Overwrite default highlight groups
        custom_colors = {}, -- Overwrite default colors
    })

end

return M
