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

vim.keymap.set('v', 'J', ':move<Home>silent <End> \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':move<Home>silent <End> \'<-2<CR>gv=gv')

vim.keymap.set('v', 'p', 'p:silent let @"=@0<CR>')

vim.keymap.set('n', '<Leader>ti', function ()
    if vim.opt.shiftwidth:get() == 4 then
        vim.opt.shiftwidth = 2
    else
        vim.opt.shiftwidth = 4
    end
    print('shiftwidth set to ' .. vim.opt.shiftwidth:get() .. ' spaces')
end)

vim.keymap.set('n', '<Leader>ac', function ()
    local win = vim.api.nvim_get_current_win()
    local row, col = vim.api.nvim_win_get_cursor(win)
    local line = vim.api.nvim_buf_get_lines(0, row - 1, row, false)[1]
    local char = string.sub(line, col + 1, col + 1)

    local reg  = vim.fn.input('Enter register : ')
    local esc  = vim.api.nvim_replace_termcodes('<Esc>', true, false, true)

    vim.fn.setreg(reg, '0f' .. char .. '100i ' .. esc .. col .. '|dwj')
end)

a = 1
dskfjadksfjaksd = 2
fkjdskf = 3
fdjskfjsdkffksdajfksdjfksdajfk = 4

