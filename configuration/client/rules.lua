-- REQUIRED LIBRARIES
local awful = require("awful")

local gears = require('gears')
local beautiful = require("beautiful")

local clientkeys = require('configuration.client.keys')
local clientbuttons = require('configuration.client.buttons')

-- RULES
awful.rules.rules = {
  -- All clients will match this rule.
  {
    rule = {},
    properties = {
		border_width = beautiful.border_width,
		border_color = beautiful.border_normal,
		focus = awful.client.focus.filter,
		raise = true,
		keys = clientkeys,
		buttons = clientbuttons,
		screen = awful.screen.preferred,
		placement = awful.placement.no_overlap+awful.placement.no_offscreen,
		size_hints_honor = false
    }
  },
  -- FLOATING WINDOW RULES
  {
    rule_any = {type = { 'dialog' }, instance = {'pavucontrol', 'nvidia-settings', 'st', 'blueman-manager'}, role = {'AlarmWindow', 'ConfigManager', 'pop-up'}},
	properties = {
		placement = awful.placement.centered,
		floating = true,
		ontop = true,
		titlebars_enabled = true
	}
  }
}
