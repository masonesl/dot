local harpoon = require('harpoon')
harpoon:setup()

vim.keymap.set('n', '<Leader>ha', function () harpoon:list():add() end)
vim.keymap.set('n', '<Leader>hr', function () harpoon:list():remove() end)
vim.keymap.set('n', '<Leader>hc', function () harpoon:list():clear() end)

for i = 1, 5 do
    vim.keymap.set('n', '<Leader>h' .. i, function () harpoon:list():select(i) end)
end

local conf = require('telescope.config').values
local function telescope_harpoon(files)
    local files_paths = {}
    for _, item in ipairs(files.items) do
        table.insert(files_paths, item.value)
    end

    require('telescope.pickers').new(vim.g.telescope_theme, {
        prompt_title = 'Harpoon',
        finder       = require('telescope.finders').new_table({
            results = files_paths
        }),
        previewer = conf.file_previewer({}),
        sorter    = conf.generic_sorter({}),
    }):find()
end

vim.keymap.set('n', '<Leader>hm', function () telescope_harpoon(harpoon:list()) end)
