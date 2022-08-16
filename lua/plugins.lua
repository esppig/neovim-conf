vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig'

  -- nvim-cmp
  use 'hrsh7th/nvim-cmp'
  -- cmp source
  use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
  use 'hrsh7th/cmp-path'     -- { name = 'path' }
  use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }

  -- vsnip
  --use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
  --use 'hrsh7th/vim-vsnip'
  --use 'rafamadriz/friendly-snippets'

  -- lspkind
  --use 'onsails/lspkind-nvim'


  -- fuzzy
  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- term
  use "numToStr/FTerm.nvim"

  use {'kyazdani42/nvim-web-devicons'}

  -- tabline
  use "nanozuki/tabby.nvim"

  -- statusline
  use 'feline-nvim/feline.nvim'

  -- start
  use {'goolord/alpha-nvim'}


  -- theme
  -- use {"catppuccin/nvim", as = "catppuccin"}
  -- use "Shatur/neovim-ayu"
  -- use "projekt0n/github-nvim-theme"
  -- use 'rmehri01/onenord.nvim'
  use 'navarasu/onedark.nvim'
  -- use "rebelot/kanagawa.nvim"
  use 'Mofiqul/vscode.nvim'

  use 'nvim-treesitter/nvim-treesitter'

  -- autopairs
  -- use 'echasnovski/mini.nvim'
  use { "windwp/nvim-autopairs" }


  -- comment
  use {'numToStr/Comment.nvim'}
  -- use {
  --     "folke/todo-comments.nvim",
  --     requires = "nvim-lua/plenary.nvim"
  -- }

  -- outline
  use 'simrat39/symbols-outline.nvim'

end)
