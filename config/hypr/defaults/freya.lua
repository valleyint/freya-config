local defaults = {}

defaults.useNoctaliaGit = false
defaults.useNoctalia = true

defaults.terminal = "kitty"
defaults.fileManager = "nautilus"
defaults.browser = "firefox"

defaults.ipc = "noctalia msg "
defaults.shell = "noctalia"
defaults.mod = "SUPER"

defaults.launcher = "noctalia msg panel-toggle launcher"

if not defaults.useNoctalia then
	defaults.launcher = "fuzzle"
end

if defaults.useNoctaliaGit then
	defaults.shell = "/home/darshan/noctalia-v5/noctalia-shell/bin/bin/noctalia"
end

return defaults
