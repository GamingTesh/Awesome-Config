-- REQUIRED LIBRARIES
local filesystem = require('gears.filesystem')
local with_dpi = require('beautiful').xresources.apply_dpi
local get_dpi = require('beautiful').xresources.get_dpi

-- BASE APPS
return {
	default = {
		terminal     = "alacritty",
		vi_focus     = false,
		cycle_prev   = true,
		editor       = os.getenv("EDITOR") or "vim",
		gui_editor   = os.getenv("GUI_EDITOR") or "geany",
		browser      = os.getenv("BROWSER") or "chromium",
		file		 = os.getenv("FILE") or "spacefm",
		scrlocker    = "slock"
	},
	-- List of apps to start once on start-up
	run_on_start_up = {
		'compton',
		'unclutter --root',
		'blueman-applet'
  }
}
