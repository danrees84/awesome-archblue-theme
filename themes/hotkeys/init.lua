---------------------------------------------------
-- Hotkeys init for awful.hotkeys_widget         --
--     by Daniel Rees https://danrees.me         --
-- Based on original included in Awesome package --
--       by Yauheni Kirylau   yawghen@gmail.com  -- 
---------------------------------------------------

local keys = {
  tags = require("hotkeys.tags"),
  vim = require("hotkeys.vim"),
  firefox = require("hotkeys.firefox"),
}
return keys

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
