require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "cpp", "rust", "python", "lua", "vim", "vimdoc", "cmake", "meson", "ninja", "make", "markdown", "markdown_inline", "llvm" },
    highlight = {
        enable = true,
    },
}
