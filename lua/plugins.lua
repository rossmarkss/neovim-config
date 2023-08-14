return require('packer').startup(function()
    -- Packer itself
    use '~/.config/nvim/third-party/packer.nvim'

    -- Theme
    use '~/.config/nvim/third-party/gruvbox'
    use '~/.config/nvim/third-party/peaksea.vim'
    use '~/.config/nvim/third-party/molokai'
    use '~/.config/nvim/third-party/solarized.nvim'

    -- General
    use '~/.config/nvim/third-party/plenary.nvim'
    use '~/.config/nvim/third-party/nvim-web-devicons'
    use '~/.config/nvim/third-party/nui.nvim'
    use '~/.config/nvim/third-party/neo-tree.nvim'
    use '~/.config/nvim/third-party/vim-surround'
    use '~/.config/nvim/third-party/vim-commentary'
    use '~/.config/nvim/third-party/vim-dispatch'
    use '~/.config/nvim/third-party/vim-fugitive'
    use '~/.config/nvim/third-party/vim-abolish'
    use '~/.config/nvim/third-party/vim-gas'
    use '~/.config/nvim/third-party/vim-illuminate'
    use '~/.config/nvim/third-party/vim-better-whitespace'
    use '~/.config/nvim/third-party/diffview.nvim'
    use '~/.config/nvim/third-party/symbols-outline.nvim'
    use {
        '~/.config/nvim/third-party/vim-lion',
        config = function()
            require('configs.vim-lion')
        end,
    }
    use {
        '~/.config/nvim/third-party/rainbow',
        config = function()
            require('configs.rainbow')
        end,
    }
    use {
        '~/.config/nvim/third-party/nvim-autopairs',
        config = function()
            require('configs.autopairs')
        end,
    }
    use {
        '~/.config/nvim/third-party/nvim-treesitter',
        config = function()
            require('configs.treesitter')
        end,
    }
    use {
        '~/.config/nvim/third-party/lualine.nvim',
        config = function()
            require('configs.lualine')
        end,
    }
    use {
        '~/.config/nvim/third-party/scope.nvim',
        config = function()
            require('configs.scope')
        end,
    }
    use {
        '~/.config/nvim/third-party/indent-blankline.nvim',
        config = function()
            require('configs.indent-blankline')
        end,
    }

    -- fzf
    use '~/.config/nvim/third-party/fzf'
    use '~/.config/nvim/third-party/fzf.vim'

    -- vimux
    use '~/.config/nvim/third-party/vimux'

    -- Programming languages related
    use '~/.config/nvim/third-party/cmp-nvim-lsp'
    use '~/.config/nvim/third-party/cmp-buffer'
    use '~/.config/nvim/third-party/cmp-path'
    use '~/.config/nvim/third-party/cmp-cmdline'
    use '~/.config/nvim/third-party/cmp-git'
    -- use '~/.config/nvim/third-party/vim-vsnip'
    -- use '~/.config/nvim/third-party/cmp-vsnip'
    use '~/.config/nvim/third-party/ultisnips'
    use '~/.config/nvim/third-party/cmp-nvim-ultisnips'
    use {
        '~/.config/nvim/third-party/nvim-cmp',
        config = function()
            require('configs.cmp')
        end,
    }
    use {
        '~/.config/nvim/third-party/rust.vim',
        config = function()
            require('configs.rust')
        end,
    }
    use {
        '~/.config/nvim/third-party/nvim-lspconfig',
        config = function()
            require('configs.lspconfig')
        end,
    }
    use {
        '~/.config/nvim/third-party/lsp_signature.nvim',
        config = function()
            require('configs.lsp_signature')
        end,
    }
end)
