-- map leader to space
vim.g.mapleader = ' '

local fn = vim.fn
local execute = vim.api.nvim_command

-- Sensiable defaults
require('settings')

-- keymapping
require('keymappings')

-- plugin
require('plugins')

-- plugin_conf
require('conf.statusline').config()
require('conf.term').config()
-- require('conf.alpha').config()
require('conf.comment').config()
-- require('conf.todo-comment').config()
require('conf.outline').config()
require('conf.tabline').config()
require('conf.lsp').config()
require('conf.theme').config()
require('conf.treesitter').config()
require('conf.autopairs').config()
