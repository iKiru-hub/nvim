local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'

---------------
-- DASHBOARD --
---------------
dashboard.section.header.val = {
 [[]],
 [[]],
 [[]],
 [[                               __                ]],
 [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
 [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
 [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
 [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
 [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
 [[]],
}

-------------
-- BUTTONS --
-------------
dashboard.section.buttons.val = {
 dashboard.button( "n", "  New file" , ":ene <BAR> startinsert <CR>"),
 -- dashboard.button( "c", "  Colorscheme" , ":Telescope colorscheme<CR>"),
 dashboard.button( "h", "  Find File" , ":Telescope find_files<CR>"),
 dashboard.button( "r", "  Recently Used Files" , ":Telescope oldfiles<CR>"),
 -- dashboard.button( "l", "  Load Last Session" , ":SessionLoad<CR>"),
 -- dashboard.button( "s", "  Save Session" , ":SessionSave<CR>"),
 -- dashboard.button( "b", "  Bookmarks" , ":Telescope marks<CR>"),
 dashboard.button( "q", "  Quit" , ":qa<CR>"),
}


--local handle = io.popen('fortune')
--local fortune = handle:read("*a")


--handle:close()

--dashboard.section.footer.val = fortune

-- write text in footer 
dashboard.section.footer.val = ""
dashboard.section.footer.val = ""

-- datetime footer
-- local date = os.date('*t')
local time = os.date("*t")
--print(os.date("%A, %m %B %Y | "), ("%02d:%02d:%02d"):format(time.hour, time.min, time.sec))`
current_datetime = ("~ %02d:%02d ~"):format(time.hour, time.min)

-- footer
dashboard.section.footer.val = current_datetime

dashboard.config.opts.noautocmd = true
vim.cmd[[autocmd User AlphaReady echo 'ready']]
alpha.setup(dashboard.config)

-- KEYMAPS --
vim.api.nvim_set_keymap('n', '<leader>a', ':Alpha<CR>', {noremap = true, silent = true})
