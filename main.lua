local SETTINGS = {}
path_to_settings_app = "hyprsettingsapp/"
function SETTINGS.apply_settings()
  local keybinds = require(path_to_settings_app .. "keybinds")
  local monitors = require(path_to_settings_app .. "monitors")
  local drivers = require(path_to_settings_app .. "drivers")
  local env = require(path_to_settings_app .. "env")

  keybinds.apply_keybinds()
    
end

return SETTINGS