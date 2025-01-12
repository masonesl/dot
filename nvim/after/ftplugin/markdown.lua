vim.opt_local.comments = 'b:*,b:- [ ],b:-,b:+,n:>'
vim.opt_local.formatoptions:append('r')

vim.opt_local.shiftwidth  = 2
vim.opt_local.softtabstop = 2

vim.keymap.set({ 'n', 'v' }, 'j', 'gj', { buffer = true })
vim.keymap.set({ 'n', 'v' }, 'k', 'gk', { buffer = true })
vim.keymap.set({ 'n', 'v' }, '^', 'g^', { buffer = true })
vim.keymap.set({ 'n', 'v' }, '$', 'g$', { buffer = true })
vim.keymap.set({ 'n', 'v' }, '0', 'g0', { buffer = true })

vim.keymap.set('i', '<Tab>',   '<Esc>maI<Tab><Esc>`a' .. vim.opt_local.softtabstop:get() .. 'la', { buffer = true })
vim.keymap.set('i', '<S-Tab>', '<Esc><<'              .. vim.opt_local.shiftwidth:get()  .. 'ha', { buffer = true })
