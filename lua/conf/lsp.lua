local M = {}

function M.config()

    local cmp = require('cmp')
    cmp.setup {
        snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
            -- luasnip
            require('luasnip').lsp_expand(args.body)
            -- vsnip
            -- vim.fn["vsnip#anonymous"](args.body)
            -- snippy
            -- require('snippy').expand_snippet(args.body)
            -- ultisnip
            -- vim.fn["UltiSnips#Anon"](args.body)
            end,
        },
        mapping = {
            ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
            ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
            ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
            ['<C-y>'] = cmp.config.disable,
            ['<C-e>'] = cmp.mapping({
                i = cmp.mapping.abort(),
                c = cmp.mapping.close(),
            }),
            -- Accept currently selected item...
            -- Set `select` to `false` to only confirm explicitly selected items:
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
        },
        sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            -- { name = 'luasnip' }, -- For luasnip users.
            -- { name = 'ultisnips' }, -- For ultisnips users.
            -- { name = 'snippy' }, -- For snippy users.
        }, {{ name = 'buffer' }})
    }

    -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline('/', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
        { name = 'buffer' }
        }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
        { name = 'path' }
        }, {
        { name = 'cmdline' }
        })
    })

    require('lspconfig').pyright.setup {}
    require('lspconfig').gopls.setup {}
    require('lspconfig').sumneko_lua.setup {}
    require('lspconfig').clangd.setup {}
    require('lspconfig').rust_analyzer.setup {}

end

return M
