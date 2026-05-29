defaults = require("defaults.freya")

hl.bind(defaults.mod .. " + SHIFT + C", hl.dsp.window.close())
hl.bind(defaults.mod .. " + SHIFT + E", hl.dsp.exit())

hl.bind(defaults.mod .. " + V", hl.dsp.window.float({ action = "toggle" }))

--hl.bind(defaults.mod .. " + R ", hl.dsp.exec_cmd(defaults.launcher))

if defaults.useNoctalia then
	hl.bind(defaults.mod .. " + L ", hl.dsp.exec_cmd(defaults.ipc .. "panel-toggle session"))
	hl.bind(defaults.mod .. " + SHIFT + L ", hl.dsp.exec_cmd(defaults.ipc .. "screen-lock"))
	hl.bind(defaults.mod .. " + RETURN ", hl.dsp.exec_cmd(defaults.ipc .. "panel-toggle control-center"))
	hl.bind(defaults.mod .. " + C ", hl.dsp.exec_cmd(defaults.ipc .. "panel-toggle clipboard"))
	hl.bind(defaults.mod .. " + W ", hl.dsp.exec_cmd(defaults.ipc .. "panel-toggle wallpaper"))
	hl.bind(defaults.mod .. " + S ", hl.dsp.exec_cmd(defaults.ipc .. "settings-toggle"))
end

hl.bind(defaults.mod .. " + R ", hl.dsp.exec_cmd(defaults.launcher))

-- Move focus with mainMod + arrow keys
hl.bind(defaults.mod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(defaults.mod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(defaults.mod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(defaults.mod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(defaults.mod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(defaults.mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end
