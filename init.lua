require('plugins')
require('colorbuddy').colorscheme('onebuddy')
require('telescope.builtin')

-- 使用系统剪切板
vim.o.clipboard = 'unnamed'
-- 显示行号
vim.o.number = true
-- 设置Leader键为空格
vim.g.mapleader = ' '

-- 按键映射
function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Ctrl-h NERDTree 
map('n', '<C-t>', ':NERDTreeToggle<CR>') 
map('n', '<Leader>wq', ':wq<CR>')
map('n', '<Leader>q', ':q<CR>')
map('n', '<F5>', ':!python %<CR>')
map('n','<C-p>',':MarkdownPreviewToggle<CR>')

map('n','<Leader>ff',':Telescope find_files<CR>')
map('n','<Leader>fg',':Telescope live_grep<CR>')
map('n','<Leader>fb',':Telescope buffers<CR>')
map('n','<Leader>fh',':Telescope help_tags<CR>')
map('n','<Leader>fo',':Telescope oldfiles<CR>')
map('n','<Leader>fs',':Telescope grep_string<CR>')

vim.cmd([[nnoremap <C-h> :NERDTreeFocus<CR>]])
vim.cmd([[inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<Tab>"]])
vim.cmd([[inoremap <silent><expr> <enter> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<Enter>"]])
