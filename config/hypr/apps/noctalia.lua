defaults = require("defaults.freya")

if defaults.useNoctalia then
	hl.workspace_rule({ workspace = "1", monitor = "DP-1", persistent = true })
	hl.workspace_rule({ workspace = "2", monitor = "DP-1", persistent = true })
	hl.workspace_rule({ workspace = "3", monitor = "DP-1", persistent = true })
	hl.workspace_rule({ workspace = "4", monitor = "DP-1", persistent = true })
	hl.workspace_rule({ workspace = "5", monitor = "DP-1", persistent = true })

	hl.layer_rule({
		name = "noctalia",
		match = {
			namespace = "^noctalia-(bar-.+|notification|dock|panel)$",
		},
		ignore_alpha = 0.5,
		blur = true,
		blur_popups = true,
	})
end
