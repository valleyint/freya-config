--  import defaults  --
local defaults = require("defaults.freya")

-- AUTOSTART --
hl.on("hyprland.start", function()
	hl.exec_cmd(defaults.shell)
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)

-- CURSOR --
-- TODO--
require("cursor.default")

-- GTK THEME --
-- TODO --

-- GAPS BORDER SHADOW --
require("look.window.me")
--require("look.window.noctalia")

-- BLUR --
require("look.blur.me")
--require("look.blur.noctalia")

-- TRANSPARENCY --
require("look.transparency.default")

-- ANIMATIONS --
-- TODO --
require("look.animations.default")

-- LAYOUT --
-- TODO --
hl.config({
	general = {
		layout = "dwindle",
	},
})

-- KEYMAPS --
require("keymaps.me")

-- MONITOR --
require("monitors.HDMI4K60")

-- APP SPECIFIC SETTINGS --
require("look.apps.noctalia")
