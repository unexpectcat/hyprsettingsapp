local SETTINGS = {}

path_to_settings_app = "hyprsettingsapp/"
path_to_settings_json = ".config/hypr/hyprsettingsapp/eww/settings.json"

function read_settings()
  package.path = package.path .. ";/usr/share/lua/5.5/?.lua"
  local json = require("dkjson")
  --error(io.popen("pwd"):read("*l"))

  local file = assert(io.open(path_to_settings_json, "r"))
    if not file then error ("Could not open file") end

  local settings = file:read("*a")
  file:close()
  local data = json.decode(settings)
  return data
end

function SETTINGS.apply_settings()
  settings = read_settings()
  local keybinds = require(path_to_settings_app .. "keybinds")
  local monitors = require(path_to_settings_app .. "monitors")
  local drivers = require(path_to_settings_app .. "drivers")
  local env = require(path_to_settings_app .. "env")
  local decoration = require(path_to_settings_app .. "decoration")
  keybinds.apply_keybinds()

  end

return SETTINGS