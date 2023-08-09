local parsers_dir = '~/.config/nvim/bin/parsers'

vim.opt.runtimepath:append(parsers_dir)
require('nvim-treesitter.configs').setup {
    parser_install_dir = parsers_dir,
    ensure_installed = {
        'bash',
        'c',
        'cmake',
        'comment',
        'cpp',
        'dockerfile',
        'gitignore',
        'groovy',
        'json',
        'llvm',
        'lua',
        'make',
        'markdown',
        'markdown_inline',
        'meson',
        'ninja',
        'python',
        'query',
        'regex',
        'rust',
        'toml',
        'vim',
        'vimdoc',
        'yaml',
    },
    highlight = {
        enable = true,
    },
}
