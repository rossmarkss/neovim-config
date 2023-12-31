local g = vim.g
local o = vim.o

--- Theme

vim.cmd([[set termguicolors]])

-- Gruvbox
g.gruvbox_contrast_dark = 'hard'
g.gruvbox_contrast_light = 'hard'
vim.cmd([[colorscheme gruvbox]])

-- Peaksea
-- vim.cmd([[colorscheme peaksea]])

-- Molokai
-- vim.cmd([[colorscheme molokai]])

-- Solarized
-- o.background = 'dark'
-- vim.cmd([[colorscheme solarized]])

--- Help functions

function set_tab(n)
    o.tabstop = n
    o.shiftwidth = n
    o.softtabstop = n
    o.expandtab = true
    o.autoindent = true
    o.smartindent = true
end

function trim()
    local save = vim.fn.winsaveview()
    vim.cmd([[keeppatterns %s/\s\+$//e]])
    vim.fn.winrestview(save)
end

vim.api.nvim_create_user_command('SetTab', function(opts) set_tab(tonumber(opts.args)) end, { nargs=1 })
vim.api.nvim_create_user_command('Trim', trim, { nargs=0 })

-- Map <leader>

g.mapleader = ';'
g.maplocalleader = ';'

-- Editor options

o.mouse = 'a' -- Enable mouse support
o.clipboard = 'unnamedplus' -- Use system clipboard
o.encoding = "utf-8" -- Set file encoding as utf-8

o.syntax = 'on' -- Enable syntax highlighting
o.number = true -- Enable line numbers
o.ruler = true -- Enable ruler
o.title = true -- Set correct title
o.laststatus = 2 -- Always show status line

set_tab(2) -- Default tab value is 2

o.autoread = true -- Enable auto read of the file change

-- Undo extensions
o.undodir = vim.fn.expand('~/.cache/nvim/undodir')
o.undofile = true

-- Highlight search results
o.hlsearch = true
o.incsearch = true

-- Smart case search
o.ignorecase = true
o.smartcase = true

o.grepprg = [[rg --vimgrep --smart-case -follow]] -- Use ripgrep as grep

-- UltiSnips
g.UltiSnipsExpandTrigger = '<f5>'

-- Open file on the same line it was closed
vim.api.nvim_create_autocmd({"BufReadPost"}, {
    pattern = {"*"},
    callback = function()
        if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
            vim.api.nvim_exec("normal! g'\"",false)
        end
    end
})

-- C++
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "c", "cpp", "objc" },
    callback = function()
        o.formatprg = 'clang-format'
        o.equalprg = 'clang-format'
        set_tab(4)
    end
})

-- Python
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "python" },
    callback = function()
        set_tab(4)
    end
})

-- Rust
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "rust" },
    callback = function()
        set_tab(4)
    end
})

-- Lua
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "lua" },
    callback = function()
        set_tab(4)
    end
})

-- YAML
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "yaml" },
    callback = function()
        set_tab(2)
    end
})

-- Groovy
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "groovy" },
    callback = function()
        set_tab(4)
    end
})

-- Jenkinsfile
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile"}, {
    pattern = { "Jenkinsfile" },
    callback = function()
        o.syntax = 'groovy'
        set_tab(4)
    end
})
