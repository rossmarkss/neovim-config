local map = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

local noremap = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true, noremap = true })
end

-- General
noremap('n', '<leader>w', '<CMD>update<CR>') -- Save
noremap('n', '<leader>f', 'gg=G``') -- Format
noremap('n', '<esc>', '<CMD>noh<CR>') -- Disable search highlight on <esc>
noremap('n', '<leader>t', '<CMD>Trim<CR>') -- Trim whitespaces

-- Tabs
noremap('n', '<leader>tn', '<CMD>tabnew<CR>') -- Tab new
noremap('n', '<leader>tc', '<CMD>tabclose<CR>') -- Tab close
noremap('n', '<leader>to', '<CMD>tabonly<CR>') -- Tab only
noremap('n', '<leader>tmn', '<CMD>+tabmove<CR>') -- Tab move
noremap('n', '<leader>tmp', '<CMD>-tabmove<CR>') -- Tab move

-- Buffers
noremap('n', '<leader>bw', '<CMD>bw<CR>') -- Buffer close
noremap('n', '<leader>bn', '<CMD>bn<CR>') -- Buffer forward
noremap('n', '<leader>bp', '<CMD>bp<CR>') -- Buffer backward

-- Window management
noremap('n', '<leader>vmp', '<CMD>leftabove vsplit %<CR>')
noremap('n', '<leader>xmp', '<CMD>leftabove split %<CR>')

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

-- Neotree
noremap('n', '<leader>nn', '<CMD>Neotree toggle<CR>')

-- fzf
noremap('n', '<C-p>', '<CMD>Files<CR>')
noremap('n', '<C-g>', '<CMD>Rg<CR>')
