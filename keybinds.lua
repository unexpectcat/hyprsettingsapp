
local KEYBINDS = {}
--custom keybinds
KEYBINDS.keybinds = {
  {"SUPER + H", "kitty"}
}

function KEYBINDS.apply_keybinds()

  local function bind_key(key, app)
    hl.bind(key, hl.dsp.exec_cmd(app))
  end
  
  
  
  --defalt keybinds
  local apps = require(path_to_settings_app .. "apps")
  local keys = require(path_to_settings_app .. "keys")

  bind_key(keys.terminal, apps.terminal)
  bind_key(keys.browser, apps.browser)
  bind_key(keys.code_editor, apps.code_editor)
  bind_key(keys.capture_screenshot, 'sh ~/.config/hypr/scripts/capture_screenshot.sh ')




  hl.bind(keys.kill_window, hl.dsp.window.kill("active"))
  hl.bind(keys.close_window, hl.dsp.window.close("active"))
  hl.bind(keys.fullscreen, hl.dsp.window.fullscreen({action = "toggle"}))
  hl.bind(keys.false_fullscreen, hl.dsp.window.fullscreen({action = "toggle", mode = "maximized"}))


  for _, k in ipairs(KEYBINDS.keybinds) do
    bind_key(k[1], k[2])

  end
  
  return 0
end

return KEYBINDS
