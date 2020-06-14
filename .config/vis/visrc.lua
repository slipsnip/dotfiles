-- load standard vis module, providing parts of the Lua API
require('vis')
-- plugins
plugin_vis_open = require('plugins/vis-fzf-open/fzf-open')
require('plugins/vis-ctags/ctags')
-- global configuration options
vis.events.subscribe(vis.events.INIT, function()
	vis:command('set theme gruvbox')
end)

-- per window configuration options 
vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set number')
	vis:command('set cursorline on')
	vis:command('set show-newlines on')
	vis:command('set tabwidth 4')
	vis:command('set expandtab off')
	vis:command('set autoindent on')
end)

-- Plugin settings
plugin_vis_open.fzf_path = "/usr/bin/fzf"
