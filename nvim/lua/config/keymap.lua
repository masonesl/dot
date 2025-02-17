vim.keymap.set('n', '<Esc>', vim.cmd.nohlsearch)

vim.keymap.set('n', '<C-h>', function () vim.cmd.wincmd('h') end)
vim.keymap.set('n', '<C-j>', function () vim.cmd.wincmd('j') end)
vim.keymap.set('n', '<C-k>', function () vim.cmd.wincmd('k') end)
vim.keymap.set('n', '<C-l>', function () vim.cmd.wincmd('l') end)

vim.keymap.set('n', '<C-Up>', function () vim.cmd.resize('+5') end)
vim.keymap.set('n', '<C-Down>', function () vim.cmd.resize('-5') end)
vim.keymap.set('n', '<C-Left>', function ()
    vim.cmd.resize({ args = { '-5' }, mods = { vertical = true } })
end)
vim.keymap.set('n', '<C-Right>', function ()
    vim.cmd.resize({ args = { '+5' }, mods = { vertical = true } })
end)

vim.keymap.set('n', '<Leader>tl', function () vim.opt.list = not vim.opt.list:get() end)

vim.keymap.set({ 'n', 'v' }, '<Leader>y', '"+y')
vim.keymap.set({ 'n', 'v' }, '<Leader>p', '"+p')
vim.keymap.set('n', '<Leader>P', '"+P')

vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

vim.keymap.set('v', 'p', 'p:let @"=@0<CR>')

vim.keymap.set('n', '<Leader>ti', function ()
    if vim.opt.shiftwidth:get() == 4 then
        vim.opt.shiftwidth = 2
    else
        vim.opt.shiftwidth = 4
    end
end)
