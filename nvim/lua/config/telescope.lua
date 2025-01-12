require('telescope').load_extension('fzf')

vim.g.telescope_theme = require('telescope.themes').get_ivy()
vim.g.telescope_menu = function (picker)
    return function ()
        require('telescope.builtin')[picker](vim.g.telescope_theme)
    end
end

local function set(keys, picker, desc, mode)
    mode = mode or 'n'
    vim.keymap.set(mode, keys, vim.g.telescope_menu(picker), { desc = desc })
end

set('<Leader>sh', 'help_tags', '[S]earch [Help')
set('<Leader>sk', 'keymaps', '[S]earch [K]eymaps')
set('<Leader>sf', 'find_files', '[S]earch [F]iles')
set('<Leader>ss', 'builtin', '[S]earch [S]elect Telescope')
set('<Leader>sw', 'grep_string', '[S]earch current [W]ord')
set('<Leader>sg', 'live_grep', '[S]earch by [G]rep')
set('<Leader>sd', 'diagnostics', '[S]earch [D]iagnostics')
set('<Leader>sr', 'resume', '[S]earch [R]esume')
set('<Leader>s.', 'oldfiles', '[S]earch recent files ([.] for repeat)')
set('<Leader><Leader>', 'buffers', '[ ] Find existing buffers')
