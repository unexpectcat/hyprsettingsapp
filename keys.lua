-- to add your own command-keybinds edit array in keybindds.lua
local KEYS = {}

KEYS.terminal         = settings.keybinds.terminal
KEYS.browser          = settings.keybinds.browser
KEYS.code_editor      = settings.keybinds.code_editor
KEYS.close_window     = settings.keybinds.close_window
KEYS.kill_window      = settings.keybinds.kill_window
KEYS.fullscreen       = settings.keybinds.fullscreen
KEYS.false_fullscreen = settings.keybinds.false_fullscreen
KEYS.capture_screenshot = "SHIFT + SUPER + S"

return KEYS