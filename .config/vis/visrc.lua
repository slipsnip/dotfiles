-- load standard vis module, providing parts of the Lua API
require('vis')
-- plugins
require('plugins/vis-filetype-settings')
plugin_vis_open = require('plugins/vis-fzf-open/fzf-open')


-- global configuration options
vis.events.subscribe(vis.events.INIT, function()
	vis:command('set theme base16-eighties')
end)

-- per window configuration options 
vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set number')
	vis:command('set cursorline on')
	vis:command('set show-newlines on')
end)

plugin_vis_open.fzf_path = "/usr/bin/fzf"

-- Filetype modelines via vis-filetype-settings plugin
settings = {
	python = {"set expandtab on", "set tabwidth 2", "set autoindent on"}
}
