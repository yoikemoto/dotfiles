hs.hotkey.bind({"cmd", "control"}, "/", function()
  local warp = hs.application.find('warp')
  if warp:isFrontmost() then
    warp:hide()
  else
    hs.application.launchOrFocus("/Applications/Warp.app")
  end
end)