local MONITORS = {
  { output = "eDP-1", mode = "1920x1080@144", position = "0x0", scale = 1 }
}

for _, m in ipairs(MONITORS) do
  hl.monitor(m)    
end
