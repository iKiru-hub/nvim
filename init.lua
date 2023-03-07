-- config style inspire by numToStr/dotfiles/neovim
-- and on yt by DistroTube "configuring neovim [...]"

require('plugins')
require('settings')
require('keybindings')

-- plugin configs 
require('configs.lsp')
require('configs.treesetter')
require('configs.telescope')
require('configs.coc')

-- hello 
print('Hello World')
