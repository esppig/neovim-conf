local M = {}

function M.config()
    -- Lua
    require('onedark').setup  {
        -- Main options --
        style = 'warmer', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
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
            keywords = 'bold',
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


function M.config2()
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

return M
