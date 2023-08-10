local map = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

local noremap = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true, noremap = true })
end

-- General
noremap('n', '<leader>w', '<CMD>update<CR>') -- Save
noremap('n', '<leader>q', '<CMD>quit<CR>') -- Quit
noremap('n', '<leader>f', 'gg=G``<CMD>:w<CR>') -- Format
noremap('n', '<esc>', '<CMD>noh<CR>') -- Disable search highlight on <esc>

-- Neotree
noremap('n', '<leader>nn', '<CMD>Neotree toggle<CR>')

-- fzf
noremap('n', '<C-p>', '<CMD>Files<CR>')
noremap('n', '<C-g>', '<CMD>Rg<CR>')

-- Tabs
noremap('n', '<leader>tn', '<CMD>tabnew<CR>') -- Tab new
noremap('n', '<leader>tc', '<CMD>tabclose<CR>') -- Tab close
noremap('n', '<leader>tf', '<CMD>tabnext<CR>') -- Tab forward
noremap('n', '<leader>tb', '<CMD>tabprevious<CR>') -- Tab backward
noremap('n', '<leader>to', '<CMD>tabonly<CR>') -- Tab only
noremap('n', '<leader>tm', '<CMD>tabmove') -- Tab move

-- Window management
noremap('n', '<leader>vmp', '<CMD>leftabove vsplit %<CR>')
noremap('n', '<leader>xmp', '<CMD>leftabove split%<CR>')

-- Window navigation
noremap('n', '<C-h>', '<C-w>h')
noremap('n', '<C-l>', '<C-w>l')
noremap('n', '<C-k>', '<C-w>k')
noremap('n', '<C-j>', '<C-w>j')

-- Window resize
noremap('n', '<C-Left>', '<C-w><')
noremap('n', '<C-Right>', '<C-w>>')
noremap('n', '<C-Up>', '<C-w>+')
noremap('n', '<C-Down>', '<C-w>-')

